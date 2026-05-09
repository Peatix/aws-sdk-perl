# CI workflows

This repository ships three GitHub Actions workflows under `.github/workflows/`:

| Workflow | Trigger | Purpose |
| --- | --- | --- |
| `test.yml` | `pull_request` (filtered to code paths) | Generate the full set of service classes and run the test suite. |
| `generate-and-pr.yml` | `workflow_dispatch` | Pull botocore (optionally), regenerate classes via `make gen-classes`, and open a draft PR with the result. |
| `package.yml` | `workflow_dispatch` and tag pushes | Build a `Paws-*.tar.gz` distribution archive and upload it as a workflow artifact. |

(Additional workflows arrive in stack 01–17 of the maintenance-reduction series:
`coverage.yml`, `install-smoke.yml`, `benchmarks.yml`,
`regen-byte-identical.yml`, `benchmark-capture.yml`. Each one should also use
the composite action introduced below.)

## Shared setup: `.github/actions/setup-paws-perl`

All three workflows above share a near-identical setup block: install Perl,
install the bootstrap modules, run `carton install`. The composite action at
`.github/actions/setup-paws-perl/action.yml` factors that out and adds
caching that materially speeds up CI.

### What the action caches

1. **Perl bootstrap modules** — uses
   `actions-setup-perl@v1`'s built-in `enable-modules-cache: true`.
   Caches `App::cpanminus`, `Carton`, and any extras passed via
   `install-modules:`.
2. **`local/` (carton install dir)** — `actions/cache@v4` keyed on
   `cpanfile.snapshot` content (with `cpanfile` as fallback). Carton
   install is the single largest CI cost on cold runs (30–60s);
   warm runs verify the lockfile without reinstalling.
3. **`auto-lib/` (regenerated SDK classes)** — opt-in via
   `cache-autolib: "true"`. Keyed on the union of inputs that affect
   generation: `builder-lib/`, `builder-bin/`, `templates/`, the
   botocore submodule's HEAD, and `cpanfile`. When the key matches a
   previous run, callers can skip `make gen-classes-no-doc-fetch`
   entirely. **This is the biggest single win** — the regen step is
   multi-minute and runs on every PR that doesn't change the
   generator.

### Inputs

| Input | Default | Purpose |
| --- | --- | --- |
| `perl-version`    | `5.36`                 | Perl version to install |
| `install-modules` | `App::cpanminus`+`Carton` | Bootstrap modules; pass extras for richer workflows |
| `carton-install`  | `true`                 | Run `carton install` after Perl setup |
| `cache-carton`    | `true`                 | Cache `local/` |
| `cache-autolib`   | `false`                | Cache `auto-lib/` regen output (opt-in) |

### Outputs

| Output | Meaning |
| --- | --- |
| `autolib-cache-hit` | `"true"` iff the auto-lib cache restored content for the current key. Caller should skip the regen step when this is true. |

### Adoption pattern

Existing workflow:

```yaml
- name: Set up Perl 5.36
  uses: shogo82148/actions-setup-perl@v1
  with:
    perl-version: "5.36"
    install-modules-with: cpm
    install-modules: |
      App::cpanminus
      Carton

- name: Install dependencies
  run: |
    carton install
```

After adoption:

```yaml
- name: Set up Perl + dependencies
  uses: ./.github/actions/setup-paws-perl
```

For workflows that regenerate `auto-lib/`:

```yaml
- name: Set up Perl + dependencies
  id: perl
  uses: ./.github/actions/setup-paws-perl
  with:
    cache-autolib: "true"

- name: Generate classes
  if: steps.perl.outputs.autolib-cache-hit != 'true'
  run: make gen-classes-no-doc-fetch
```

### Adoption status

| Workflow | Adopts composite action |
| --- | --- |
| `test.yml`              | ✓ (this PR) |
| `generate-and-pr.yml`   | ✓ (this PR) |
| `package.yml`           | ✓ (this PR) |
| `coverage.yml`          | TODO — adopt when stack 01 lands |
| `install-smoke.yml`     | TODO — adopt when stack 03 lands |
| `benchmarks.yml`        | TODO — adopt when stack 04 lands |
| `regen-byte-identical.yml` | TODO — adopt when stack 09 lands |
| `benchmark-capture.yml` | TODO — adopt when stack 17 lands |

The five `TODO` workflows are introduced by stack PRs that are already open;
adopting the composite action there is a one-line change per workflow.

### Expected savings

Per workflow run, on cold cache:

- carton install:       ~30–60s
- Perl bootstrap deps:  ~10–15s
- gen-classes (test.yml): ~2–4 minutes (the big one)

Warm cache, typical PR:

- carton install:       ~3–5s (lockfile verification only)
- Perl bootstrap deps:  ~2s (downloaded from cache)
- gen-classes (test.yml): 0s (skipped via cache-hit)

So a typical PR that doesn't touch the generator goes from ~5–7 minute CI
to ~1–2 minutes. PRs that do touch the generator still pay the regen cost
but everything else still benefits.

