# Materialising Paws services

How `Paws::<Service>` classes are produced — and how the build pipeline
turns Smithy IR into the per-service sub-dist tarballs that end users
install.

This doc is navigation. Implementation details live in
`docs/architecture.md`, `docs/loaders.md`, `docs/oo-backends.md`,
`docs/serdes.md`, `docs/sources.md`, and `docs/ci.md`.

## How it works

The build pipeline runs `Paws::Model::Materializer::Moo` at **build
time** against the vendored Smithy IR in `share/smithy/`. For each
service:

1. `script/build-modular-dist <Service>` resolves the Smithy basename
   via `Paws::Model::Loader::Resolver`.
2. The loader reads the `.smithy.json` file and produces a
   `Paws::Model::IR::Service`.
3. `Materializer::Moo` constructs the service class, every operation
   class, and every transitively-reachable shape class — then dumps
   the source to `lib/Paws/<Service>/*.pm` inside a per-service build
   tree.
4. The result is packaged into `Paws-<Service>-<version>.tar.gz`.

End users install these pre-materialised tarballs. There is no runtime
materialisation — `Paws->load_class` is a thin wrapper around
`Module::Runtime::require_module`. A missing service class produces the
standard Perl `Can't locate Paws/<Svc>.pm in @INC` error, which signals
the user to install the relevant `Paws-<Service>` sub-dist.

## Building a single service locally

```
script/build-modular-dist S3
```

Output: `dist/Paws-S3-<version>.tar.gz`.

## Building all services

```
script/build-all-modular
```

Iterates over every service in `share/smithy/` (minus those in
`%PAWS_DROPPED_SERVICES`) and produces code + docs tarballs for each.

## OO backend selection

The materialiser defaults to the Moo + Type::Tiny backend
(`Paws::Model::Materializer::Moo`). Set `PAWS_OO_BACKEND=Moose` to
use the Moose backend (`Paws::Model::Materializer`) instead. Both
produce classes with the same API surface and populate the same
`Paws::SerDes` side-table. See `docs/oo-backends.md` for the type
mapping and tradeoffs.

## Debugging a materialisation issue

When a service class doesn't behave as expected:

1. **Construct the service from IR directly** in a one-off script:

   ```perl
   use Paws::Model::Loader::Resolver;
   use Paws::Model::Materializer::Moo;

   my ($ir, $loader) = Paws::Model::Loader::Resolver->new->load_service('EC2');
   my $mat = Paws::Model::Materializer::Moo->new(loader => undef);
   $mat->materialize_service($ir);

   say Paws::SerDes->for('Paws::EC2::DescribeInstances')->serializable_attributes;
   ```

2. **Inspect the pre-materialised `.pm` file** from the built sub-dist.
   The file is plain Moo source with attribute declarations, `_api_call`,
   `_returns`, etc.

3. **Switch OO backend.** `PAWS_OO_BACKEND=Moose` uses the Moose
   materialiser, which can help narrow whether a bug is Moo-specific.

## See also

- `docs/architecture.md` — the data flow and where each module lives.
- `docs/loaders.md` — Smithy loader and IR coverage table.
- `docs/sources.md` — the vendored Smithy IR layout and refresh workflow.
- `docs/deprecated-services.md` — the 14 botocore-only services
  Paws can no longer ship and the migration paths.
- `docs/oo-backends.md` — Moose vs Moo + Type::Tiny tradeoffs.
- `docs/serdes.md` — the wire-layer side-table both backends populate.
- `docs/testing.md` — test suite navigation.
- `docs/ci.md` — build-modular-smoke workflow and release pipeline.
- `docs/paws-docs.md` — companion `Paws-<Service>-Docs` dists for
  per-shape POD.
