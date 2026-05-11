package Paws::SerDes;

# Per-class side-table of serialisation metadata.
#
# The wire layer (lib/Paws/Net/*Caller.pm and lib/Paws/Net/*Response.pm)
# historically introspects Moose meta-classes on every request and
# response to discover:
#
#   - which attributes carry which trait
#     (NameInRequest, ParamInHeader, ParamInQuery, ParamInURI,
#      ParamInHeaders, ParamInBody, AutoInHeader),
#   - what the wire key is for each attribute,
#   - what the type constraint is for each attribute.
#
# That introspection has two costs:
#
#   1. Performance: ~63 `meta->` call sites in lib/, each doing
#      multiple Moose meta lookups per attribute per request.
#
#   2. Coupling: every class must be a Moose class with
#      `$x->meta->...` working. PR12 (Moo + Type::Tiny) inflates Moo
#      classes to Moose on the first MOP touch, which would re-pay
#      the introspection cost we're trying to remove.
#
# Paws::SerDes lifts that information out of Moose-meta into a plain
# data structure that is built once per class and cached. Wire-layer
# code reads from the side-table; PR12's Moo backend can populate it
# directly, no Moose inflation.
#
# Today this module contains the BUILD-FROM-MOOSE-META fallback only.
# That keeps it 100% compatible with all existing AOT-generated and
# materialised classes. PR9's materialiser will gain an explicit hook
# in a follow-up commit so it can populate the side-table without
# round-tripping through Moose meta.

use strict;
use warnings;
use v5.10;

use Carp qw(croak);
use Scalar::Util qw(blessed);

use Moose;

# Attribute records keyed by attribute name (excluding underscore-
# prefixed internal attributes).
has attributes => (
    is      => 'ro',
    isa     => 'HashRef[HashRef]',
    default => sub { {} },
);

# Sorted list of public attribute names. Cached at build time so the
# wire layer doesn't have to re-sort per request.
has serializable_names => (
    is      => 'ro',
    isa     => 'ArrayRef[Str]',
    default => sub { [] },
);

# Optional flags lifted from class-level roles, used by the wire layer
# to short-circuit map handling (Paws::API::StrTo{Native,Obj}MapParser).
has is_str_to_native_map => (is => 'ro', isa => 'Bool', default => 0);
has is_str_to_obj_map    => (is => 'ro', isa => 'Bool', default => 0);

# Original Moose class name, kept for diagnostics and as the cache key.
has class => (is => 'ro', isa => 'Str', required => 1);

# Process-wide cache. Class -> Paws::SerDes instance.
my %CACHE;

# Public entry: idempotent construction-and-cache.
#
#   my $serdes = Paws::SerDes->for($class_or_obj);
#
# Accepts either a class name or a blessed object.
sub for {
    my ($invocant, $class_or_obj) = @_;
    my $class = blessed($class_or_obj) || $class_or_obj;
    return $CACHE{$class} //= $invocant->_build_from_meta($class);
}

