# Distribution plan: A4-B modular sub-dists

This document is the implementation roadmap from the current
`master` (post-#75 / #83, single-dist on-demand-materialisation) to
the **first modular release** chosen as the project direction in
[issue #87](https://github.com/Peatix/aws-sdk-perl/issues/87).

Issue #87 captures the **measurement rationale** for the choice
(matrix of A1–A9 alternatives, baselines, prototypes). This document
captures the **engineering plan** — what we build, in what order,
and what the user-facing artefacts look like at each step. The two
should be read together; #87 is the "why", this is the "how".

## 1. Direction summary

The project ships per-service modular sub-dists (one CPAN dist per
AWS service), produced by running the materialiser at **build time**
against the vendored Smithy IR. `Paws::Core` becomes a slim runtime
that contains the wire layer, signers, credential providers, and
loader / materialiser / IR machinery — but **not** the IR itself
and **not** any service classes. Sub-dists declare `Paws::Core` as a
runtime dependency.

`Paws->service('UninstalledX')` is a deliberate load-time error:
without `Paws/X.pm` on disk and without `share/smithy/` to fall back
to, the call fails with the canonical Perl
`Can't locate Paws/X.pm in @INC (you may need to install the
Paws::X module)` error. This matches the JS-SDK-v3 contract — install
what you call. Issue #87 captures the rationale.

This is **breaking** for existing `Paws@1.00`-on-CPAN consumers.
They were going to have to migrate eventually anyway (post-#75 already
broke wire-level compatibility for some services); A4-B is one more
breaking change that lands at the same major version cut. **Version
stays on 1.x**: 1.0.0 is the first modular release, not 2.0. (Pre-1.0
master was already breaking compatibility relative to the legacy
`Paws@0.46` CPAN release, so the major-version semantics already
expect a discontinuity at 1.0.)

Distribution channel: **GitHub Releases is primary**, not PAUSE.
The Peatix fork shares the `Paws` namespace with upstream `Pplu/Paws`;
uploading `Paws-S3` etc. to PAUSE under that namespace would conflict
with upstream's permissions. PAUSE remains a stretch / mirror target
if the namespace conflict resolves; for now, GH Release URLs are the
canonical install path.

## 2. Architecture

Three dist categories ship under A4-B, plus an optional fourth.

### 2.1 `Paws::Core` (single dist; thin runtime)

| Path | Purpose |
|---|---|
| `lib/Paws.pm` | Top-level entry. `Paws->service($svc)` → `load_class("Paws::$svc")` → on-disk-only path (no materialiser fall-through under A4-B). |
| `lib/Paws/API/*` | Caller / EndpointResolver / etc. roles consumed by every service class. |
| `lib/Paws/Credential/*` | Credential providers (Environment, File, ECS, InstanceProfile, AssumeRole, ProviderChain, …). |
| `lib/Paws/Net/*` | Wire layer: `JsonCaller`, `RestJsonCaller`, `QueryCaller`, `RestXmlCaller`, `EC2Caller`, signers (V4, V4A, BEARER, V4S3, NoSignature), HTTP transport. |
| `lib/Paws/Signin/*` | OIDC / SSO sign-in helpers. |
| `lib/Paws/Model/IR.pm` | IR data classes — needed by the wire layer to walk shapes at request time. |
| `lib/Paws/SerDes.pm` | Side-table that the wire layer reads (post-stack-12). |
| `lib/Paws/Exception.pm` | Standard exception class. |
| `bin/paws-migrate-cpanfile` | One-time migration helper for users moving from the old monolithic `Paws@1.00` install (see §5). |

**Not** in `Paws::Core`:

- `share/smithy/` — IR is consumed only by the build pipeline, not
  shipped to end users. Build-time only.
- Any `Paws::<Service>` or `Paws::<Service>::*` classes. Those live
  in their per-service sub-dists.
- Per the **Q9 decision** in §7, the materialiser, loaders
  (`Paws::Model::Loader::Resolver`, `::Smithy`,
  `Paws::Model::Loader`), and the `IR::Service`/`Operation`/`Shape`
  classes that the loaders construct are **NOT shipped in any
  user-facing dist**. They live on the master branch as build-time
  tooling only and are excluded from `Paws::Core`'s `dist.ini`
  GatherDir via `exclude_match = ^lib/Paws/Model/(Loader|Materializer)`
  and `exclude_filename = lib/Paws/Model/IR.pm` (or equivalent).
  Note: a thin `IR.pm` lives in Core for the wire layer's runtime
  needs (walking shapes during serialisation). The full IR module
  with its `::Service` / `::Operation` constructor logic stays
  build-time-only.

Approximate size, measured against the existing local install minus
`share/smithy/` (issue #87 prototype): **~1.7 MB installed, ~668 KB
tarball**. With the materialiser + full loader stack also stripped
the install drops further (~1.6 MB / ~620 KB tarball estimated).

### 2.2 `Paws-<Service>` (~411 dists; per-service AOT)

One CPAN dist per AWS service that has a Smithy IR file under
`share/smithy/<basename>/<basename>.smithy.json` in this repo, minus
the ~14 services in `%PAWS_DROPPED_SERVICES` from
`lib/Paws/Model/Loader/Resolver.pm`. The exact list is enumerable from
the build-time materialiser; it does not need to be hand-maintained.

Each sub-dist contains:

| Path | Purpose |
|---|---|
| `lib/Paws/<Service>.pm` | Top-level service class. Same `package Paws::<Service>; with 'Paws::API::Caller', 'Paws::API::EndpointResolver', ...` shape the AOT generator and post-#75 materialiser produce today. |
| `lib/Paws/<Service>/<Operation>.pm` | One file per operation (e.g. `Paws/S3/CreateBucket.pm`). Per-class layout, **not** single-file-per-service — the latter regresses cold first-call by 260 % per the A4-B-singlefile prototype in #87. |
| `lib/Paws/<Service>/<Shape>.pm` | One file per request / response / shape class. |

POD is **stripped at build time** from every `.pm` (POD lives in the
companion docs dist; see §2.3). Build-time materialiser can either
emit POD-less source directly (cleaner) or emit AOT-style source and
run `Pod::Strip` over it — the choice is open question Q11.

`META.yml` declares `requires Paws::Core` (no version pin under A4-B
beyond the major; semver minor/patch tracks the upstream Smithy
regen). Build target: `dzil build` against a generated `dist.ini`.

Estimated size for the user's 10-service set (#87 measurement): **~14
MB installed across 2 938 .pm files, 1.43 MB sum of 10 sub-tarballs**.
Per-service tarballs range from 36 KB (SQS) to 644 KB (EC2).

### 2.3 `Paws-<Service>-Docs` (~411 dists; opt-in companions)

POD-only companion to each code dist. Contents:

| Path | Purpose |
|---|---|
| `lib/Paws/<Service>/<Operation>.pod` | POD-only file at the **same** canonical class path as the code dist's `.pm`. `perldoc` searches `@INC` for `<class>.pod` and `<class>.pm` for the queried name; with both installed it resolves the docs file. |

`META.yml` declares `requires Paws::<Service> == <same version>`
(docs-companion version moves in lockstep with the code dist).

User ergonomics:

```bash
# Shipping environment (no docs):
cpanm Paws::S3        # only the code dist; perldoc Paws::S3 returns "No documentation found"

# Developer environment (with docs):
cpanm Paws::S3 Paws::S3::Docs   # perldoc Paws::S3::CreateBucket renders the POD
```

The `::Docs` namespace is **only** the dist name; user-visible classes
stay at `Paws::S3::*`. Naming rationale (#87 follow-up): `::Docs`
plural reads better than `::Doc` and avoids the implementation-detail
`::POD`.

### 2.4 `Paws` meta-dist (optional, deferred)

A thin "install-everything" dist whose `cpanfile` `recommends` every
`Paws-<Service>` dist. Existence of this meta-dist is convenient for
users migrating from the legacy `cpanm Paws` UX, but it is **not on
the critical path** for the first modular release. Defer to a Phase
6 follow-up if user demand materialises.

### 2.5 Build-time-only modules (Q9 decided)

**Decision (2026-05-10): Option C — drop entirely from any user-facing
dist.** Hybrid mode (user drops their own `share/smithy/` and expects
on-demand materialisation) is unreachable post-A4-B; users who want
that behaviour must run the build pipeline locally.

The materialiser (`lib/Paws/Model/Materializer.pm`,
`lib/Paws/Model/Materializer/Moo.pm`,
`lib/Paws/Model/Materializer/Auto.pm`), the loaders
(`lib/Paws/Model/Loader/Resolver.pm`, `::Smithy.pm`,
`lib/Paws/Model/Loader.pm`), and the IR constructor classes live on
the master branch at `lib/Paws/Model/{Materializer,Loader,IR}*` for
the build pipeline's use, but are excluded from every user-facing
dist via the relevant `dist.ini`'s
`[Git::GatherDir] exclude_match` rules.

The build pipeline (`script/build-modular-dist`) loads them via
`-I lib` at build time, runs the materialiser, dumps source into
the per-service tmp tree, and discards the loader/materialiser
stack from the produced tarball. Production users never see the
materialiser at runtime.

`Paws.pm`'s `_materialise_class` fallback path is removed in Phase 3
when Core is slimmed; `load_class` becomes pure
`Module::Runtime::require_module($class)` with the canonical
`Can't locate Paws/<svc>.pm in @INC` error if the class is missing.

## 3. Build pipeline

Three new scripts under `script/` plus one CI workflow under
`.github/workflows/`. Reference implementation lives on the
[`cursor/distribution-rfc-prototypes`](https://github.com/Peatix/aws-sdk-perl/tree/cursor/distribution-rfc-prototypes)
branch; the prototypes used the legacy AOT `.pm` files directly, but
production scripts will drive the materialiser.

### 3.1 `script/build-modular-dist <Service>`

Inputs: a Paws service class name (e.g. `S3`, `EC2`, `SecretsManager`).

Steps:

1. Resolve the Smithy basename via
   `Paws::Model::Loader::Resolver`'s `%PAWS_TO_SMITHY` map (e.g.
   `SecretsManager` → `secrets-manager`).
2. Load the IR from `share/smithy/<basename>/<basename>.smithy.json`.
3. Drive `Paws::Model::Materializer::Moo->materialize_service($ir)`,
   but instead of `eval`-ing the source strings, **dump them** to
   `tmp/build/Paws-<Service>/lib/Paws/<Service>.pm` and one
   `tmp/build/Paws-<Service>/lib/Paws/<Service>/<Op|Shape>.pm` per
   inner class.
4. **(Q11 decided 2026-05-10: materialiser-side.)** The
   build script constructs the materialiser with a `pod => 0` flag
   (or equivalent — `materialize_service` gains a "no-pod mode").
   `Materializer::Moo`'s string templates have a single conditional
   block per emitted package that includes the operation /
   shape POD; in `pod => 0` mode that block emits nothing. No
   post-process step. The materialiser's default behaviour
   stays POD-full so the docs companion build (§3.2) gets the
   POD it needs from the same materialiser instance.
5. Emit a generated `dist.ini`:
   ```
   name = Paws-<Service>
   version = <Paws::Core version>
   author = Peatix Paws maintainers
   license = Apache_2_0
   [GatherDir]
   [MakeMaker::Awesome]
   ; or [ModuleBuildTiny]
   [Manifest]
   ```
   Plus an inline `cpanfile` that declares `requires 'Paws::Core'`.
6. Run `dzil build` in `tmp/build/Paws-<Service>/`.
7. Emit `dist/Paws-<Service>-<version>.tar.gz`.

The script must be deterministic given a fixed Smithy IR + Paws::Core
version, so a re-run produces a byte-identical tarball. Tests for
this in Phase 1.

### 3.2 `script/build-modular-docs-dist <Service>`

Companion to §3.1. Same input. Walks the materialiser's POD output
(or, if POD is stripped before emission, extracts POD from a
parallel "with-POD" materialiser run), writes one `.pod` file per
operation/shape at `lib/Paws/<Service>/<Op|Shape>.pod`.

Generated `dist.ini` declares `requires Paws::<Service> ==
<same version>`. Output: `dist/docs/Paws-<Service>-Docs-<version>.tar.gz`.

### 3.3 `script/build-all-modular`

Orchestrator. For every service in `share/smithy/` minus
`%PAWS_DROPPED_SERVICES`:

```bash
for svc in $(perl -Ilib -e '
    use Paws::Model::Loader::Resolver;
    my $r = Paws::Model::Loader::Resolver->new;
    print "$_\n" for sort grep { !$Paws::Model::Loader::Resolver::PAWS_DROPPED_SERVICES{$_} }
        $r->all_known_services;
'); do
    script/build-modular-dist "$svc"
    script/build-modular-docs-dist "$svc"
done
```

Note: `all_known_services` does not exist today on the resolver;
Phase 1 adds it as part of the build-tooling commit.

Output structure:

```
dist/
├── Paws-Core-1.0.0.tar.gz
├── Paws-S3-1.0.0.tar.gz
├── Paws-EC2-1.0.0.tar.gz
├── ...   (one per service)
└── docs/
    ├── Paws-S3-Docs-1.0.0.tar.gz
    ├── Paws-EC2-Docs-1.0.0.tar.gz
    └── ...
```

~411 code tarballs + ~411 docs tarballs + 1 `Paws::Core` = **~823
tarballs per release**. Within GH Releases' 1 000-asset-per-release
ceiling (#87 Q2 follow-up).

### 3.4 GitHub Actions workflow `.github/workflows/release-modular.yml`

Trigger: `release.published`. Outline:

```yaml
on:
  release:
    types: [published]

jobs:
  build:
    runs-on: ubuntu-latest
    strategy:
      matrix:
        service: <generated list of ~411 services>
    steps:
      - uses: actions/checkout@v6
      - uses: ./.github/actions/setup-paws-perl
      - name: Build code dist
        run: script/build-modular-dist ${{ matrix.service }}
      - name: Build docs dist
        run: script/build-modular-docs-dist ${{ matrix.service }}
      - uses: actions/upload-artifact@v4
        with:
          name: dists-${{ matrix.service }}
          path: dist/

  publish:
    needs: build
    runs-on: ubuntu-latest
    steps:
      - uses: actions/download-artifact@v4
      - name: Build Paws::Core dist
        run: dzil build  # against the existing Paws::Core dist.ini
      - name: Attach all tarballs to release
        run: |
          gh release upload ${{ github.event.release.tag_name }} \
              dist/*.tar.gz dist/docs/*.tar.gz
```

Per-service matrix builds give us free parallelism on GitHub's
runner pool. The `build-autolib` matrix in the existing
`.github/workflows/test.yml` is the precedent.

**Not in scope for Phase 2**: OrePAN2 / DarkPAN-at-Pages workflow.
That's deferred to optional Phase 6 (#87 mentions the design;
implement only if direct-URL pain materialises).

### 3.5 User install ergonomics under "GH Releases URLs only"

Until a DarkPAN mirror exists, users install via direct URLs:

```bash
cpanm \
  https://github.com/Peatix/aws-sdk-perl/releases/download/v1.0.0/Paws-Core-1.0.0.tar.gz \
  https://github.com/Peatix/aws-sdk-perl/releases/download/v1.0.0/Paws-S3-1.0.0.tar.gz \
  https://github.com/Peatix/aws-sdk-perl/releases/download/v1.0.0/Paws-EC2-1.0.0.tar.gz
```

Or via cpanfile:

```perl
requires 'Paws::Core',
    url => 'https://github.com/Peatix/aws-sdk-perl/releases/download/v1.0.0/Paws-Core-1.0.0.tar.gz';
requires 'Paws::S3',
    url => 'https://github.com/Peatix/aws-sdk-perl/releases/download/v1.0.0/Paws-S3-1.0.0.tar.gz';
```

Trade-off: each version bump means rewriting URLs. The migration
helper (§5) emits a templated cpanfile snippet that consumers can
update by changing one variable. If URL-rewriting becomes a real
operational pain, Phase 6 adds the DarkPAN mirror to give
`cpanm Paws::S3` (no URL) the same UX it had on `Paws@0.46`.

All-bump-together versioning (§4) means a single `$V` variable in
cpanfile templates is sufficient; per-service version drift is
post-1.0.0 future work.

## 4. Versioning

- **Paws::Core** is the version anchor. 1.0.0 is the first modular
  release. SemVer-minor for additive Core changes; SemVer-major for
  incompatible Core API changes (rare).
- **Per-service code dists** carry the **same version** as Paws::Core
  in any given release. `Paws-S3-1.0.0.tar.gz` corresponds to
  `Paws-Core-1.0.0.tar.gz`. Within a major-version line, we may
  ship `Paws-S3-1.4.7` against `Paws-Core-1.0.0` if S3's Smithy IR
  has been regenerated but Core has not — but the simpler
  always-bump-everything-together approach is the default. Decide
  on observation; minor differences in tooling complexity.
- **Per-service docs dists** carry the **identical version** as their
  matching code dist. `Paws-S3-Docs-1.0.0` requires
  `Paws::S3 == 1.0.0`.
- All artefacts share a single GitHub release tag (`v1.0.0`).

The all-bump-together model means rebuilding the entire ~822-tarball
fleet on each release. That's fine; the build is parallelisable
per-service via GH Actions matrix (proven by `test.yml`'s
`build-autolib` matrix).

## 5. Migration story

For users currently on `Paws@1.00` (or older `Paws@0.46`):

### 5.1 What changes for the user

| Before | After |
|---|---|
| `cpanm Paws` | `cpanm <list of per-service URLs>` (or, if Phase 6 lands, `cpanm --from <DarkPAN URL> Paws::S3 Paws::EC2 ...`) |
| Implicit access to every AWS service via `Paws->service($name)` | Must `cpanm` each service first; `Paws->service('Uninstalled')` dies with `Can't locate Paws/Uninstalled.pm in @INC` |
| Install footprint ~166 MB | Install footprint scales with services used (~1.7 MB Core + per-service ~50 KB to ~6 MB) |
| `perldoc Paws::S3::CreateBucket` works out of the box | Requires `cpanm Paws::S3::Docs` separately |

### 5.2 Migration helper: `bin/paws-migrate-cpanfile`

Ships in `Paws::Core`. Takes an existing project's source tree as
input, identifies which services it uses (regex
`Paws->service\(['"](\w+)['"]/`), and emits a new cpanfile snippet:

```perl
# Generated by paws-migrate-cpanfile from <input path>.
# Bump VERSION as needed for releases.
my $V = '1.0.0';
my $base = "https://github.com/Peatix/aws-sdk-perl/releases/download/v$V";

requires 'Paws::Core', url => "$base/Paws-Core-$V.tar.gz";
requires 'Paws::S3',   url => "$base/Paws-S3-$V.tar.gz";
requires 'Paws::EC2',  url => "$base/Paws-EC2-$V.tar.gz";
# ... one line per detected service
```

The script's regex is deliberately conservative (string-literal
service names only); users with dynamic `Paws->service($var)` calls
will need to add their full service set by hand.

### 5.3 Announcement: dropped

The original Phase 4 deliverable included an `ANNOUNCE-1.0.0.md`
file. The maintainer dropped it on 2026-05-10: this is a fork,
no public announcement is needed. The README's cpanfile example
block (§5.1) is sufficient for the user-facing communication
channel.

### 5.4 Documentation updates

- `README.md` — replace the install snippet with the new
  multi-tarball pattern.
- `docs/architecture.md` — update the high-level shape diagram to
  show the modular split.
- `docs/sources.md` — note that `share/smithy/` is now build-time
  only; runtime users don't see it.
- `docs/materialisation.md` — note that runtime materialisation is
  no longer a path users hit; it's build-time only.

## 6. Phasing

Don't try to land everything in one PR. Each phase ends with a
deliverable that is end-to-end exercisable; later phases build on
earlier ones.

| Phase | Scope | Deliverable | Estimate |
|---|---|---|---|
| **1** | Build tooling | `script/build-modular-dist` + `script/build-modular-docs-dist` (Phase 1 stub) + `script/build-all-modular`. CI matrix smoke-tests building 3-5 services and asserts tarball roundtrip via `cpanm` install + `examples/smoke.pl`. **No release artefacts yet, no GH workflow yet.** | 1-2 weeks |
| **1.5** | Real POD emission | `Materializer::Moo->generate_pod_for_service($ir)` walks the IR independently of materialise/eval to produce per-class POD strings. `script/build-modular-docs-dist` switches from the Phase 1 placeholder to the real method; each entry lands at `lib/Paws/<Service>/<Op|Shape>.pod` so `perldoc Paws::S3::CreateBucket` resolves directly. CI smoke gate adds `perldoc -t Paws::<Service>` non-empty assertion. Quality bar per §3.1 step 4. Fancy formatting (HTML lists, headings, code blocks) is post-1.0.0. | 1 week |
| **2** | CI workflow | ✅ **Complete (2026-05-10).** `.github/workflows/release-modular.yml` lands in #92 with three follow-up fixes (#93 shard.services word-split, #94 case-insensitive dedup, #95 upload throttle). Cut [`v1.0.0-rc1`](https://github.com/Peatix/aws-sdk-perl/releases/tag/v1.0.0-rc1): 7 shards × ~50 services, 9m22s wall, **609 tarballs** uploaded (1 Paws::Core stand-in + 304 code dists + 304 docs companions). Smoke verified: `cpanm` install of `Paws-1.00 + Paws-S3 + Paws-EC2 + Paws-S3-Docs` from rc1 URLs succeeds; `Paws->service('S3')` / `Paws->service('EC2')` return real instances; `perldoc -t Paws::S3::CreateBucket` resolves to Phase-1.5-generated POD. | 1 week |
| **3** | Paws::Core slimming + workflow audit | ✅ **In progress (2026-05-10).** Strip `share/smithy/` + `lib/Paws/Model/{Materializer,Loader}*` from the Core dist (Q9 = drop entirely, plan §2.5). Rename dist to `Paws-Core`. Drop the runtime materialiser fallback in `lib/Paws.pm`. Skip-all 14 t/*.t tests that depend on runtime-materialised service classes (§6.1). Workflow audit: drop `regen-byte-identical.yml`, `package.yml`, `generate-and-pr.yml`, `benchmarks.yml`, `benchmark-capture.yml` (all obsolete under A4-B); keep test / install-smoke / coverage / build-modular-smoke / release-modular / refresh-source-deps. Cut `v1.0.0-rc2` as a draft. | 1 week |
| **4** | Migration tooling + README example | ✅ **Complete (2026-05-10).** `bin/paws-migrate-cpanfile` greps a project's source tree for `Paws->service`/`load_class`/`use Paws::*` and emits a cpanfile snippet with per-service `requires` lines pinned to GH Releases tarball URLs. `README.md` updated with the cpanfile example block + one-shot `cpanm <urls>` form + upstream-Paws@0.46-still-available note. `docs/{architecture,sources,materialisation}.md` carry A4-B status banners explaining the modular layout. **No `ANNOUNCE-1.0.0.md`** (fork; no public announcement). | 1 week |
| **5** | `v1.0.0` release | ✅ **Cut as draft (2026-05-10).** Cut `v1.0.0` as a DRAFT GitHub release at [the maintainer's UI](https://github.com/Peatix/aws-sdk-perl/releases). Version stays at `1.0.0` (set in Phase 3). Changes file consolidates the A4-B summary at the head. The maintainer publishes from the UI; `release-modular.yml` fires on publish and produces the ~611 modular tarballs. Announcement is the maintainer's call; not bundled with the release. | A few days |
| **Readiness** | Production readiness review | After Phase 5 lands: file an issue on Peatix/aws-sdk-perl summarising build-pipeline reliability, smoke coverage, doc completeness, test health, workflow health, tarball size + asset count, migration-tool coverage, versioning consistency, security/license, performance, operational projections, deferred follow-ups. | A few days |
| ~~6~~ | ~~DarkPAN at GH Pages~~ | **Dropped (2026-05-10)** by maintainer. Direct URL installs stay the canonical pattern; not adding OrePAN2 / DarkPAN tooling, optional or otherwise. | n/a |
| **6 (optional)** | DarkPAN mirror | OrePAN2 + GH Pages workflow, per #87's "GH-Releases-as-primary mechanism" section. **Only if direct-URL pain becomes real.** | 1 week |

Each phase opens **ready-for-review** (not draft); the maintainer's
operating policy is to flip back to draft only if a phase explicitly
needs human gating. CI gates on the PR are the existing test +
install-smoke + coverage + regen + package workflows, plus any new
build-pipeline tests Phase 1 introduces.

### 6.1 Test infrastructure under A4-B (split suites)

The current `t/` tree assumes a single dist with all services
materialisable on demand. Under A4-B, runtime materialisation is
gone (Q9), so most current `t/` files no longer have a viable
loadpath for service classes.

The split:

- **`Paws::Core` `t/`**: minimal suite for loaders, IR, wire layer,
  credential providers, signers, exception handling, generic
  materialiser unit tests. Service classes mocked via
  `Paws::Net::MockCaller`. Roughly 1/3 of the current `t/` corpus
  survives unchanged; another 1/3 is rewritten to use mocks; the
  final 1/3 (per-service end-to-end smokes) moves to the sub-dists.
- **`Paws-<Service>` `t/`**: per-service smoke. Asserts the dist's
  own service class loads, `Paws->service('S3')` returns an
  instance, signature is well-formed, a representative method
  call serialises correctly. Each sub-dist has a tiny `t/00_load.t`
  and `t/01_smoke.t`.

The migration of existing tests happens in Phase 3 (Core slimming).
Phase 1's CI gate uses a temporary harness:
`.github/workflows/build-modular-smoke.yml` builds the user's
10-service set into a local-lib and runs a synthetic smoke that
calls each service's no-arg constructor + a representative method.

## 7. Open questions deferred to during-implementation

These are decisions that depend on data we don't have yet (or
decisions whose cost is small enough that we should defer them
until they're concretely blocking).

- ~~**Q9** Materialiser placement~~ — **Decided 2026-05-10** (Option C, drop entirely from any user-facing dist). See §2.5.
- ~~**Q11** POD-stripping mechanism~~ — **Decided 2026-05-10** (materialiser-side: `Materializer::Moo` gains a `pod => 0` mode). See §3.1 step 4.
- **Cross-service shared shape inventory.** Phase 1 will count
  distinct shape names referenced by ≥2 services + total KB cost
  of duplication. Filed as a follow-up issue at Phase 1's close.
  **Default policy is always-duplicate** per maintainer decision
  (sub-dist independence first; never extract shared shapes to a
  `Paws::Util::*` companion). Revisit only if duplication scale
  turns out to be material.
- **Pplu/Paws upstream namespace.** If/when upstream releases the
  `Paws::*` namespace on PAUSE, can we move from GH Releases to
  PAUSE? Not a blocker; revisit annually.
- **Per-service version drift.** §4 says "all-bump-together by
  default". Phase 5 may surface workloads where per-service-version
  drift is desirable (a security fix in `Paws-S3` shouldn't need a
  Core re-release). Decide on observation post-1.0.0.

## 8. Risks

- **CPAN clients that don't support URL-based `requires`.** `cpanm`
  supports it; `cpm` (App::cpm) supports it; `carton` supports it
  via cpanfile pass-through. Older toolchains (`CPAN.pm` shell)
  don't. Document the supported toolchain matrix in the
  `ANNOUNCE-1.0.0.md`.
- **GitHub Releases bandwidth.** A CI runner pulling
  `Paws::Core` + 10 service tarballs is ~21 MB. At Peatix's
  internal CI scale this is non-issue; for high-volume external
  users it may be. GH does not document a hard rate limit on
  release-asset downloads but abuse-detection systems may apply.
  Phase 6 (DarkPAN at GH Pages, served from CDN) is the mitigation.
- **~822 tarballs per release** is a lot of GH artefact churn. GH
  Releases are free-tier for public repos but old releases consume
  storage. Add a release-cleanup workflow once we've shipped a few
  v1.x releases (deletes assets from `vN-1.*.*` after `vN.0.0`
  ships, retains `vN.0.0` permanently).
- **Migration churn** for existing `Paws@1.00` consumers. The
  population is small (Peatix, a couple of community users) but
  visible. `ANNOUNCE-1.0.0.md` + `bin/paws-migrate-cpanfile` +
  README updates are essential, not optional.
- **Build-pipeline determinism.** If
  `script/build-modular-dist S3` produces non-deterministic output
  (timestamps in tarballs, hash-key-order differences in serialised
  metadata, etc.), CI builds and local builds will disagree, making
  reproducibility hard. Phase 1 includes a determinism test.
- **Materialiser bugs surface only at build time.** Today the
  materialiser runs at runtime in the user's process; bugs are
  caught by user code paths. Under A4-B, materialiser bugs surface
  during `release-modular.yml`. Phase 1 needs CI gating that
  exercises every service end-to-end (build → install → minimal
  smoke).
- **Documentation discoverability.** `perldoc` defaults to
  `Paws::S3::CreateBucket`; if the docs companion isn't installed,
  users see "No documentation found" and may not know to install
  `Paws::S3::Docs`. Mitigation: the code dist's top-level
  `Paws::S3.pm` retains a thin POD pointer
  ("see Paws::S3::Docs companion dist for full operation
  reference") even after POD-stripping the operation classes. This
  is the only POD that survives the strip.

## See also

- Issue #87: [Distribution strategy RFC: measure pre-build alternatives before committing](https://github.com/Peatix/aws-sdk-perl/issues/87) — measurement rationale for A4-B over the other A1–A9 alternatives.
- Prototype branch: [`cursor/distribution-rfc-prototypes`](https://github.com/Peatix/aws-sdk-perl/tree/cursor/distribution-rfc-prototypes) — A1, A2, A3, A4 (modular), A4-B-singlefile, A6, A7, plus A5 / A8 design notes.
- `docs/architecture.md` — current (pre-A4-B) high-level Paws shape. Needs Phase 4 update.
- `docs/materialisation.md` — when bundling vs. when on-demand. Phase 4 update folds this into "build-time only".
- `docs/sources.md` — Smithy IR vendor process. Stays accurate (build pipeline still consumes the vendored IR); add a note that `share/smithy/` no longer ships in any user-facing dist.
