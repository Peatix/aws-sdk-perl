# Service description sources

`Paws` consumes machine-readable service descriptions from two
on-disk locations, both shipped in the dist under `share/`:

| Path                  | Format                            | Loader                            |
|-----------------------|-----------------------------------|-----------------------------------|
| `share/smithy/`       | Smithy 2.0 AST JSON               | `Paws::Model::Loader::Smithy`     |
| `share/botocore/`     | botocore `service-2.json` (+sib.) | `Paws::Model::Loader::Botocore`   |

`Paws::Model::Loader::Resolver` checks Smithy first, falls back to
botocore. `PAWS_LOADER_ORDER=Botocore,Smithy` overrides for users who
hit a Smithy-side regression on a specific service.

## Refreshing the vendored sources

```
# Smithy IR (vast majority of services):
script/paws-vendor-smithy --clean

# Or for a single service:
script/paws-vendor-smithy --service IAM
```

The Smithy refresh script vendors from
`https://github.com/awslabs/aws-sdk-rust/tree/main/aws-models` by
default. Pass `--source <path>` to vendor from a local checkout.

The `share/botocore/` tree is populated from the upstream botocore
repository for any service that doesn't have a Smithy IR equivalent.
A small set of services still need this fallback today; see the
TODO list in `docs/architecture.md`.

## Why the change from a submodule

Pre-stack18, `Paws` consumed botocore via a `git submodule` at
`botocore/`. PR 18 of the maintenance-reduction stack removed that
submodule because:

- Submodules complicate the contributor workflow (init/update steps,
  pinning vs upstream drift).
- The dist couldn't ship submodule contents directly; the AOT
  generator had to be run before each release.
- Smithy is the AWS-internal source of truth going forward; pinning
  to botocore (which is being phased out) was a maintenance
  liability.

After PR 18, contributors run `script/paws-vendor-smithy` to refresh,
and the resulting `.json` files in `share/` ship in the dist. No
submodule, no JVM-based smithy build at install time.

## Companion: per-shape POD

`Paws-Docs` (separate dist; see `docs/paws-docs.md`) ships per-shape
POD pages built from the same vendored sources. Both should be
released together so docs and runtime never drift.
