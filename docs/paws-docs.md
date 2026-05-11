# Paws-<Service>-Docs companion distributions

Per-service documentation dists that ship per-shape POD pages. When
installed, `perldoc Paws::EC2::Instance` resolves to the `.pod` file
in the companion dist; the runtime class lives in the corresponding
`Paws-<Service>` code dist.

## What's in each dist

`Paws-<Service>-Docs` is pure POD. After
`cpanm Paws-S3-Docs-<version>.tar.gz` users get one `.pod` file per
Paws shape under `lib/Paws/<Service>/<Shape>.pod`.

## How the dists are built

```
script/build-modular-docs-dist S3
```

Internally:

1. `script/build-modular-docs-dist` walks the service's IR via
   `Paws::Model::Loader::Resolver` (Smithy in `share/smithy/`).
2. For each shape it renders POD using the same conventions the
   legacy AOT generator emitted (`=head1 NAME` + DESCRIPTION +
   ATTRIBUTES + SEE ALSO).
3. Output goes to `lib/Paws/<Service>/<Shape>.pod` inside the
   per-service build tree.
4. The result is packaged into `Paws-<Service>-Docs-<version>.tar.gz`.

To build all docs dists at once:

```
script/build-all-modular
```

## Coupling with the code dist

Each `Paws-<Service>-Docs` dist declares `requires Paws::<Service>`
at the same version. Both should be released together so docs and
runtime never drift. The `release-modular.yml` CI workflow builds
and uploads code + docs tarballs for every service in a single
release.

## User ergonomics

```bash
# Shipping environment (no docs):
cpanm Paws-S3-<version>.tar.gz
# perldoc Paws::S3::CreateBucket → "No documentation found"

# Developer environment (with docs):
cpanm Paws-S3-<version>.tar.gz Paws-S3-Docs-<version>.tar.gz
# perldoc Paws::S3::CreateBucket → renders the POD
```

## Why a separate dist

- Keeps the code dist small.
- POD changes don't force a runtime release (and vice versa)
  unless behaviour changed too.
- Lets docs roll out at a different cadence if needed.

## Caveats

- Per-shape `.pod` files install into a sibling distribution's
  namespace. CPAN allows this; `perldoc` resolution uses `@INC`
  search order.
