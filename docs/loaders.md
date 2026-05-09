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

- Smithy (the runtime source of truth): vendored under
  `share/smithy/<service>/<service>.smithy.json` from
  `awslabs/aws-sdk-rust:aws-models/` at the SHA pinned in
  `share/smithy/.upstream-sha`. Tracked in git; `make dist` ships
  it as-is.
- Botocore (only consumed by the AOT generator workflows, not by
  the runtime materialiser): fetched on the fly into `botocore/`
  at the SHA pinned in `etc/botocore-pin.sha`. Per-service paths
  look like `botocore/botocore/data/<service>/<date>/service-2.json`.

## Loader resolution

`Paws::Model::Loader::Resolver` walks the configured search paths
and returns the IR produced by the first loader that finds a
matching source file:

```
use Paws::Model::Loader::Resolver;

# Default: Smithy-only against share/smithy/.
my $r = Paws::Model::Loader::Resolver->new;
my ($ir, $loader_name) = $r->load_service('IAM');

# Opt back into botocore for a deprecated-but-still-needed service:
$ENV{PAWS_LOADER_ORDER} = 'Botocore,Smithy';
my $r2 = Paws::Model::Loader::Resolver->new(
    botocore_search_paths => ['/path/to/botocore/botocore/data'],
);
```

Default order: Smithy-only. The Botocore loader is reachable for
users who construct the resolver explicitly with
`botocore_search_paths` — see `docs/deprecated-services.md` for the
14 services that warrant this escape hatch.

Search-path layouts checked:

- Smithy: `<base>/<smithy-name>/<smithy-name>.smithy.json`
  (canonical nested layout; matches the vendored tree),
  `<base>/<smithy-name>.smithy.json` (tolerated flat layout for
  fixtures), plus `lc(class)`-based fallbacks. The
  `<smithy-name>` is resolved from the Paws class via
  `%Paws::Model::Loader::Resolver::PAWS_TO_SMITHY` (see below).
- Botocore: `<base>/<service>/<date>/service-2.json` (newest dated
  subdirectory wins), and the lowercase-service-name variant.

## Paws class → Smithy file basename

Smithy file basenames do not always equal `lc(paws_class)`.
`%Paws::Model::Loader::Resolver::PAWS_TO_SMITHY` is the explicit
map; `lc(class)` is the fallback for the ~217 cases where they
already line up.

The map covers:

- 144 cosmetic separator differences (`ApiGateway` →
  `api-gateway`, `ACMPCA` → `acm-pca`).
- 27 substantive renames (`DMS` → `database-migration-service`,
  `StepFunctions` → `sfn`, `SDB` → `simpledbv2`, ...).
- The `events` ambiguity: `Paws::EventBridge` → `eventbridge`
  (modern), `Paws::CloudWatchEvents` → `cloudwatch-events`
  (legacy alias), both backed by the same AWS endpoint.

`%Paws::Model::Loader::Resolver::PAWS_DROPPED_SERVICES` lists the
14 botocore-era services AWS retired (and `awslabs/aws-sdk-rust`
no longer ships a model for). Asking the resolver for one dies
with the AWS shutdown date and a pointer at
`docs/deprecated-services.md` rather than the generic "no source
file found".

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
