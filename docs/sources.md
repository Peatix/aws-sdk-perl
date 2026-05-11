# Service description sources

The build pipeline consumes machine-readable service descriptions from
a single on-disk location under `share/`:

| Path                  | Format                            | Loader                            |
|-----------------------|-----------------------------------|-----------------------------------|
| `share/smithy/`       | Smithy 2.0 AST JSON               | `Paws::Model::Loader::Smithy`     |

`Paws::Model::Loader::Resolver` resolves services via Smithy only.
See `docs/deprecated-services.md` for the deprecated-service list
and migration paths.

The Smithy IR files are inputs to `script/build-modular-dist` and the
`release-modular.yml` CI workflow. They are NOT shipped to end users
in `Paws-Core` or in any per-service sub-dist. End users see only the
pre-materialised `lib/Paws/<Service>/*.pm` files inside each
`Paws-<Service>` sub-dist.

## Refreshing the vendored sources

```
# Full refresh (the build-time source of truth):
script/paws-vendor-smithy --clean

# Single service:
script/paws-vendor-smithy --service iam
```

The Smithy refresh script vendors from
`https://github.com/awslabs/aws-sdk-rust/tree/main/aws-models` at
the SHA pinned in `share/smithy/.upstream-sha`. Pass `--source <path>`
to vendor from a local checkout, `--sha <sha>` to override the pin
without touching the file.

The vendored `.smithy.json` files are tracked in git. Bumping the pin
and committing the regenerated tree is the supported refresh workflow:

```
1. Edit share/smithy/.upstream-sha to the desired
   awslabs/aws-sdk-rust commit SHA.
2. make vendor-smithy
3. git diff --stat share/smithy/   # sanity-check scope
4. git add share/smithy && git commit
```

The `.github/workflows/refresh-source-deps.yml` workflow runs this
on a daily schedule and opens a draft PR with the regenerated tree
whenever upstream moves.

## The Paws-class-name → Smithy-file mapping

Paws service class names (`Paws::ApiGateway`, `Paws::DMS`,
`Paws::EventBridge`) do not always match the Smithy file basename
under `share/smithy/`. The
`%Paws::Model::Loader::Resolver::PAWS_TO_SMITHY` hash is the
authoritative map; `lc(class)` is the fallback for the ~217 cases
where the names line up directly.

The map covers two flavours of mismatch:

- **Cosmetic separator differences** (~144 entries). The Smithy
  basename is the dash-separated lowercase form of the sdkId
  (`ApiGateway` → `api-gateway`, `CloudHSMv2` → `cloudhsm-v2`).
  Mechanical but not derivable from `lc($class)` alone — `ACMPCA`
  maps to `acm-pca`, not `acmpca`.
- **Substantive renames** (27 entries). AWS retired the legacy
  short name in favour of a longer one in the Smithy SDK:
  `Config` → `config-service`, `DMS` →
  `database-migration-service`, `StepFunctions` → `sfn`, `ELB` →
  `elastic-load-balancing`, `SDB` → `simpledbv2`, ...

Plus the `events` ambiguity: Smithy ships two service shapes for
the `events` endpoint, `eventbridge` (modern, more complete) and
`cloudwatch-events` (legacy alias). `Paws::EventBridge` resolves
to the modern model; the existing `Paws::CloudWatchEvents`
continues to resolve to the legacy file so user code that still
spells the older name keeps working.

## Companion: per-shape POD

`Paws-<Service>-Docs` (separate dist; see `docs/paws-docs.md`) ships
per-shape POD pages built from the same vendored sources. Both should
be released together so docs and runtime never drift.

## See also

- `docs/loaders.md` — IR contract + loader field coverage.
- `docs/deprecated-services.md` — the 14 AWS-retired services that
  Paws can no longer ship and the migration path for each.
- `docs/materialisation.md` — how the build pipeline turns these
  sources into per-service sub-dist tarballs.
