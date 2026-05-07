# Paws::SerDes — wire serialisation side-table

Schema and migration guide for the per-class serialisation metadata
side-table introduced in PR11.

## Why

The wire layer (`lib/Paws/Net/*Caller.pm` and
`lib/Paws/Net/*Response.pm`) used to introspect Moose meta-classes on
every request and response: ~63 `meta->` call sites in `lib/`, each
doing several lookups per attribute per request.

That introspection has two costs:

1. **Performance.** `$obj->meta->get_attribute_list` and friends are
   not free. Multiplied by every attribute on every request, this is a
   measurable component of warm decode time.

2. **Coupling.** PR12 swaps the OO system from Moose to Moo. Moo
   classes inflate to Moose on the first MOP touch. If the wire layer
   keeps reading meta-classes, every request inflates the response
   classes back to Moose, defeating the perf win.

`Paws::SerDes` lifts the relevant metadata out of Moose-meta into a
plain data structure that is built once per class and cached for the
life of the process.

## Schema

For each class, `Paws::SerDes->for($class_or_obj)` returns a
`Paws::SerDes` with:

- `serializable_attributes()` — sorted public attribute names
  (underscore-prefixed internals excluded).
- `wire_key_for($name)` — the key under which the attribute should be
  serialised on the wire. Equal to `$name` unless the attribute carries
  the `NameInRequest` trait, in which case `request_name` is returned.
- `type_for($name)` — the Moose-style isa string (`'Str'`, `'Int'`,
  `'ArrayRef[Str]'`, `'Paws::EC2::Instance'`, ...).
- `type_object_for($name)` — the underlying type-constraint object,
  for the few callers that do `->isa('Moose::Meta::TypeConstraint::Enum')`.
- `location_for($name)` — `'body'`, `'header'`, `'headers'`,
  `'querystring'`, or `'uri'`. Derived from the trait the attribute
  carries.
- `location_name_for($name)` — the wire-side name for non-body
  locations (`request_name` for `NameInRequest`, `header_name` for
  `ParamInHeader`, etc.).
- `trait_for($name, $short_trait)` — boolean. `$short_trait` is the
  trait package's basename (`NameInRequest`, `ParamInHeader`,
  `ParamInQuery`, `ParamInURI`, `ParamInHeaders`, `ParamInBody`,
  `AutoInHeader`).
- `auto_for($name)` — for `AutoInHeader` attributes, the `auto`
  string (e.g. `'MD5'`).

Class-level flags:

- `is_str_to_native_map` — true if the class composes
  `Paws::API::StrToNativeMapParser`.
- `is_str_to_obj_map` — true if the class composes
  `Paws::API::StrToObjMapParser`.

## Migration pattern

For each `meta->` site in the wire layer:

| Old                                                          | New                                            |
|--------------------------------------------------------------|------------------------------------------------|
| `$obj->meta->get_attribute_list`                             | `$serdes->serializable_attributes`             |
| `grep { $_ !~ m/^_/ } $obj->meta->get_attribute_list`        | (the grep is no longer needed; built in)       |
| `$obj->meta->get_attribute($att)->does('…::NameInRequest')`  | `$serdes->trait_for($att, 'NameInRequest')`    |
| `$obj->meta->get_attribute($att)->request_name`              | `$serdes->wire_key_for($att)` (use this for the key) or `$serdes->location_name_for($att)` |
| `$obj->meta->get_attribute($att)->header_name`               | `$serdes->location_name_for($att)`             |
| `$obj->meta->get_attribute($att)->type_constraint`           | `$serdes->type_for($att)` for the string; `$serdes->type_object_for($att)` for the object |
| `$obj->does('Paws::API::StrToNativeMapParser')`              | `$serdes->is_str_to_native_map`                |
| `$obj->does('Paws::API::StrToObjMapParser')`                 | `$serdes->is_str_to_obj_map`                   |

`Paws::SerDes->for($obj)` is idempotent and cached per class, so it's
safe and cheap to call per request.

## Status

PR11 lands the side-table, the `_build_from_meta` fallback, and
migrates `Paws::Net::JsonCaller` as a worked example. Other callers
and response decoders migrate piecemeal in follow-up commits on this
same PR. The synthetic-response suite (`t/2X_*` and `t/29-31_*`) and
the wire-byte fixtures (`t/wire/`) are the regression gate.
