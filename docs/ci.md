# CI workflows

This repository ships three GitHub Actions workflows under `.github/workflows/`:

| Workflow | Trigger | Purpose |
| --- | --- | --- |
| `test.yml` | `pull_request` (filtered to code paths) | Generate the full set of service classes and run the test suite. |
| `generate-and-pr.yml` | `workflow_dispatch` | Pull botocore (optionally), regenerate classes via `make gen-classes`, and open a draft PR with the result. |
| `package.yml` | `workflow_dispatch` and tag pushes | Build a `Paws-*.tar.gz` distribution archive and upload it as a workflow artifact. |
| `refresh-source-deps.yml` | daily `schedule` + `workflow_dispatch` | Bump `share/smithy/.upstream-sha` and refresh the vendored Smithy IR tree under `share/smithy/`; open + auto-merge a bump PR. See ["Source-dep refresh"](#source-dep-refresh). |

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
| `cache-autolib`   | `false`                | Cache `auto-lib/`. Three values: `false` / `true` (read+write) / `restore-only` (read-only, no post-step save). |

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

The workflow has four stages. On cache hit, only `build-autolib-plan`
and the `test` matrix run — the shard / merge stages are skipped. On
cache miss the full chain executes:

```
build-autolib-plan
  └─► build-autolib-shard (matrix a..f, parallel)
        └─► build-autolib-merge
              └─► test (matrix load-a, load-b, network, responses, mocked, subdirs)
```

1. **`build-autolib-plan`** — checks out the repo, sets up Perl with
   `cache-autolib: "restore-only"` (read-only `actions/cache/restore@v4`
   under the same key the merge job will write), and on cache hit packs
   the restored `auto-lib/` and uploads it as the `auto-lib` artifact.
   On cache miss, emits `cache-hit=false` and exits. Plan runs without
   `carton-install` / `cache-carton` to keep the cache-hit path lean.
2. **`build-autolib-shard`** — strategy matrix of six cells (`a` … `f`)
   that only runs on cache miss. Each cell regenerates one slice of
   `auto-lib/` via `script/gen-shard <name>`. The shard partition is a
   largest-first greedy bin-packing on `service-2.json` byte size, applied
   to `Paws::API::Builder::Paws->boto_file_information` (skip-list
   honoured); see the comment block in `script/gen-shard` for the
   algorithm rationale and determinism notes. Each cell uploads its
   slice as `auto-lib-shard-<name>`.
3. **`build-autolib-merge`** — only runs on cache miss. Downloads every
   shard tarball, assembles them into a single `auto-lib/`, runs
   `gen_classes.pl --paws_pm` once over the full service set to produce
   the master `Paws.pm` + `Paws/API/Retry.pm` index, packs the assembled
   tree, and uploads it as `auto-lib`. Uses `cache-autolib: "true"`, so
   the post-step writes the assembled tree to `actions/cache` for the
   next warm-cache PR.
4. **`test` (matrix)** — `needs: [build-autolib-plan, build-autolib-merge]`
   with an `if:` that runs when plan succeeded AND (cache hit OR merge
   succeeded). Each cell runs one named shard from `script/test-shard`.

`script/test-shard --verify` asserts that every `.t` file under `t/`
belongs to exactly one shard (with `t/01_load.t` the deliberate
exception — it appears in `load-a` and `load-b`, each running it with
a different alphabetical half of `Paws->available_services` as `@ARGV`).
`script/gen-shard --verify` does the equivalent for the auto-lib
generator side: every service in `boto_file_information` ends up in
exactly one shard.

The local developer entry point is unchanged: `make test` runs the
whole suite serially and `make gen-classes(-no-doc-fetch)` regenerates
`auto-lib/` in one process. `make test-shard SHARD=<name>` and
`make gen-shard SHARD=<name>` exist for parity with CI when reproducing
one cell locally.

There is no per-service or per-test list maintained inside the YAML —
the canonical sources of truth are:

- the list of services to generate: `Paws::API::Builder::Paws->boto_file_information` (in `builder-lib/`),
- which services to skip: `Paws::API::Builder::Paws->service_skip_list`,
- the list of tests to run: every file under `t/` per the `test` target in `Makefile`,
- the CI-only assignment of services to gen shards: `script/gen-shard`,
- the CI-only assignment of `.t` files to test shards: `script/test-shard`.

### Why an artefact, not 6 cache-restores

The test matrix could equally well have each cell call the
`setup-paws-perl` composite action with `cache-autolib: "true"` and let
every cell hit `actions/cache@v4` independently. We don't, for two
reasons:

1. **Cold-cache compute.** When the auto-lib cache key misses, the
   single-build pattern runs the gen pipeline once. The
   N-cells-restore-cache pattern would race N gens in parallel,
   multiplying compute by N for no wall-time win.
2. **52k tiny .pm files vs. one 22 MB tarball.** The cache action
   compresses the cache content as a single archive when it saves, but
   when *reading* it has to spread the files back into `auto-lib/`.
   Six cells doing that in parallel still beats one cell serially, but
   the artefact path is uniformly faster and removes the cold-path
   amplification entirely.

### Why the gen-classes side is sharded but the test side isn't

The previous single-job `build-autolib` paid ~28 min on every cache-miss
PR (PRs that touch `builder-lib/`, `builder-bin/`, `templates/`,
`cpanfile`, or `etc/botocore-pin.sha`) because `gen_classes.pl`
runs a `Parallel::ForkManager` pool of up to 16 workers, but a
`ubuntu-latest` runner only has 4 cores so only 4 are effective. Six
shards on six 4-core runners give 24 effective workers, balanced near
1.0× of the per-shard mean (largest-first bin-packing), so each cell's
wall time is roughly `(28 min) / 6 ≈ 4.7 min`. The `--paws_pm` master
index runs once at merge stage and only takes ~30s.

Net cache-miss wall: plan (30s) + max(shard) (~6 min including per-cell
setup) + merge (~2-3 min including the cache save) + test matrix
(~5 min) ≈ **~13-14 min total** vs. the previous **~28 min build-autolib
+ ~5 min test = ~33 min**.

Cache-hit wall is unchanged in shape: plan probes the cache, packs and
uploads the artefact, the test matrix downloads and runs.

## Service generation tolerances

For CI to operate without a full `make docu-links` (which hits `docs.aws.amazon.com` per operation per service) or a working `_endpoints.json` file in the upstream botocore submodule, `Paws::API::Builder` falls back gracefully:

- Missing `documentation-1.json` → returns a stub `{ api_url => undef, methods => {} }` with a warning. Generated POD links degrade but the service classes are produced.
- Missing `_endpoints.json` in `botocore/botocore/data/` → falls back to the vendored copy at `etc/_endpoints.json`.
- Missing both → emits no per-service region rules and lets `Paws::API::EndpointResolver` use its built-in default rules.

## Source-dep refresh

`.github/workflows/refresh-source-deps.yml` keeps the runtime upstream
fresh, without manual nudges:

- **`share/smithy/`** + **`share/smithy/.upstream-sha`** — the
  vendored Smithy IR tree produced by `script/paws-vendor-smithy
  --clean` from `awslabs/aws-sdk-rust@main`'s `aws-models/` directory
  at the SHA pinned in `share/smithy/.upstream-sha`. The single
  `bump-smithy-vendor` job re-resolves `main`, rewrites the pin file
  if it has moved, runs the vendor script, and opens a PR with the
  drift.

The workflow does NOT auto-track the AOT-generator-only botocore
pin in `etc/botocore-pin.sha` — that pin only changes when a
contributor regenerates `auto-lib/` at a new botocore SHA via
`generate-and-pr.yml`, which is a manual workflow.

### Schedule

Daily at `0 4 * * *` (04:00 UTC). The cadence matches upstream's
commit rate without flooding review. GitHub spreads scheduled
workflows across runners to smooth load, so the actual run can
drift up to ~60 minutes from the nominal time — that's expected.
The cron line is a single line at the top of the workflow so it's
easy to retune.

### Manual trigger

`workflow_dispatch` is also wired up:

```
gh workflow run refresh-source-deps.yml --ref master
gh run watch
```

Or trigger from the Actions tab in the GitHub UI. Manual runs use
the same logic as the cron run; if upstream hasn't moved since the
current pin, the job exits with a `notice` and no PR.

### Lifecycle

When `bump-smithy-vendor` detects an upstream change:

1. Rewrites `share/smithy/.upstream-sha` to the new
   `awslabs/aws-sdk-rust@main` SHA and runs
   `script/paws-vendor-smithy --clean` to regenerate the IR tree.
2. Creates the bump branch
   (`automation/bump-smithy-vendor-<short-upstream-sha>`) and
   force-pushes the commit via plain `git`.
3. Opens (or reuses, on a same-SHA re-run) a **draft** PR labelled
   `automated` via `actions/github-script@v8` —
   `github.rest.pulls.list` first, `pulls.create` if no open PR
   matches the head branch, `issues.addLabels` either way.
4. Watches the standard `pull_request` workflows on that PR with
   `gh pr checks --watch --interval 30`.
5. On green, marks the PR ready and `gh pr merge --squash --delete-branch`.
6. On red, leaves the PR as draft for the maintainer to investigate.

The workflow does NOT close or supersede previously-opened auto-bump
PRs that are still open. If the maintainer ignored yesterday's
smithy bump and the workflow runs again today against a newer SHA,
a fresh PR opens against a fresh branch — the SHA-keyed branch
naming makes that automatic. The maintainer can close the stale
one (or merge it first; a same-SHA re-run force-pushes the bump
branch so the existing PR auto-updates with the latest commit).

The shell + `github-script` split replaces the previous
`peter-evans/create-pull-request` action: fewer third-party
dependencies, more direct control over commit messages and the
existing-PR-reuse path, and aligns with the github-script pattern
already in `generate-and-pr.yml`.

### `PAWS_BUMP_PAT` secret

GitHub deliberately blocks workflows triggered by pushes from the
default `GITHUB_TOKEN` to prevent recursive runs. Net result: when
this workflow uses `GITHUB_TOKEN` to push the bump branch, the
`pull_request` event for the bump PR fires but `test.yml`,
`coverage.yml`, `benchmarks.yml`, `install-smoke.yml`, and friends
all stay quiet. Without CI signal, the watch step has nothing to
wait on and bails.

To get end-to-end auto-merge, provision a fine-grained PAT with
the following scopes on this repository:

- `contents: write`
- `pull-requests: write`

Save it as `secrets.PAWS_BUMP_PAT`. The job prefers the PAT and
falls back to `GITHUB_TOKEN` when it's unset; in fallback mode the
job emits a `warning` log line and leaves its bump PR as draft for
manual handling. The workflow itself does not fail, so a missing
PAT only degrades automation, not the surrounding CI surface.

### Auto-merge gating

Master currently has no required status checks and the repo has
`allow_auto_merge=false`, so `gh pr merge --auto --squash` would
land the PR instantly even before CI started. Instead the workflow
opens the PR as draft, runs `gh pr checks --watch` itself, and only
flips ready + squash-merges after every `pull_request` workflow on
the PR has succeeded. If a maintainer enables required checks +
flips on `allow_auto_merge`, the watch+ready+merge sequence in the
workflow can be replaced with a single `gh pr merge --auto --squash`
call.

The watch only sees checks that the standard `pull_request`
workflows produce, so if any of those workflows tightens its `paths:`
filter to exclude `share/`, the auto-merge silently stops covering
that case (the relevant workflow won't fire on the bump PR).
`test.yml`, `regen-byte-identical.yml`, `benchmarks.yml`,
`benchmark-capture.yml`, and `package.yml` already include `share/**`
or run unconditionally, so this is fine today.

### Disabling temporarily

Two options:

1. **Comment out the cron line** in
   `.github/workflows/refresh-source-deps.yml`. `workflow_dispatch`
   stays available for manual nudges.
2. **Disable the workflow in the GitHub UI** under Actions →
   refresh-source-deps → ⋯ → Disable workflow. This stops both the
   cron and `workflow_dispatch`. Re-enable the same way.

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
