# Paws architecture

Navigation document for contributors. Points at the code rather than
duplicating it.

For the user-facing "when do I bundle vs. let the materialiser handle
it" question and the single-service AOT regen workflow, see
`docs/materialisation.md`.

> **Direction note (2026-05-10)**: this document describes the
> current single-dist + on-demand-materialiser architecture. The
> project has chosen to move to per-service modular sub-dists with
> build-time materialisation (A4-B per
> [issue #87](https://github.com/Peatix/aws-sdk-perl/issues/87)).
> See `docs/distribution-plan-a4b.md` for the implementation
> roadmap. This document will be updated when the plan's Phase 4
> (documentation update) lands.

## High-level shape

```
            ┌──────────────────────┐
botocore ───►                      │
            │  Paws::Model::Loader │──► Paws::Model::IR ──► …
smithy ─────►   (loader interface) │                        │
            └──────────────────────┘                        ▼
                                              ┌───────────────────────────────┐
                                              │  Paws::API::Builder           │
                                              │  (TT-template-driven AOT      │
                                              │   class generation, today)    │
                                              │                               │
                                              │  Paws::Materializer           │
                                              │  (in-memory class             │
                                              │   construction, PR9 onwards)  │
                                              └───────────────────────────────┘

                                                          │
                                                          ▼
                                              ┌───────────────────────────────┐
                                              │  Generated/materialised       │
                                              │  Paws::<Service>::* classes   │
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
| `share/smithy/`                                   | Vendored Smithy IR (post-#83). Tracked in git, ships in the dist via `[ShareDir]`. The resolver's only on-disk source. |
| `etc/botocore-pin.sha`                            | Pinned botocore SHA the AOT-generator workflows check out at build time. CI-only marker; not part of the runtime dist. |
| `lib/Paws/Model/IR.pm`                            | Source-format-independent IR. Contract between loaders and consumers.    |
| `lib/Paws/Model/Loader.pm`                        | Abstract loader role.                                                    |
| `lib/Paws/Model/Loader/Botocore.pm`               | Botocore JSON → IR.                                                      |
| `lib/Paws/Model/Loader/Smithy.pm`                 | Smithy 2.0 AST JSON → IR.                                                |
| `lib/Paws/Model/Loader/Resolver.pm`               | Picks the loader (Smithy first, botocore fallback) per service.          |
| `lib/Paws/Model/Materializer.pm`                  | Moose backend: builds Paws::&lt;Svc&gt;/&lt;Op&gt;/&lt;Shape&gt; classes in-memory from IR. |
| `lib/Paws/Model/Materializer/Moo.pm`              | Moo + Type::Tiny backend (default since stack13).                        |
| `lib/Paws/Model/Materializer/Auto.pm`             | Hook that intercepts `Paws->load_class` to drive the materialiser.       |
| `builder-lib/Paws/API/Builder.pm`                 | Legacy TT-template AOT generator. Stack19 made `make gen-classes` a no-op; remains in builder-lib for any downstream rebuild + as a reference for future stack20 work. |
| `builder-bin/gen_classes.pl`                      | Legacy CLI driver. Now a no-op via `make gen-classes`.                   |
| `templates/`                                      | TT templates per protocol family (`json/`, `restjson/`, `query/`, `restxml/`, `EC2/`, `Kinesis/`, `default/`). |
| `lib/Paws.pm`                                     | Top-level entry. `Paws->service('EC2')` etc.                             |
| `lib/Paws/API/`                                   | Caller, EndpointResolver, Response, MapParser, attribute traits.         |
| `lib/Paws/API.pm`                                 | The seven attribute-trait packages (NameInRequest, ParamInHeader, etc.). |
| `lib/Paws/Net/*Caller.pm`                         | Per-protocol request shaping: `JsonCaller`, `RestJsonCaller`, `QueryCaller`, `RestXmlCaller`, `EC2Caller`, `GlacierCaller`. |
| `lib/Paws/Net/*Response.pm`                       | Per-protocol response decoding.                                          |
| `lib/Paws/Net/{LWP,Furl,MojoAsync}Caller.pm`      | Pluggable HTTP transports.                                               |
| `lib/Paws/Net/V*Signature.pm`                     | Signer roles.                                                            |
| `lib/Paws/Credential*.pm`                         | Credential providers.                                                    |

## Data flow (post-stack19)

1. `make vendor-smithy` refreshes `share/smithy/` from the
   upstream Smithy IR (`awslabs/aws-sdk-rust:aws-models/`). The
   committed tree is the runtime source-of-truth. The botocore
   loader stays in `lib/Paws/Model/Loader/Botocore.pm` as a
   `PAWS_LOADER_ORDER=Botocore,Smithy` escape hatch but is not on
   disk for `cpanm`-installed users; CI workflows that need
   botocore JSON for the AOT generator fetch it on the fly using
   the pin in `etc/botocore-pin.sha`.
2. End users `cpanm Paws`; the dist ships `lib/`, `share/`, the
   metadata files, and **no auto-lib/**. Dist size dropped from
   ~224 MB to under 100 MB at stack19.
3. `Paws->service('EC2')` calls `Paws->load_class('Paws::EC2')`.
4. `Paws::load_class` checks if `Paws/EC2.pm` is on disk (the
   migration window of PR18 — currently always false now that
   stack19 dropped auto-lib/, except for the handful of
   handwritten services like `Paws::Signin`).
5. Falling through, `_materialise_class('Paws::EC2')` resolves the
   service via `Paws::Model::Loader::Resolver` (Smithy-only by
   default since #83; `PAWS_LOADER_ORDER=Botocore,Smithy` to opt
   back into botocore for deprecated services), then drives the
   in-memory class construction via `Paws::Model::Materializer::Moo`
   (default since stack13) or `Paws::Model::Materializer` (Moose,
   opt-in via `PAWS_OO_BACKEND=Moose`).
6. The materialiser builds the service class plus every operation
   class plus every transitively-reachable shape class in one go
   and registers their wire metadata into the `Paws::SerDes`
   side-table that the wire layer consults.
7. Operation method calls go through `Paws::API::Caller->do_call`,
   which dispatches to the protocol caller in `lib/Paws/Net/`.
   The wire layer is unchanged from the user's perspective.

The legacy AOT generator (`make gen-classes` / `gen_classes.pl` /
`Paws::API::Builder`) is preserved in `builder-lib/` + `builder-bin/`
but is wired through to a no-op makefile target so muscle-memory
invocations get a "use vendor-smithy instead" message. A future
stack20-and-beyond work item is to refactor the builder to consume
IR exclusively (it currently reads `api_struct->{shapes}` directly)
so the AOT and materialiser paths share one source of truth -- but
that is not a stack19 deliverable.

## Stack19 status

Context (master, post-#83 / smithy-only-vendor-into-git):

  - The botocore submodule is gone (PR 18 / stack18). Smithy IR
    vendored from `awslabs/aws-sdk-rust:aws-models/` lives at
    `share/smithy/`, tracked in git.
  - `make gen-classes` is no longer the runtime path; the
    materialiser reads `share/smithy/` directly via
    `Paws::Model::Loader::Smithy`. The AOT generator
    (`builder-bin/gen_classes.pl`) is still maintained as a
    contributor tool, fed by an on-the-fly botocore checkout at
    the SHA in `etc/botocore-pin.sha`.
  - `Paws->service('EC2')` calls `Paws::Model::Materializer->materialize_service('EC2')`,
    which reads the JSON via the appropriate `Paws::Model::Loader::*`
    and constructs the Moose (later: Moo) classes in-memory.
  - The wire layer is unchanged from the user's perspective, but its
    internals consult a side-table built by the materialiser instead
    of introspecting Moose meta-classes.

Landed (this PR):

  - `auto-lib/` removed from git; `auto-lib/Paws.pm` and
    `auto-lib/Paws/API/Retry.pm` moved to `lib/`. `Paws::Model::*`
    runtime modules (IR, Loader, Loader::Botocore,
    Loader::Smithy, Loader::Resolver) moved from `builder-lib/`
    to `lib/` so they ship in the dist.
  - `our $VERSION` bumped to `'1.00'`; `Changes` carries a
    `1.00 (TRIAL)` headline with the breaking-change note for
    users who imported a generated class by full path.
  - `Paws->new_with_coercions` handles both Moose-style
    (`Foo::Bar`) and Type::Tiny-style (`InstanceOf["Foo::Bar"]`)
    type-constraint stringification by branching on the type-
    constraint *object* (`->class` / `->type_parameter->class`)
    where possible, with an `_unwrap_class_from_type_string`
    fallback for any other parameterised type whose
    stringification looks like `InstanceOf[X]`.
  - The materialiser dedup hash in `_materialise_class` and
    `Paws::Model::Materializer::Auto::_materialise` collapses to
    a single `$service_class->can('operations')` introspection
    check shared by both entry points.
  - Three concrete materialiser fixes surfaced by walking
    `Paws->available_services` through `preload_service`:
    self-referential shape recursion, whitespace in serviceId
    (Route 53), and reserved-name attribute collisions
    (ECS::CreatedAt::after).
  - `Paws->available_services` unions Module::Find with the
    resolver's directory-walk so the materialiser path enumerates
    every service that ships in `share/`.
  - `Makefile`, `dist.ini`, `script/test-shard`, and the test
    workflow YAML drop the auto-lib build pipeline (PR #69 +
    PR #70 fan-out is gone).
  - The `templates/default/paws_pm.tt` template is in sync with
    the runtime `lib/Paws.pm`.

Curated test scope (post-stack19):

  - `t/01_load.t`, `t/02`, `t/04`, `t/13`, `t/14`, `t/15`-`t/16`,
    `t/19`, `t/20`-`t/23`, `t/29`-`t/31`, plus `t/types`,
    `t/wire`, `t/model` are gated by the matrix-shard test
    workflow.
  - `t/03`, `t/05`, `t/06`, `t/10`, `t/11`, `t/12`, `t/17`,
    `t/18`, `t/24`, `t/25`, `t/26`, `t/27`, `t/28`, plus
    `t/glacier`, `t/route53`, `t/s3` are intentionally excluded
    until follow-up materialiser work covers their dependencies
    (region_rules / endpoint-rule-set, real-AWS shape coercion
    breadth, s3-specific quirks, MojoAsyncCaller integration).
    See `script/test-shard` header for the full table.

See `docs/testing.md` for how each gate runs.

## PR15 status

PR15 adds `builder-lib/Paws/Model/Loader/Resolver.pm`. Given a service
name, the resolver walks the configured search paths and returns the
IR produced by the first loader that finds a matching source file.

Default order:

  1. **Smithy** — `share/smithy/<service>.smithy.json` (flat) or
     `share/smithy/<service>/<service>.smithy.json` (nested).
  2. **Botocore** — `botocore/botocore/data/<service>/<date>/service-2.json`,
     newest dated subdirectory.

Override per process via `PAWS_LOADER_ORDER=Botocore,Smithy`. The
resolver returns both the IR and the loader name it used, so
diagnostics can record which source-of-truth produced a given class.

`t/model/04_resolver.t` covers: default order picks Smithy when both
exist; env override flips it; falls back when first loader has no
file; unknown service raises; unknown loader name raises.

## PR14 status

PR14 adds `builder-lib/Paws/Model/Loader/Smithy.pm`: a peer to the
Botocore loader that reads Smithy 2.0 AST JSON. Same IR contract.

`t/model/03_smithy_loader.t` includes an IR-parity subtest that
loads the tinyservice fixture from both formats and asserts the
relevant IR fields match (operation HTTP method/URI, member
locations, etc.). This is the gate that PR15 uses to switch the
default resolver to "prefer Smithy when both exist".

See `docs/loaders.md` for the per-loader IR field table.

## PR12 status

PR12 adds `lib/Paws/Materializer/Moo.pm` — a parallel materialiser
that builds Moo + Type::Tiny classes from the IR. The Moo classes:

- expose the same API surface as the Moose classes,
- populate the `Paws::SerDes` side-table directly via
  `Paws::SerDes->register`, so the wire layer never has to inflate
  the Moo class to Moose for introspection,
- round-trip through the live wire layer (proven by
  `t/model/03_materializer_moo.t`).

Moose remains the default backend. The Moo backend is opt-in by
construction:

    use Paws::Materializer::Moo;
    my $mat = Paws::Materializer::Moo->new(loader => $loader);
    my $pkg = $mat->materialize_service($ir);

PR13 will switch the default in the lazy hook based on
`PAWS_OO_BACKEND`.

See `docs/oo-backends.md` for type mapping and tradeoffs.

## PR11 status

PR11 introduces `lib/Paws/SerDes.pm`: per-class serialisation metadata
side-table built once and cached. The wire layer reads from the
side-table instead of `$obj->meta->...` on every request.

Today's PR11 commit:

- `lib/Paws/SerDes.pm` with the `_build_from_meta` fallback (mirrors
  what the wire layer used to do; keeps full compatibility with
  AOT-generated and materialised classes).
- `lib/Paws/Net/JsonCaller.pm` migrated to `Paws::SerDes` as a worked
  example. Other callers (RestJsonCaller, QueryCaller, RestXmlCaller,
  EC2Caller, GlacierCaller) and response decoders
  (JsonResponse, RestJsonResponse, RestXMLResponse, XMLResponse)
  migrate piecemeal in follow-up commits on this same PR.
- `t/wire/serdes_parity.t` asserts the side-table answers match
  `meta->...` for the seven attribute traits.

The migration pattern is mechanical: replace
`$params->meta->get_attribute_list` with
`$serdes->serializable_attributes`, replace
`$params->meta->get_attribute($att)->does('Paws::API::...')` with
`$serdes->trait_for($att, 'NameInRequest')`, replace
`->request_name` / `->header_name` / `->query_name` / `->uri_name`
with `$serdes->wire_key_for($att)` / `$serdes->location_name_for($att)`.

PR12 (Moo + Type::Tiny) populates the side-table directly via a new
`Paws::SerDes->register($class => \%data)` API instead of the
`_build_from_meta` Moose-introspection fallback. That's where the
perf win lands: Moo classes never trigger Moose inflation.

## PR9 status

PR9 adds `lib/Paws/Materializer.pm` — given a `Paws::Model::IR::Service`
it constructs the corresponding Moose classes in memory:

- service class (one method per operation, composed roles based on
  protocol),
- operation classes (input attributes with the right traits, plus
  `_api_call` / `_api_method` / `_api_uri` / `_returns`),
- structure shape classes (input and output, recursively).

`t/model/02_materializer_smoke.t` constructs a service from the
tinyservice fixture, then sends a request through the live wire
layer (`TestRequestCaller`) — the captured request matches what an
on-disk class would have produced.

**Not yet in PR9, deferred to a follow-up commit on this same PR or to
PR10**: the `PAWS_LAZY=1` opt-in hook in `Paws.pm` (or a sibling
`Paws::Materializer::Auto`). Wiring that in requires deciding where the
JSON files live at runtime — which is the dist-layout change owned by
PR10.

## PR8 status (this commit)

PR8 lands the IR + Botocore loader as standalone modules. The existing
`Paws::API::Builder` is **not yet** refactored to consume IR — it still
reads `api_struct->{shapes}` directly. The "byte-identical auto-lib
regen" CI gate from the plan is therefore deferred to a follow-up
commit on this same PR; what lands here is:

- `Paws::Model::IR` with `Service`, `Operation`, `Shape`, `Member`.
- `Paws::Model::Loader` abstract role.
- `Paws::Model::Loader::Botocore` implementation.
- `t/model/01_botocore_loader.t` unit tests against a synthetic
  fixture `t/model/fixtures/tinyservice/`.

The IR is enough for PR9 (lazy materialiser) to start consuming it
without first having to refactor the existing builder. The byte-identical
regen check can be added once the builder is rerouted through the
loader, which is risk-bounded because the loader is now well-tested in
isolation.

## Companion files not (yet) absorbed into IR

The botocore service directory contains:

- `service-2.json`           — absorbed
- `paginators-1.json`        — absorbed (as `Operation->paginator`)
- `examples-1.json`          — sniffed but not yet parsed
- `waiters-2.json`           — read directly by `Paws::API::Builder`
- `endpoint-rule-set-1.json` — read directly
- `service-2.sdk-extras.json`— read directly
- `_retry.json`              — read directly (separate `Paws::API::Builder::Retry`)

These will fold into the IR in a follow-up commit when the builder is
rerouted. They're left out of PR8 to keep the loader narrow and the
unit tests focused on shape/operation correctness.
