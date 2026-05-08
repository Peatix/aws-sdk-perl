# Paws architecture

Navigation document for contributors. Points at the code rather than
duplicating it.

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

| Path                                         | Purpose                                                                  |
|----------------------------------------------|--------------------------------------------------------------------------|
| `botocore/`                                  | Git submodule of the paws-maintained botocore fork. Source-of-truth JSON.|
| `builder-lib/Paws/Model/IR.pm`               | Source-format-independent IR. Contract between loaders and consumers.    |
| `builder-lib/Paws/Model/Loader.pm`           | Abstract loader role.                                                    |
| `builder-lib/Paws/Model/Loader/Botocore.pm`  | Botocore JSON → IR.                                                      |
| `builder-lib/Paws/API/Builder.pm`            | TT-template generator. Today reads botocore JSON directly; future commit refactors it to consume IR. |
| `builder-bin/gen_classes.pl`                 | CLI driver for `make gen-classes`. Forks one child per service.          |
| `templates/`                                 | TT templates per protocol family (`json/`, `restjson/`, `query/`, `restxml/`, `EC2/`, `Kinesis/`, `default/`). |
| `auto-lib/Paws/`                             | Generated classes, committed to the repo today. Removed in PR10.         |
| `lib/Paws.pm`                                | Top-level entry. `Paws->service('EC2')` etc.                             |
| `lib/Paws/API/`                              | Caller, EndpointResolver, Response, MapParser, attribute traits.         |
| `lib/Paws/API.pm`                            | The seven attribute-trait packages (NameInRequest, ParamInHeader, etc.). |
| `lib/Paws/Net/*Caller.pm`                    | Per-protocol request shaping: `JsonCaller`, `RestJsonCaller`, `QueryCaller`, `RestXmlCaller`, `EC2Caller`, `GlacierCaller`. |
| `lib/Paws/Net/*Response.pm`                  | Per-protocol response decoding.                                          |
| `lib/Paws/Net/{LWP,Furl,MojoAsync}Caller.pm` | Pluggable HTTP transports.                                               |
| `lib/Paws/Net/V*Signature.pm`                | Signer roles.                                                            |
| `lib/Paws/Credential*.pm`                    | Credential providers.                                                    |

## Data flow today

1. `make pull-other-sdks` syncs the `botocore` submodule.
2. `make gen-classes` runs `gen_classes.pl`, which forks one
   `Paws::API::Builder` per `service-2.json`.
3. Each builder loads JSON, runs TT templates from `templates/`, and
   writes `.pm` files into `auto-lib/`.
4. End users `cpanm Paws`; the dist includes `auto-lib/`.
5. `Paws->service('EC2')` `require`s `Paws::EC2`. Operations and shapes
   are loaded on demand via `Module::Runtime`.
6. Operation method calls go through `Paws::API::Caller->do_call`,
   which dispatches to the protocol caller in `lib/Paws/Net/`.

## Data flow after the maintenance-reduction series

After PR8 → PR15 land, the same data flow is rerouted through the IR:

1. The `botocore` submodule is unchanged. A future Smithy loader
   reads vendored Smithy JSON from `share/smithy/`.
2. `make gen-classes` is replaced by a `dist-prepare` step that
   copies the JSON sources into `share/`.
3. End users `cpanm Paws`; the dist no longer includes `auto-lib/`.
4. `Paws->service('EC2')` calls `Paws::Materializer->materialize_service('EC2')`,
   which reads the JSON via the appropriate `Paws::Model::Loader::*`
   and constructs the Moose (later: Moo) classes in-memory.
5. The wire layer is unchanged from the user's perspective, but its
   internals consult a side-table built by the materialiser instead
   of introspecting Moose meta-classes.

See `docs/testing.md` for how each PR is gated.

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
