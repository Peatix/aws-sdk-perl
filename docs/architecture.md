# Paws architecture

Navigation document for contributors. Points at the code rather than
duplicating it.

For the user-facing install pattern and the build-time materialisation
workflow, see `docs/materialisation.md`.

## High-level shape

```
                    ┌──────────────────────┐
smithy IR ──────────►  Paws::Model::Loader │──► Paws::Model::IR ──► …
                    │   (loader interface)  │                        │
                    └──────────────────────┘                        ▼
                                                      ┌───────────────────────────────┐
                                                      │  Paws::Model::Materializer    │
                                                      │  ::Moo                        │
                                                      │  (Moo + Type::Tiny class      │
                                                      │   construction from IR)        │
                                                      └───────────────────────────────┘

                                                                  │
                                                                  ▼
                                                      ┌───────────────────────────────┐
                                                      │  Pre-materialised             │
                                                      │  Paws::<Service>::* classes   │
                                                      │  (shipped in per-service      │
                                                      │   sub-dist tarballs)          │
                                                      └───────────────────────────────┘

                                                                  │
                                                                  ▼
                                                      ┌───────────────────────────────┐
                                                      │  lib/Paws/Net/*               │
                                                      │  (handwritten wire layer:     │
                                                      │   per-protocol callers,       │
                                                      │   signers, transports,        │
                                                      │   response decoders)          │
                                                      └───────────────────────────────┘
```

## Where things live

| Path                                              | Purpose                                                                  |
|---------------------------------------------------|--------------------------------------------------------------------------|
| `share/smithy/`                                   | Vendored Smithy IR tracked in git. Input to the build pipeline; not shipped to end users. |
| `lib/Paws/Model/IR.pm`                            | Source-format-independent IR. Contract between loaders and consumers.    |
| `lib/Paws/Model/Loader.pm`                        | Abstract loader role.                                                    |
| `lib/Paws/Model/Loader/Smithy.pm`                 | Smithy 2.0 AST JSON → IR.                                                |
| `lib/Paws/Model/Loader/Botocore.pm`               | Botocore JSON → IR. Available for deprecated services only.              |
| `lib/Paws/Model/Loader/Resolver.pm`               | Picks the loader per service. Defaults to Smithy-only.                   |
| `lib/Paws/Model/Materializer.pm`                  | Moose backend (escape hatch via `PAWS_OO_BACKEND=Moose`).               |
| `lib/Paws/Model/Materializer/Moo.pm`              | Moo + Type::Tiny backend (default). Used by the build pipeline.          |
| `builder-lib/Paws/API/Builder.pm`                 | Legacy TT-template AOT generator. Retained for reference; not used in the current build pipeline. |
| `builder-bin/gen_classes.pl`                       | Legacy CLI driver for the TT generator.                                  |
| `templates/`                                      | TT templates per protocol family (`json/`, `restjson/`, `query/`, `restxml/`, `EC2/`, `Kinesis/`, `default/`). |
| `lib/Paws.pm`                                     | Top-level entry. `Paws->service('EC2')` etc.                             |
| `lib/Paws/API/`                                   | Caller, EndpointResolver, Response, MapParser, attribute traits.         |
| `lib/Paws/API.pm`                                 | The seven attribute-trait packages (NameInRequest, ParamInHeader, etc.). |
| `lib/Paws/Net/*Caller.pm`                         | Per-protocol request shaping: `JsonCaller`, `RestJsonCaller`, `QueryCaller`, `RestXmlCaller`, `EC2Caller`, `GlacierCaller`. |
| `lib/Paws/Net/*Response.pm`                       | Per-protocol response decoding.                                          |
| `lib/Paws/Net/{LWP,Furl,MojoAsync}Caller.pm`      | Pluggable HTTP transports.                                               |
| `lib/Paws/Net/V*Signature.pm`                     | Signer roles.                                                            |
| `lib/Paws/Credential*.pm`                         | Credential providers.                                                    |
| `lib/Paws/SerDes.pm`                              | Per-class serialisation metadata side-table for the wire layer.          |
| `script/build-modular-dist`                       | Builds a per-service code sub-dist tarball from the Smithy IR.           |
| `script/build-modular-docs-dist`                  | Builds a per-service POD companion sub-dist tarball.                     |
| `script/build-all-modular`                        | Orchestrator that builds all service + docs tarballs.                    |

## Distribution layout

Paws ships as modular sub-distributions:

- **`Paws-Core`** — slim runtime: `lib/Paws.pm`, `lib/Paws/Net/*`,
  `lib/Paws/Credential/*`, `lib/Paws/API/*`, `lib/Paws/SerDes.pm`,
  exception types. Does NOT include the materialiser, loaders, IR
  constructor classes, or `share/smithy/`.
- **`Paws-<Service>`** (~300+ dists) — pre-materialised `lib/Paws/<Service>/*.pm`
  files, one dist per AWS service. Declares `Paws::Core` as a dependency.
- **`Paws-<Service>-Docs`** — optional POD companion. `perldoc Paws::S3::CreateBucket`
  resolves when this is installed.

The materialiser, loaders, and Smithy IR live on `master` as build-time
tooling. They are excluded from every user-facing dist via `dist.ini`
`Git::GatherDir` excludes. `script/build-modular-dist` loads them at
build time, runs `Materializer::Moo` to dump `.pm` source files, and
packages the result into per-service tarballs.

## Data flow

1. `script/paws-vendor-smithy --clean` refreshes `share/smithy/` from
   upstream `awslabs/aws-sdk-rust:aws-models/`. The committed tree is
   the build-time source of truth.
2. `script/build-modular-dist <Service>` loads the Smithy IR via
   `Paws::Model::Loader::Resolver`, drives `Materializer::Moo` to
   dump per-class `.pm` source files, and packages them into a
   `Paws-<Service>-<version>.tar.gz` tarball.
3. End users install `Paws-Core` plus whichever `Paws-<Service>`
   tarballs they need from GitHub Releases.
4. `Paws->service('EC2')` calls `Paws->load_class('Paws::EC2')`,
   which is a thin wrapper around `Module::Runtime::require_module`.
   If the class is not installed, the standard Perl
   `Can't locate Paws/EC2.pm in @INC` error fires.
5. Operation method calls go through `Paws::API::Caller->do_call`,
   which dispatches to the protocol caller in `lib/Paws/Net/`.
   The wire layer reads per-class metadata from `Paws::SerDes`.

## Companion files not (yet) absorbed into IR

The Smithy source files carry most of what the IR needs. Fields not
yet folded in (event streams, mixins, resource shapes, document type)
are added incrementally as the wire layer grows support.

## See also

- `docs/materialisation.md` — how the build pipeline produces per-service dists.
- `docs/loaders.md` — loader interface and IR coverage table.
- `docs/sources.md` — Smithy IR layout and refresh workflow.
- `docs/serdes.md` — wire-layer side-table.
- `docs/oo-backends.md` — Moose vs Moo tradeoffs.
- `docs/ci.md` — CI workflow design.
- `docs/testing.md` — test suite navigation.
