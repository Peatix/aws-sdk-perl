# CI workflows

This repository ships six GitHub Actions workflows under `.github/workflows/`:

| Workflow | Trigger | Purpose |
| --- | --- | --- |
| `test.yml` | `pull_request` (filtered to code paths) | Run the test suite against the current branch. |
| `build-modular-smoke.yml` | `pull_request` | Build a subset of per-service sub-dists and smoke-test them via `cpanm` install + `examples/smoke.pl`. |
| `release-modular.yml` | `release.published` | Build all ~300+ per-service code + docs tarballs and attach them to the GitHub release. |
| `refresh-source-deps.yml` | daily `schedule` + `workflow_dispatch` | Bump `share/smithy/.upstream-sha` and refresh the vendored Smithy IR tree; open + auto-merge a bump PR. See ["Source-dep refresh"](#source-dep-refresh). |
| `coverage.yml` | `pull_request` | Run the test suite under `Devel::Cover` and compare against the coverage baseline. |
| `install-smoke.yml` | `pull_request` | Build the dist tarball, install via `cpanm` in a clean container, and run `examples/smoke.pl`. |

## Shared setup: `.github/actions/setup-paws-perl`

All workflows share a composite action at
`.github/actions/setup-paws-perl/action.yml` that installs Perl,
bootstrap modules, and runs `carton install` with caching.

### What the action caches

1. **Perl bootstrap modules** — uses
   `actions-setup-perl@v1`'s built-in `enable-modules-cache: true`.
   Caches `App::cpanminus`, `Carton`, and any extras passed via
   `install-modules:`.
2. **`local/` (carton install dir)** — `actions/cache@v4` keyed on
   `cpanfile.snapshot` content (with `cpanfile` as fallback). Carton
   install is the single largest CI cost on cold runs (30–60s);
   warm runs verify the lockfile without reinstalling.

### Inputs

| Input | Default | Purpose |
| --- | --- | --- |
| `perl-version`    | `5.36`                 | Perl version to install |
| `install-modules` | `App::cpanminus`+`Carton` | Bootstrap modules; pass extras for richer workflows |
| `carton-install`  | `true`                 | Run `carton install` after Perl setup |
| `cache-carton`    | `true`                 | Cache `local/` |

### Expected savings

Per workflow run, on cold cache:

- carton install:       ~30–60s
- Perl bootstrap deps:  ~10–15s

Warm cache, typical PR:

- carton install:       ~3–5s (lockfile verification only)
- Perl bootstrap deps:  ~2s (downloaded from cache)

## How `test.yml` runs

The workflow runs the test suite in a matrix of named shards defined
by `script/test-shard`. Each shard runs a subset of `.t` files.

`script/test-shard --verify` asserts that every `.t` file under `t/`
belongs to exactly one shard. `script/test-shard --list` shows what
shards exist and `script/test-shard --files <name>` shows which files
are in a given shard.

The local developer entry point is unchanged: `make test` runs the
whole suite serially. `script/test-shard <name>` runs one CI shard
locally.

## Source-dep refresh

`.github/workflows/refresh-source-deps.yml` keeps the vendored Smithy
IR fresh without manual nudges:

- **`share/smithy/`** + **`share/smithy/.upstream-sha`** — the
  vendored Smithy IR tree produced by `script/paws-vendor-smithy
  --clean` from `awslabs/aws-sdk-rust@main`'s `aws-models/` directory
  at the SHA pinned in `share/smithy/.upstream-sha`. The single
  `bump-smithy-vendor` job re-resolves `main`, rewrites the pin file
  if it has moved, runs the vendor script, and opens a PR with the
  drift.

### Schedule

Daily at `0 4 * * *` (04:00 UTC). The cadence matches upstream's
commit rate without flooding review.

### Manual trigger

`workflow_dispatch` is also wired up:

```
gh workflow run refresh-source-deps.yml --ref master
gh run watch
```

### Lifecycle

When `bump-smithy-vendor` detects an upstream change:

1. Rewrites `share/smithy/.upstream-sha` to the new
   `awslabs/aws-sdk-rust@main` SHA and runs
   `script/paws-vendor-smithy --clean` to regenerate the IR tree.
2. Creates the bump branch
   (`automation/bump-smithy-vendor-<short-upstream-sha>`) and
   force-pushes the commit.
3. Opens (or reuses) a **draft** PR labelled `automated`.
4. Watches the standard `pull_request` workflows on that PR with
   `gh pr checks --watch --interval 30`.
5. On green, marks the PR ready and `gh pr merge --squash --delete-branch`.
6. On red, leaves the PR as draft for the maintainer to investigate.

### `PAWS_BUMP_PAT` secret

GitHub blocks workflows triggered by pushes from the default
`GITHUB_TOKEN` to prevent recursive runs. To get end-to-end
auto-merge, provision a fine-grained PAT with `contents: write` and
`pull-requests: write` scopes on this repository. Save it as
`secrets.PAWS_BUMP_PAT`. The job prefers the PAT and falls back to
`GITHUB_TOKEN`; in fallback mode it leaves the bump PR as draft for
manual handling.

### Disabling temporarily

Two options:

1. **Comment out the cron line** in the workflow file.
   `workflow_dispatch` stays available for manual nudges.
2. **Disable the workflow in the GitHub UI** under Actions →
   refresh-source-deps → ⋯ → Disable workflow.

## GitHub Releases asset limits

GitHub imposes a hard limit of **1000 assets per release**. Each
release uploads one `Paws-Core` tarball plus two per service (code
dist + docs dist):

```
total_assets = 1 + 2 * service_count
```

### Current utilisation

| Metric | Value |
| --- | --- |
| Service count | ~306 |
| Total assets | ~613 |
| GitHub limit | 1000 |
| Utilisation | ~61% |

At the current AWS service launch rate (~10/year), the 1000-asset
ceiling will not be reached before ~2040. If needed, split the release
across multiple GitHub Releases or move large assets to a separate
distribution channel.

## Where to look when something breaks

| Symptom | Look at |
| --- | --- |
| CI cache feels stale | Bump the `key:` prefix in `.github/actions/setup-paws-perl/action.yml` to invalidate; or delete via the GitHub UI under Actions → Caches |
| Test fixture expectation no longer matches AWS | `t/10_responses/*.response.test.yml` — mark as `todo:` if the upstream shape has drifted |

## Vendored endpoint metadata

`etc/_endpoints.json` is a snapshot of the legacy botocore
`_endpoints.json` endpoint rules. It encodes the special-case region
rules that several `t/12_regions.t` assertions depend on (e.g. `iam`,
`route53`, `cloudfront` global hostnames, `s3` us-east-1).
