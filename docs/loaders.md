# Paws model loaders

A loader takes a source-of-truth file describing an AWS service and
returns a `Paws::Model::IR::Service`. The downstream consumers
(`Paws::API::Builder` once refactored, `Paws::Model::Materializer`,
`Paws::Model::Materializer::Moo`) work against the IR and don't care which
loader produced it.

## Loaders today

| Loader                          | Source format                          | Status      |
|---------------------------------|----------------------------------------|-------------|
| `Paws::Model::Loader::Botocore` | botocore `service-2.json` (+ siblings) | from PR8    |
| `Paws::Model::Loader::Smithy`   | Smithy 2.0 AST JSON                    | from PR14   |

Both implement the `Paws::Model::Loader` role:

  - `name()` — short identifier (`'botocore'`, `'smithy'`).
  - `load($arg)` — returns a `Paws::Model::IR::Service`. The argument
    may be a path string or a hashref with loader-specific keys
    (`{service_2 => $path}` for Botocore,
    `{ast => $path}` for Smithy).

## Where source files live

- Botocore: the `botocore/` git submodule; per-service paths look
  like `botocore/botocore/data/<service>/<date>/service-2.json`.
- Smithy: vendored under `share/smithy/<service>.smithy.json` (this
  directory is a forward-looking layout; the dist will populate it
  in PR15 / the dist-prepare step).

## Loader resolution

`Paws::Model::Loader::Resolver` walks the configured search paths and
returns the IR produced by the first loader that finds a matching
source file:

```
use Paws::Model::Loader::Resolver;

my $r = Paws::Model::Loader::Resolver->new(
    smithy_search_paths   => ['share/smithy'],
    botocore_search_paths => ['botocore/botocore/data'],
);
my ($ir, $loader_name) = $r->load_service('IAM');
```

Default order: Smithy first, Botocore fallback. Override via
`PAWS_LOADER_ORDER=Botocore,Smithy` if a regression appears.

Search-path layouts checked:

- Smithy: `<base>/<service>.smithy.json` (flat),
  `<base>/<lc service>.smithy.json`,
  `<base>/<service>/<service>.smithy.json` (nested),
  `<base>/<lc service>/<lc service>.smithy.json`.
- Botocore: `<base>/<service>/<date>/service-2.json` (newest dated
  subdirectory wins), and the lowercase-service-name variant.

## IR coverage by loader

The IR has the union of fields needed by the existing TT generator
and the materialisers. Each loader populates the subset that its
source format expresses:

| Field                          | Botocore                       | Smithy                                |
|--------------------------------|--------------------------------|---------------------------------------|
| `Service.endpoint_prefix`      | `metadata.endpointPrefix`      | `@aws.api#service.endpointPrefix`     |
| `Service.protocol`             | `metadata.protocol`            | `@aws.protocols#…` trait              |
| `Service.json_version`         | `metadata.jsonVersion`         | derived from `awsJson1_0`/`awsJson1_1`|
| `Operation.http_method`        | `operation.http.method`        | `@smithy.api#http.method`             |
| `Operation.http_uri`           | `operation.http.requestUri`    | `@smithy.api#http.uri`                |
| `Operation.http_status_code`   | `operation.http.responseCode`  | `@smithy.api#http.code`               |
| `Operation.deprecated`         | `operation.deprecated`         | `@smithy.api#deprecated`              |
| `Operation.error_shapes`       | `operation.errors[].shape`     | `operation.errors[].target`           |
| `Member.location` (header)     | `member.location: 'header'`    | `@smithy.api#httpHeader`              |
| `Member.location` (query)      | `member.location: 'querystring'`| `@smithy.api#httpQuery`              |
| `Member.location` (uri)        | `member.location: 'uri'`       | `@smithy.api#httpLabel`               |
| `Member.locationName` (rename) | `member.locationName`          | `@smithy.api#jsonName`/`@smithy.api#xmlName` |
| `Member.streaming`             | `member.streaming`             | `@smithy.api#streaming`               |
| `Shape.required_members`       | `shape.required[]`             | per-member `@smithy.api#required`     |
| `Shape.payload`                | `shape.payload`                | per-member `@smithy.api#httpPayload`  |

Smithy-only fields not yet absorbed into the IR (event streams, mixins,
resource shapes, document type) — folded in additively as the wire
layer grows support.

## Adding a third loader

The plan in `docs/architecture.md` is loader-pluggable by design. To
add a third loader (OpenAPI? Hand-written?) it's:

1. Implement `name()` and `load()` from `Paws::Model::Loader`.
2. Return a fully-populated `Paws::Model::IR::Service`.
3. Add a unit test against a small fixture and an IR-parity test
   against an existing loader for any service that has both forms.

See `t/model/01_botocore_loader.t` and `t/model/03_smithy_loader.t`
as templates.

## See also

- `docs/materialisation.md` — how the IR these loaders return is
  consumed by the AOT generator and the runtime materialiser, and
  how to drive the materialiser directly when debugging.
