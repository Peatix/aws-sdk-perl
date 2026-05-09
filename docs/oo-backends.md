# OO backends in the Paws materialiser

Two backends produce the per-service Perl classes from the IR
(`Paws::Model::IR::Service`):

| Backend                       | Module                          | Status      |
|-------------------------------|---------------------------------|-------------|
| Moose (escape hatch)          | `Paws::Materializer`            | always-on   |
| Moo + Type::Tiny (default)    | `Paws::Materializer::Moo`       | default from PR13 |

Both produce classes that:

- carry the same input attributes with the same defaults / required
  flags,
- expose the same `_api_call` / `_api_method` / `_api_uri` /
  `_returns` / `_result_key` accessors,
- compose with the same `Paws::Net::*Caller` role chain via the
  service class,
- populate the same `Paws::SerDes` side-table so the wire layer
  cannot tell them apart.

## How to use the Moo backend today

```
use Paws::Model::Loader::Botocore;
use Paws::Materializer::Moo;

my $loader = Paws::Model::Loader::Botocore->new;
my $ir     = $loader->load($path_to_service_2_json);

my $mat    = Paws::Materializer::Moo->new(loader => $loader);
my $pkg    = $mat->materialize_service($ir);

my $svc = $pkg->new(region => 'us-east-1', ...);
$svc->ListThings(...);
```

From PR13, `Paws::Materializer::Auto` defaults to the Moo backend.
`PAWS_OO_BACKEND=Moose` is the documented escape hatch for one
release while users update any code that depends on Moose-specific
error message text.

## Type mapping

Botocore primitive → Type::Tiny constructor:

| botocore type | Type::Tiny     | notes                                 |
|---------------|----------------|---------------------------------------|
| `string`      | `Str`          |                                       |
| `integer`     | `Int`          |                                       |
| `long`        | `Int`          |                                       |
| `double`      | `Num`          |                                       |
| `float`       | `Num`          |                                       |
| `boolean`     | `Bool`         |                                       |
| `timestamp`   | `Str`          | matches Moose backend; finer types are a future change |
| `blob`        | `Str`          | matches Moose backend                 |
| `list`        | `ArrayRef[X]`  | recurses on element shape             |
| `map`         | `HashRef[X]`   | recurses on value shape               |
| `structure`   | `InstanceOf['Paws::<Service>::<Shape>']` | structure is materialised separately |

The string form recorded in the SerDes side-table (e.g.
`'ArrayRef[Paws::EC2::Instance]'`) matches the Moose-style isa name,
so the wire layer's switch on type-string keeps working unchanged.

## What's the same, what's different

Same:

- API surface (operation methods, attribute readers, `_api_*`).
- Wire bytes (the JSON byte fixtures in `t/wire/fixtures/json/`
  pass under both backends).
- Side-table answers in `Paws::SerDes`.

Different:

- Class-construction time (Moo is materially faster; benchmarks land
  with PR13).
- `$obj->meta` works only on Moose-backend classes. On Moo-backend
  classes, `$obj->meta` triggers Moo's Moose-compat inflation - that
  is a one-time cost and the inflation produces a real Moose meta-
  class, but it defeats the perf win of using Moo. PR11 ensured the
  internal wire layer never touches `->meta`; user code that does
  `$obj->meta->...` still works.

## Custom traits

The Moose backend uses the seven attribute-trait packages in
`lib/Paws/API.pm` (`NameInRequest`, `ParamInHeader`, etc.). The Moo
backend skips those entirely - the equivalent metadata is recorded in
the SerDes side-table at materialise time. The traits remain in the
codebase for backward compatibility with any user code that
introspects them.

## Future work

- Object::Pad backend. Object::Pad is faster again than Moo for both
  cold-start and warm dispatch, but introduces a different syntax
  (`field`, `method`) and is not in core. Worth considering once Moo
  is the default and we have benchmarks. Adding a third backend is a
  small PR because the Materializer / Materializer::Moo split is
  already the precedent.

- Core `class` (Corinna). Requires Perl 5.38+; would bump Paws's
  minimum from 5.12 by 12 years. Premature.

## See also

- `docs/materialisation.md` — when each backend gets selected at
  runtime (`PAWS_OO_BACKEND`, `PAWS_LAZY_FORCE`) and the AOT vs.
  in-memory tradeoffs.
