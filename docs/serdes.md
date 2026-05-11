# Paws::SerDes — wire serialisation side-table

Schema and usage guide for the per-class serialisation metadata
side-table.

## Why

The wire layer (`lib/Paws/Net/*Caller.pm` and
`lib/Paws/Net/*Response.pm`) needs per-attribute metadata (wire names,
locations, types, traits) on every request and response. Rather than
introspecting OO meta-classes at runtime, `Paws::SerDes` lifts the
relevant metadata into a plain data structure built once per class and
cached for the life of the process.

This avoids Moose meta-class inflation on Moo-backend classes, which
would defeat the performance benefit of using Moo.

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

## Population

The side-table is populated in two ways:

- **Moo-backend materialised classes** (the default path) populate
  SerDes directly via `Paws::SerDes->register($class => \%data)` at
  materialise time. No Moose meta-class is ever created.
- **Moose-backend classes** (legacy or `PAWS_OO_BACKEND=Moose`) use
  the `_build_from_meta` fallback, which mirrors the original
  `meta->get_attribute_list` introspection the wire layer used to do.

## Wire-layer API mapping

| Old (meta introspection)                                             | New (SerDes)                                    |
|----------------------------------------------------------------------|-------------------------------------------------|
| `$obj->meta->get_attribute_list`                                     | `$serdes->serializable_attributes`              |
| `grep { $_ !~ m/^_/ } $obj->meta->get_attribute_list`               | (the grep is no longer needed; built in)        |
| `$obj->meta->get_attribute($att)->does('…::NameInRequest')`          | `$serdes->trait_for($att, 'NameInRequest')`     |
| `$obj->meta->get_attribute($att)->request_name`                      | `$serdes->wire_key_for($att)` or `$serdes->location_name_for($att)` |
| `$obj->meta->get_attribute($att)->header_name`                       | `$serdes->location_name_for($att)`              |
| `$obj->meta->get_attribute($att)->type_constraint`                   | `$serdes->type_for($att)` for the string; `$serdes->type_object_for($att)` for the object |
| `$obj->does('Paws::API::StrToNativeMapParser')`                      | `$serdes->is_str_to_native_map`                 |
| `$obj->does('Paws::API::StrToObjMapParser')`                         | `$serdes->is_str_to_obj_map`                    |

`Paws::SerDes->for($obj)` is idempotent and cached per class, so it's
safe and cheap to call per request.

## Status

The wire layer is fully migrated. Zero live `meta->` calls remain in
`lib/Paws/Net/` and `lib/Paws/API/`. Wire fixtures from `t/wire/` are
byte-identical pre- and post-migration: the load-bearing proof that the
SerDes side-table is behaviour-preserving.