## How `test.yml` runs

The workflow is split into two stages — a single `build-autolib` job and
a `test` matrix that fans out across N shards in parallel:

1. **`build-autolib`** — checks out the repo, fetches the pinned botocore data
   (post-stack18 vendored layout), restores the auto-lib cache via the
   `setup-paws-perl` composite action, runs `make gen-classes-no-doc-fetch`
   on cache miss, then tars `auto-lib/` and uploads it as a workflow
   artifact. Skipping the regen on cache hit is what keeps warm-cache PRs
   under a minute for this stage. The artifact (~22 MB compressed from
   ~250 MB / ~52k tiny files) is what the matrix downloads.
2. **`test` (matrix)** — depends on `build-autolib`. Each cell runs one
   named shard, defined by `script/test-shard`. Per-shard rationale and
   the (CI-measured) runtime budget live in the comment block at the top
   of that script.

The shard names are listed in the workflow YAML; the assignment of `.t`
files to shards lives entirely in `script/test-shard`. Re-balancing is a
script-side change. `script/test-shard --verify` asserts that every `.t`
file under `t/` belongs to exactly one shard (with `t/01_load.t` the
deliberate exception — it appears in `load-a` and `load-b`, each running
it with a different alphabetical half of `Paws->available_services` as
`@ARGV`).

The local developer entry point is unchanged: `make test` runs the whole
suite serially. `make test-shard SHARD=<name>` exists for parity with CI
when reproducing a shard locally.

There is no per-service or per-test list maintained inside the YAML — the canonical sources of truth are:

- the list of services to generate: `Paws::API::Builder::Paws->boto_file_information` (in `builder-lib/`),
- which services to skip: `Paws::API::Builder::Paws->service_skip_list`,
- the list of tests to run: every file under `t/` per the `test` target in `Makefile`,
- the CI-only assignment of `.t` files to shards: `script/test-shard`.

### Why an artefact, not 6 cache-restores

The matrix could equally well have each cell call the `setup-paws-perl`
composite action with `cache-autolib: "true"` and let every cell hit
`actions/cache@v4` independently. We don't, for two reasons:

1. **Cold-cache compute.** When the auto-lib cache key misses, the
   single-build pattern runs `gen-classes-no-doc-fetch` once
   (~25–30 minutes). The N-cells-restore-cache pattern would run it
   N times in parallel, multiplying compute by N for no wall-time win.
2. **52k tiny .pm files vs. one 22 MB tarball.** The cache action
   compresses the cache content as a single archive when it saves, but
   when *reading* it has to spread the files back into `auto-lib/`.
   Six cells doing that in parallel still beats one cell serially, but
   the artefact path is uniformly faster and removes the cold-path
   amplification entirely.

## Service generation tolerances

For CI to operate without a full `make docu-links` (which hits `docs.aws.amazon.com` per operation per service) or a working `_endpoints.json` file in the upstream botocore submodule, `Paws::API::Builder` falls back gracefully:

- Missing `documentation-1.json` → returns a stub `{ api_url => undef, methods => {} }` with a warning. Generated POD links degrade but the service classes are produced.
- Missing `_endpoints.json` in `botocore/botocore/data/` → falls back to the vendored copy at `etc/_endpoints.json`.
- Missing both → emits no per-service region rules and lets `Paws::API::EndpointResolver` use its built-in default rules.

## Where to look when something breaks

| Symptom | Look at |
| --- | --- |
| New service fails to generate | `Paws::API::Builder` (validation/templates), `Paws::API::Builder::Paws::service_skip_list` |
| `Please help me generate a good name for the paginator FOO` | `Paws::API::Builder::get_paginator_name` |
| `Unrecognized Map type` | the map dispatch in `Paws::API::Builder::process_inner_class` |
| `<Foo/> ... required attribute Cause is missing` | `Paws::Net::XMLResponse::new_from_result_struct` (empty-element handling) |
| Test fixture expectation no longer matches AWS | `t/10_responses/*.response.test.yml` — mark as `todo:` if the upstream shape has drifted since the fixture was recorded |
| Whole-suite generation slow | `MAX_PROCESSES` env var read by `builder-bin/gen_classes.pl` |
| CI cache feels stale | bump the `key:` prefix in `.github/actions/setup-paws-perl/action.yml` to invalidate; or delete via the GitHub UI under Actions → Caches |

## Vendored endpoint metadata

`etc/_endpoints.json` is a snapshot of the legacy `botocore/botocore/data/_endpoints.json` from pplu/botocore commit `ef0baa66` (2015). The upstream file was retired when botocore moved to a partition-based `endpoints.json` format that `Paws::API::RegionBuilder` does not consume. The snapshot encodes the special-case region rules that several `t/12_regions.t` assertions depend on (e.g. `iam`, `route53`, `cloudfront` global hostnames, `s3` us-east-1, `sqs` us-east-1, `elasticmapreduce` per-region prefix). When upstream botocore happens to ship `_endpoints.json` again, the builder still prefers it over the vendored copy.
