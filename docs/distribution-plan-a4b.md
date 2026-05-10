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
| `lib/Paws/Model/*` | Loader (Resolver, Smithy, Botocore), IR, **Materializer + Materializer::Moo + Materializer::Auto** (see §7 Q9 — possibly moved to a separate companion). |
| `lib/Paws/SerDes.pm` | Side-table that the wire layer reads (post-stack-12). |
| `lib/Paws/Exception.pm` | Standard exception class. |
| `bin/paws-migrate-cpanfile` | One-time migration helper for users moving from the old monolithic `Paws@1.00` install (see §5). |

**Not** in `Paws::Core`:

- `share/smithy/` — IR is consumed only by the build pipeline, not
  shipped to end users. Build-time only.
- Any `Paws::<Service>` or `Paws::<Service>::*` classes. Those live
  in their per-service sub-dists.

Approximate size, measured against the existing local install minus
`share/smithy/` (issue #87 prototype): **~1.7 MB installed, ~668 KB
tarball**. 11 packages of materialiser/loader code are ~120 KB of
those 1.7 MB; their fate is open question Q9 (keep, move, drop).

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

### 2.5 Build-time-only modules

The materialiser, loaders, and IR (`lib/Paws/Model/Materializer*`,
`lib/Paws/Model/Loader/*`, `lib/Paws/Model/IR.pm`) are referenced
both at build time (per-service dist generation) and at runtime
(for hybrid users who want to extend). Their final placement is
open question Q9:

- **Option A** — keep in `Paws::Core`. Cost: ~120 KB of code that
  runtime A4-B users do not exercise. Benefit: hybrid users (drop
  their own `share/smithy/<svc>/` somewhere) get on-demand
  materialisation via the existing `_class_on_disk` → fallback path.
- **Option B** — move to a separate `Paws::Materializer` companion
  dist. Cost: +1 dist on GH Releases. Benefit: minimum-base Core stays
  minimum.
- **Option C** — drop entirely from any user-facing dist (build-time
  only, never installed). Cost: hybrid mode is unreachable without
  re-installing the build pipeline. Benefit: simplest mental model.

Decide during Phase 3 (Paws::Core slimming).

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
4. POD-strip step (Q11 — `Pod::Strip` from CPAN, ~30 line Build.PL
   hook OR materialiser-side emission of POD-less source).
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

### 5.3 Announcement: `ANNOUNCE-1.0.0.md`

Committed at the repo root. Three sections:

1. What's changing (per §5.1).
2. How to migrate (link to `bin/paws-migrate-cpanfile` + a worked
   example for a small app).
3. Why we're doing this (link to issue #87).

Pushed to relevant channels alongside the v1.0.0 release: PrePAN
note, blogs.perl.org, the existing GH Discussions board.

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
| **1** | Build tooling | `script/build-modular-dist` + `script/build-modular-docs-dist` + `script/build-all-modular`. CI matrix smoke-tests building 3-5 services and asserts tarball roundtrip via `cpanm` install + `examples/smoke.pl`. **No release artefacts yet, no GH workflow yet.** | 1-2 weeks |
| **2** | CI workflow | `.github/workflows/release-modular.yml`. Cut a `v1.0.0-rc1` GH release, manually upload tarballs from a local `script/build-all-modular` run (or run the workflow once and verify). **Manually verify a couple installs.** | 1 week |
| **3** | Paws::Core slimming | Strip `share/smithy/` and any service classes from Paws::Core. Update `dist.ini` to ship only Core. Decide Q9 (materialiser placement) at this point. Cut `v1.0.0-rc2` with the slimmed Core + the modular sub-dists from rc1. | 1 week |
| **4** | Migration tooling + announcement | `bin/paws-migrate-cpanfile`, `ANNOUNCE-1.0.0.md`, README update, docs cross-links. | 1 week |
| **5** | `v1.0.0` release | Tag `v1.0.0`, publish GH release, push announcement to PrePAN / blogs.perl.org / GH Discussions. | A few days |
| **6 (optional)** | DarkPAN mirror | OrePAN2 + GH Pages workflow, per #87's "GH-Releases-as-primary mechanism" section. **Only if direct-URL pain becomes real.** | 1 week |

Each phase opens as a draft PR; user reviews and merges before the
next phase starts. CI gates on the PR are the existing test +
install-smoke + benchmarks workflows, plus any new build-pipeline
tests Phase 1 introduces.

## 7. Open questions deferred to during-implementation

These are decisions that depend on data we don't have yet (or
decisions whose cost is small enough that we should defer them
until they're concretely blocking).

- **Q9** (#87 carryover) — **Materialiser placement in IR-stripped
  Core.** Decide during Phase 3. Three options laid out in §2.5.
- **Q11** (#87 carryover) — **POD-stripping mechanism.** Decide during
  Phase 1 when wiring `script/build-modular-dist`. Either
  `Pod::Strip` post-process (~30 line Build.PL hook) or
  materialiser-side emission of POD-less source (cleaner, requires
  modifying `Materializer::Moo`'s string templates).
- **Cross-service shared shapes audit.** #87 noted "if there are
  ~10 shared-shape sub-dists" as an open count. Audit during
  Phase 1: walk the materialiser's per-service output and
  count distinct cross-references. If >0:
  - Option A (simpler): duplicate the shape per-service (~KB cost).
  - Option B (cleaner): extract to `Paws::Util::<Shape>` companion
    dists with their own version. One extra dep per affected dist.
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
