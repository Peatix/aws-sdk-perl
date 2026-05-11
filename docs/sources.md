# Service description sources

`Paws` consumes machine-readable service descriptions from a single
on-disk location, shipped in the dist under `share/`:

| Path                  | Format                            | Loader                            |
|-----------------------|-----------------------------------|-----------------------------------|
| `share/smithy/`       | Smithy 2.0 AST JSON               | `Paws::Model::Loader::Smithy`     |

`Paws::Model::Loader::Resolver` resolves services via Smithy only.
See `docs/deprecated-services.md` for the deprecated-service list
and migration paths.

## Refreshing the vendored sources

```
# Smithy IR (the runtime source of truth):
script/paws-vendor-smithy --clean

# Or for a single service:
script/paws-vendor-smithy --service iam
```

The Smithy refresh script vendors from
`https://github.com/awslabs/aws-sdk-rust/tree/main/aws-models` at
the SHA pinned in `share/smithy/.upstream-sha`. Pass `--source <path>`
to vendor from a local checkout, `--sha <sha>` to override the pin
without touching the file.

The vendored `.smithy.json` files are tracked in git; `make dist`
ships them as-is. Bumping the pin and committing the regenerated
tree is the supported refresh workflow:

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

## Why the change from a submodule to vendored Smithy

Pre-stack18, `Paws` consumed service models via a `git submodule`.
That was removed and the runtime materialiser now reads vendored
Smithy IR; this stack (smithy-only-vendor-into-git) finished the
cut-over by tracking the .smithy.json files in git (committed and
diff-reviewable per change).

Reasons for going Smithy-only at the runtime layer:

- Smithy is the AWS-internal source of truth going forward.
- Smithy carries full service coverage: every non-deprecated AWS
  service Paws ships, plus 33 additional services (~14 useful new
  public ones, see `docs/deprecated-services.md`).
- The 14 services that have no Smithy model are all
  AWS-deprecated/end-of-life services. None are losses in practice.

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

`Paws-Docs` (separate dist; see `docs/paws-docs.md`) ships per-shape
POD pages built from the same vendored sources. Both should be
released together so docs and runtime never drift.

## See also

- `docs/loaders.md` — IR contract + loader field coverage.
- `docs/deprecated-services.md` — the 14 AWS-retired services that
  Paws can no longer ship and the migration path for each.
- `docs/materialisation.md` — when to re-materialise a single service
  AOT (`script/gen-service`) vs. let the runtime materialiser build
  classes from these sources in memory.