# Public entry: register a pre-built side-table for a class. Used by
# the Moo backend (PR12), which knows the metadata at build time and
# doesn't need _build_from_meta to introspect Moose.
#
#   Paws::SerDes->register($class, \@records, \%opts);
#
# Each record in \@records is a hashref with the keys documented in
# docs/serdes.md. \%opts is an optional hashref carrying class-level
# flags (is_str_to_native_map, is_str_to_obj_map).
sub register {
    my ($invocant, $class, $records, $opts) = @_;
    $opts //= {};

    my %attrs;
    my @public;
    for my $rec (@$records) {
        push @public, $rec->{name} if $rec->{name} !~ /^_/;
        # Default every field so the wire layer doesn't have to check
        # exists / defined for every lookup.
        $attrs{ $rec->{name} } = {
            name          => $rec->{name},
            type          => ($rec->{type}          // ''),
            type_object   => ($rec->{type_object}   // undef),
            is_list       => ($rec->{is_list}       ? 1 : 0),
            is_map        => ($rec->{is_map}        ? 1 : 0),
            # Per-attribute xmlFlattened, lifted by the materialiser
            # from the IR (either the list-shape's flattened flag or
            # the member-level xmlFlattened trait — both forms are
            # collapsed to a single boolean here).
            flattened     => ($rec->{flattened}     ? 1 : 0),
            is_required   => ($rec->{is_required}   ? 1 : 0),
            wire_key      => ($rec->{wire_key}      // $rec->{name}),
            location      => ($rec->{location}      // 'body'),
            location_name => ($rec->{location_name} // undef),
            traits        => ($rec->{traits}        // {}),
            ($rec->{auto} ? (auto => $rec->{auto}) : ()),
        };
    }

    $CACHE{$class} = $invocant->new(
        class                => $class,
        attributes           => \%attrs,
        serializable_names   => [ sort @public ],
        is_str_to_native_map => ($opts->{is_str_to_native_map} ? 1 : 0),
        is_str_to_obj_map    => ($opts->{is_str_to_obj_map}    ? 1 : 0),
    );
    return $CACHE{$class};
}

# Build the SerDes for a Moose class by introspecting its meta-class.
#
# This is the *fallback* path that mirrors what the wire layer does
# today on every request. The point of the side-table is to amortise
# the cost: build once, read many.
#
# In a follow-up commit, Paws::Model::Materializer will install side-tables
# directly via Paws::SerDes->register($class => \%data), avoiding the
# meta-class round-trip entirely.
sub _build_from_meta {
    my ($invocant, $class) = @_;

    croak "Paws::SerDes->for: $class has no meta() (not a Moose class?)"
        if !$class->can('meta');

    my $meta = $class->meta;

    my %attrs;
    my @public;
    for my $name (sort $meta->get_attribute_list) {
        my $attr = $meta->get_attribute($name);
        # Underscore-prefixed attributes (e.g. _request_id) live in
        # the side-table so the response decoder can look them up by
        # name, but they're excluded from `serializable_names` so the
        # request-side wire layer doesn't try to serialise them.
        push @public, $name if $name !~ /^_/;
        my $type = $attr->type_constraint;
        my $type_name = defined $type ? $type->name : '';

        my %record = (
            name           => $name,
            type           => $type_name,
            type_object    => $type,    # for the few callers that need
                                        # ->isa('Moose::Meta::TypeConstraint::Enum')
            is_list        => ($type_name =~ m/^ArrayRef\[/ ? 1 : 0),
            is_map         => ($type_name =~ m/^HashRef\[/ ? 1 : 0),
            is_required    => ($attr->is_required ? 1 : 0),
            wire_key       => $name,    # default; overridden below
            location       => 'body',   # default; overridden below
            location_name  => undef,
            traits         => {},
        );

        # Lift trait info into plain data. Each trait the auto-generator
        # emits has its own per-trait named argument (request_name,
        # header_name, etc.); we lift those alongside.
        my %trait_arg = (
            'Paws::API::Attribute::Trait::NameInRequest'   => ['request_name', 'body'],
            'Paws::API::Attribute::Trait::ParamInHeader'   => ['header_name',  'header'],
            'Paws::API::Attribute::Trait::ParamInHeaders'  => ['header_prefix','headers'],
            'Paws::API::Attribute::Trait::ParamInQuery'    => ['query_name',   'querystring'],
            'Paws::API::Attribute::Trait::ParamInURI'      => ['uri_name',     'uri'],
            'Paws::API::Attribute::Trait::ParamInBody'     => [undef,          'body'],
            'Paws::API::Attribute::Trait::AutoInHeader'    => ['header_name',  'header'],
        );

        for my $trait_pkg (keys %trait_arg) {
            next if !$attr->can('does') || !$attr->does($trait_pkg);
            my $short = $trait_pkg;
            $short =~ s/^Paws::API::Attribute::Trait:://;
            $record{traits}{$short} = 1;

            my ($arg_name, $location) = @{ $trait_arg{$trait_pkg} };
            $record{location} = $location if $location;
            if (defined $arg_name && $attr->can($arg_name)) {
                my $value = $attr->$arg_name;
                $record{location_name} = $value if defined $value;
                $record{wire_key}      = $value if defined $value
                    && ($trait_pkg eq 'Paws::API::Attribute::Trait::NameInRequest');
            }
        }

        # AutoInHeader carries an extra 'auto' value (e.g. 'MD5') that
        # tells the wire layer to compute the header automatically.
        if ($record{traits}{AutoInHeader} && $attr->can('auto')) {
            $record{auto} = $attr->auto;
        }

        $attrs{$name} = \%record;
    }

    return $invocant->new(
        class                => $class,
        attributes           => \%attrs,
        serializable_names   => \@public,
        is_str_to_native_map => ($class->can('does') && $class->does('Paws::API::StrToNativeMapParser') ? 1 : 0),
        is_str_to_obj_map    => ($class->can('does') && $class->does('Paws::API::StrToObjMapParser')    ? 1 : 0),
    );
}

# Convenience accessors used by the wire layer.

sub serializable_attributes {
    my ($self) = @_;
    return @{ $self->serializable_names };
}

# All attribute names recorded for this class, including
# underscore-prefixed internals (e.g. _request_id). The response
# decoder uses this to round-trip metadata that the wire layer
# never sends.
sub all_attribute_names {
    my ($self) = @_;
    return sort keys %{ $self->attributes };
}

sub wire_key_for {
    my ($self, $name) = @_;
    return ($self->attributes->{$name} // {})->{wire_key} // $name;
}

sub type_for {
    my ($self, $name) = @_;
    return ($self->attributes->{$name} // {})->{type} // '';
}

sub type_object_for {
    my ($self, $name) = @_;
    return ($self->attributes->{$name} // {})->{type_object};
}

sub location_for {
    my ($self, $name) = @_;
    return ($self->attributes->{$name} // {})->{location} // 'body';
}

sub location_name_for {
    my ($self, $name) = @_;
    return ($self->attributes->{$name} // {})->{location_name};
}

sub trait_for {
    my ($self, $name, $trait) = @_;
    return ($self->attributes->{$name} // {})->{traits}{$trait} ? 1 : 0;
}

sub auto_for {
    my ($self, $name) = @_;
    return ($self->attributes->{$name} // {})->{auto};
}

# True if the attribute's list/map serialisation is flattened in the
# wire (`<Item><Item>...` for a list, instead of
# `<Wrapper><Item>...</Wrapper>`). Per-attribute; the materialiser
# folds shape-level + member-level xmlFlattened into a single
# boolean here.
sub is_flattened {
    my ($self, $name) = @_;
    return ($self->attributes->{$name} // {})->{flattened} ? 1 : 0;
}

# Test/maintenance helper: clear the cache. The wire layer never calls
# this; it exists for tests that materialise different shapes of the
# same class name (rare).
sub _clear_cache {
    %CACHE = ();
    return;
}

__PACKAGE__->meta->make_immutable;
1;

__END__

=head1 NAME

Paws::SerDes - per-class serialisation metadata side-table

=head1 SYNOPSIS

  use Paws::SerDes;

  my $serdes = Paws::SerDes->for($call_object);

  for my $att ($serdes->serializable_attributes) {
      my $key  = $serdes->wire_key_for($att);
      my $type = $serdes->type_for($att);
      my $loc  = $serdes->location_for($att);
      my $value = $call_object->$att;
      ...
  }

=head1 DESCRIPTION

The wire layer historically introspects Moose meta-classes on every
request and response to discover trait, wire-key, and type
information. Paws::SerDes lifts that information into a plain data
structure built once per class and cached for the life of the process.

This is the contract that PR12's Moo + Type::Tiny migration must
satisfy: the wire layer reads from the side-table, not from
`$obj->meta->...`. Moo can implement the side-table directly, no
Moose inflation.

=head1 STATUS

PR11 lands the side-table abstraction and the `_build_from_meta`
fallback (mirrors what the wire layer does today). It also migrates
the first wire caller (JsonCaller) as a worked example. The remaining
five callers and four response decoders migrate piecemeal in
follow-up commits on this same PR.

=cut
