# Materialising Paws services

How a `Paws::<Service>` class comes into existence — and the levers
contributors and downstream apps have to choose between
**ahead-of-time on disk** (AOT) and **runtime in-memory** materialisation.

This doc is navigation. Implementation details live in
`docs/architecture.md`, `docs/loaders.md`, `docs/oo-backends.md`,
`docs/serdes.md`, `docs/sources.md`, and `docs/ci.md`.

## The two paths in 30 seconds

`Paws->load_class('Paws::EC2')` (`auto-lib/Paws.pm:91-114`, currently
generated then hand-patched in stack18 — see
[Where the load_class code lives](#where-the-load_class-code-lives))
does:

1. **AOT path** — if the on-disk file is reachable via `@INC`
   (`_class_on_disk` at `auto-lib/Paws.pm:116-125`),
   `Module::Runtime::require_module` loads it. Today's `auto-lib/Paws/`
   ships all 401 services so this is the default branch on master.
2. **Materialiser fall-through** — otherwise `_materialise_class`
   (`auto-lib/Paws.pm:127-178`) resolves the IR via
   `Paws::Model::Loader::Resolver` (Smithy first, botocore fallback)
   and asks `Paws::Model::Materializer::Moo` (or `Paws::Model::Materializer` when
   `PAWS_OO_BACKEND=Moose`) to construct the service class plus
   every operation and shape class in memory.

`Paws::Model::Materializer::Auto` (`lib/Paws/Model/Materializer/Auto.pm`) is an
opt-in hook that monkey-patches `Paws->load_class` to pick the
materialiser even when an on-disk file exists, gated by
`PAWS_LAZY_FORCE=1`.

### Where the load_class code lives

On master `Paws.pm` is a generated file at `auto-lib/Paws.pm` from
`templates/default/paws_pm.tt` (rendered by
`Paws::API::Builder::Paws->process` at
`builder-lib/Paws/API/Builder/Paws.pm:144-151`). The `_class_on_disk`
+ `_materialise_class` fall-through is a stack18 patch that lives in
the committed `auto-lib/Paws.pm` but is **not** in the template — so
running `make gen-classes` (or `make gen-paws`) regenerates `Paws.pm`
without the fall-through and effectively reverts the patch. The
template change is part of stack19's scope; until then, treat
`auto-lib/Paws.pm` as semi-handwritten.

## When to re-materialise a single service AOT

Use `script/gen-service`. It is a thin wrapper over
`builder-bin/gen_classes.pl --classes <files>` that accepts:

- a botocore directory name (`sqs`, `acm-pca`, `cognito-idp`),
- a Paws class name (`SQS`, `ACMPCA`, `CognitoIdp`) — resolved via
  `Paws::API::Builder::Paws->servicefile_to_class_overrides`,
- an explicit `service-2.json` path.

Common reasons:

- **Iterating on a generator change.** Verify the output for one
  service before kicking off `make gen-classes` over all 401. Pair
  with `script/test-one` for a single test file.
- **Reading the generated code to debug a runtime issue.** Open
  `auto-lib/Paws/<Service>/<Op>.pm` after a regen to inspect what
  the materialiser would emit, with attribute traits, `_api_call`,
  `_returns`, etc. all rendered as plain Moose declarations.
- **Comparing generator output between two branches.** Regen one
  service on each branch, `git diff auto-lib/Paws/<Service>/`. The
  `regen-byte-identical` workflow
  (`.github/workflows/regen-byte-identical.yml`) does this for
  Account / STS / Health / BackupSearch on every PR that touches the
  generator; locally you can do it for any service.
- **Bundling a small subset for a downstream app.** Gen the services
  you ship, commit the resulting `auto-lib/Paws/<Service>/` slice
  alongside your application, and point Paws at it. See
  [Bundle vs. lazy materialise](#bundle-vs-lazy-materialise) below.

`script/gen-service --list <SERVICE>` resolves the argument without
running the generator. `script/gen-service --docu` re-fetches AWS
documentation links over HTTP (off by default to keep the script
fast and offline-friendly).

`script/gen-service` deliberately does **not** rebuild
`auto-lib/Paws.pm` (the master service index) — that requires the
full botocore set on disk. If you need a fresh `Paws.pm`, run
`make gen-classes` or `make gen-classes-no-doc-fetch`.

## When to use the full regen

`make gen-classes` (`Makefile:69-73`) regenerates every service plus
the master `Paws.pm` and `Paws/API/Retry.pm` indexes. Use it when:

- pulling a fresh botocore / Smithy snapshot (the master index has
  to know about new services),
- rebuilding the dist tarball before release,
- exercising the full generator pipeline before merging a generator
  change.

`make gen-classes-no-doc-fetch` is the same minus the per-operation
HTTP HEADs against `docs.aws.amazon.com`. CI uses this variant; see
`docs/ci.md` "Service generation tolerances" for what degrades.

## When to use the runtime materialiser

The materialiser fall-through (`auto-lib/Paws.pm:127-178`) is
currently a no-op on master because `auto-lib/` is fully populated.
It becomes the default the moment a class is missing on disk — which
is the state stack19 (drop `auto-lib/` from the dist) targets. You
can exercise it today by:

- removing the relevant `auto-lib/Paws/<Service>/` directory and the
  top-level `auto-lib/Paws/<Service>.pm`,
- or setting `PAWS_LAZY_FORCE=1` after loading
  `Paws::Model::Materializer::Auto` (env vars documented at
  `lib/Paws/Model/Materializer/Auto.pm:18-37`), which forces
  materialisation even when the on-disk file exists.

Set `PAWS_OO_BACKEND=Moose` to switch the materialiser to the Moose
backend (`lib/Paws/Model/Materializer.pm`) instead of the default Moo +
Type::Tiny backend (`lib/Paws/Model/Materializer/Moo.pm`). Both
`auto-lib/Paws.pm:172` and `lib/Paws/Model/Materializer/Auto.pm:134`
default to `Moo`. The Moose backend matches the AOT generator's
output more closely; it's the right knob when isolating a
Moo-specific bug. See `docs/oo-backends.md` for the type-mapping
table and the "`->meta` works on Moose, inflates on Moo" caveat.

## Bundle vs. lazy materialise

For a downstream app, the choice is:

| | Bundle (ship `auto-lib/`) | Lazy materialise (default after stack19) | Hybrid |
|---|---|---|---|
| Disk + memory | Up to ~250 MB tree, ~52k `.pm` files for the full set | Zero on-disk service `.pm` files | Subset on disk, rest from JSON |
| Install time | All `.pm` install via `cpanm` | Just the materialiser + JSON | In between |
| First `Paws->service('X')` | One `require` per inner class (load order via `Module::Runtime`) | IR parse + class construction | Bundled = `require`; not bundled = materialise |
| Predictability | Frozen output; inspectable on disk | Built fresh from IR + materialiser code at runtime | Mixed |
| When to choose | Need a frozen, inspectable subset; tight startup-latency budget per service | Don't want to ship `.pm` for hundreds of services you never call; OK paying first-call latency | Heavy use of a few services; everything else lazy |

Today's master is effectively the **bundle** state for everyone —
all 401 services on disk, the materialiser is a fall-through that
only fires for services missing from `auto-lib/`. After stack19, the
default flips: zero `.pm` files, materialiser handles everything,
contributors who want bundling generate locally and commit / vendor
the resulting `auto-lib/<Service>/`.

The hybrid pattern is what a downstream app most often wants:
`script/gen-service S3 EC2 DynamoDB`, commit the resulting tree,
let everything else fall through.

## Debugging workflow

When a user reports `Paws::EC2::DescribeInstances does not behave as
I expect`:

1. **Check the on-disk file.** `auto-lib/Paws/EC2/DescribeInstances.pm`
   is what `Module::Runtime` loads today. If the service hasn't been
   regenerated since the last botocore / Smithy bump, regenerate via
   `script/gen-service EC2`.
2. **For the materialiser path** (no on-disk file, or
   `PAWS_LAZY_FORCE=1`), construct the service in a one-off script:

   ```perl
   use Paws::Model::Loader::Resolver;
   use Paws::Model::Materializer::Moo;

   my ($ir, $loader) = Paws::Model::Loader::Resolver->new->load_service('EC2');
   my $mat = Paws::Model::Materializer::Moo->new(loader => undef);
   $mat->materialize_service($ir);

   # Inspect the materialised class:
   say Paws::SerDes->for('Paws::EC2::DescribeInstances')->serializable_attributes;
   ```

3. **Cross-reference AOT vs materialised output.** Differences here
   surface real bugs — the Type::Tiny `does` mismatch identified for
   stack19 was exactly this kind of divergence. The
   `regen-byte-identical` workflow
   (`.github/workflows/regen-byte-identical.yml`) asserts the AOT
   half for {Account, STS, Health, BackupSearch}; for one-off
   comparisons locally, regen the service and `git diff` against
   committed `auto-lib/`.
4. **Force the materialiser path under tests.**
   `PAWS_LAZY_FORCE=1` (env var listed at
   `lib/Paws/Model/Materializer/Auto.pm:18-37`) bypasses the on-disk check
   so tests exercise the in-memory build.
5. **Switch OO backend.** `PAWS_OO_BACKEND=Moose` falls back to the
   Moose materialiser, which is closer to the AOT generator's output
   and useful for narrowing whether a bug is Moo-specific.

## Performance numbers

All wall-clock numbers are from CI runs on `ubuntu-latest` (4-core
runner, perl 5.36) unless noted. CI is the only environment where
they're reliably measurable today; local M1 numbers depend on a
working `carton install` tree which is per-developer.

- **Full `make gen-classes-no-doc-fetch`, single job (pre-PR #70)**:
  ~30 min. Measured at GH Actions run
  [25600036882](https://github.com/Peatix/aws-sdk-perl/actions/runs/25600036882),
  `build-autolib` job 11:29:45 → 12:00:09 UTC 2026-05-09 = 30m24s.
  Bound by `Parallel::ForkManager` worker count (16 configured,
  4 effective on a 4-core runner; `builder-bin/gen_classes.pl:35`).
- **Full `make gen-classes-no-doc-fetch`, matrix-shard (PR #70)**:
  ~8 min. From PR #70's description: plan 0:21 + max(shard) 7:07
  (cell `e`) + merge 0:36. Six shards × 4 cores = 24 effective gen
  workers. Partitioning is largest-first greedy bin-packing on
  `service-2.json` byte size (`script/gen-shard:26-48`).
- **Single-service `script/gen-service` for small services**:
  ~1 second per service on `ubuntu-latest`. GH Actions run
  [25594694233](https://github.com/Peatix/aws-sdk-perl/actions/runs/25594694233),
  step "Regenerate the picked services" 06:56:30 → 06:56:34 UTC
  2026-05-09 = 4s for {Account, STS, Health, BackupSearch}.
- **Single-service `script/gen-service` for big services**: not
  separately captured by CI today. The matrix-shard timings put EC2
  + SageMaker as the cells with the highest cumulative byte total
  (cells `a` and `b` at ~5:21-5:24 wall — see PR #70), which sets a
  rough upper bound for any single big service.
- **Materialiser at runtime, first call**: not yet captured.
  `benchmarks/baseline.json` reserves a `startup-cold` slot but the
  median is `null` until `benchmark-capture.yml` runs on master with
  populated baselines. See `benchmarks/RESULTS.md`.
- **On-disk load via `Module::Runtime::require_module`**: dominated
  by the per-shape `.pm` count for the service (each shape is an
  individual `.pm`). Same caveat as above — no machine-captured
  median yet.

When you need a number that isn't in this list, drive
`benchmarks/run-all` locally:

```
benchmarks/run-all --iterations 5 --output /tmp/bench.json
```

It captures `startup-cold` (forks + loads DynamoDB) and
`decode-warm-2500` (in-process 2500-row Query response decode).

## See also

- `docs/architecture.md` — the data flow and where each module lives.
- `docs/loaders.md` — Smithy and Botocore loaders + IR coverage table.
- `docs/sources.md` — vendored sources and the `share/smithy/` /
  `share/botocore/` layout.
- `docs/oo-backends.md` — Moose vs Moo + Type::Tiny tradeoffs.
- `docs/serdes.md` — the wire-layer side-table both backends populate.
- `docs/testing.md` — `script/test-one`, the synthetic-service drivers,
  the type contract tests.
- `docs/ci.md` — workflow design, the matrix-sharded gen pipeline,
  cache-key rationale.
- `docs/paws-docs.md` — companion `Paws-Docs` dist for per-shape POD,
  built from the same IR.
