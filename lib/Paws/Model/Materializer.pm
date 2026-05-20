package Paws::Model::Materializer;

# In-memory materialiser. Given a Paws::Model::IR::Service, builds the
# Moo classes that the existing AOT generator would have written to
# auto-lib/.
#
# This is the alternative to `require Paws::EC2` that is selected when
# PAWS_LAZY=1 (PR9 opt-in) or by default after PR10. The user-facing
# API is unchanged: `Paws->service('EC2')->DescribeInstances(...)`
# resolves to a Moo class regardless of whether it came from disk or
# from the materialiser.
#
# Per the plan's Materialiser is the single place where every class is
# built, which is what makes the Moo+Type::Tiny migration in PR12 a
# one-edit change rather than a 50k-file rewrite.

use strict;
use warnings;
use v5.10;

use Moo;
use Types::Standard qw(Maybe Object HashRef Bool);

use Carp qw(croak);

use Paws::SerDes;

# Import the seven attribute traits so they're meta-resolvable when we
# add 'traits => [...]' to attributes.
use Paws::API;

# Bring in the role names the service class will compose with.
use Paws::API::Caller;
use Paws::API::EndpointResolver;
use Paws::Net::JsonCaller;
use Paws::Net::RestJsonCaller;
use Paws::Net::QueryCaller;
use Paws::Net::RestXmlCaller;
use Paws::Net::EC2Caller;
use Paws::Net::GlacierCaller;
use Paws::Net::V4Signature;

has loader => (
    is  => 'ro',
    isa => Maybe[Object],
);

# Track which (Service, Operation, Shape) classes have already been
# materialised so we don't try to build an already-built class.
has _materialised_classes => (
    is      => 'ro',
    isa     => HashRef[Bool],
    default => sub { {} },
);

# Mapping from IR protocol name to the Paws::Net role.
my %PROTOCOL_TO_CALLER_ROLE = (
    'json'      => 'Paws::Net::JsonCaller',
    'rest-json' => 'Paws::Net::RestJsonCaller',
    'query'     => 'Paws::Net::QueryCaller',
    'rest-xml'  => 'Paws::Net::RestXmlCaller',
    'ec2'       => 'Paws::Net::EC2Caller',
);

# Map an IR Service to the Paws::Net::*Signature role to compose.
# Mirrors builder-lib/Paws/API/Builder.pm's signature_role
# convention so AOT-generated and materialised classes pick the
# same signer for the same service. The role is loaded on demand
# so a cpanfile dependency for, say, CryptX (used by V4ASignature)
# isn't paid by every Paws process — only by services that actually
# declare signatureVersion=v4a.
sub _signature_role_for {
    my ($service_ir) = @_;
    my $sv = $service_ir->signature_version;
    return 'Paws::Net::V4Signature' if !defined $sv || $sv eq '';
    my $role = sprintf 'Paws::Net::%sSignature', uc $sv;
    my $path = $role; $path =~ s{::}{/}g; $path .= '.pm';
    eval { require $path; 1 } or do {
        croak sprintf(
            "materialize_service: signature role %s for signatureVersion=%s is missing: %s",
            $role, $sv, $@,
        );
    };
    return $role;
}

# Mapping from IR primitive type to the Type::Tiny expression for
# eval'd source.
my %PRIMITIVE_TO_TYPE_EXPR = (
    string    => 'Str',
    integer   => 'Int',
    long      => 'Int',
    double    => 'Num',
    float     => 'Num',
    boolean   => 'Bool',
    timestamp => 'Str',
    blob      => 'Str',
);

# Public entry: given a service IR, build the Moo service class
# (which transitively builds operation and shape classes via lazy
# resolution). Returns the service class name.
sub materialize_service {
    my ($self, $service_ir) = @_;

    my $service_pkg = 'Paws::' . $service_ir->name;

    if ($self->_materialised_classes->{$service_pkg}) {
        return $service_pkg;
    }

    my $caller_role = $PROTOCOL_TO_CALLER_ROLE{ $service_ir->protocol }
        // croak sprintf(
            "materialize_service: unknown protocol=%s service=%s",
            $service_ir->protocol, $service_ir->name,
        );

    my $signature_role = _signature_role_for($service_ir);

    my $svc_name      = _q($service_ir->endpoint_prefix);
    my $svc_signing   = _q($service_ir->signing_name // $service_ir->endpoint_prefix);
    my $svc_version   = _q($service_ir->api_version);
    my $svc_target    = $service_ir->target_prefix
                          ? "sub target_prefix { '" . _esc($service_ir->target_prefix) . "' }"
                          : '';
    my $svc_jsonver   = $service_ir->json_version
                          ? "sub json_version { '" . _esc($service_ir->json_version) . "' }"
                          : '';

    my @op_names = $service_ir->operation_names;
    my $op_names_q = join(' ', @op_names);

    my @op_methods;
    for my $op_name (@op_names) {
        my $op_pkg = $service_pkg . '::' . $op_name;
        push @op_methods, qq{
            sub $op_name {
                my \$self = shift;
                my \$call = \$self->new_with_coercions('$op_pkg', \@_);
                return \$self->caller->do_call(\$self, \$call);
            }
        };
    }

    my $src = qq{
        package $service_pkg;
        use Moo;

        sub service          { $svc_name }
        sub signing_name     { $svc_signing }
        sub version          { $svc_version }
        sub flattened_arrays { 0 }
        $svc_target
        $svc_jsonver

        has max_attempts => (is => 'ro', default => sub { 5 });
        has retry        => (is => 'ro', default => sub {
            { base => 'rand', type => 'exponential', growth_factor => 2 }
        });
        has retriables   => (is => 'ro', default => sub { [] });

        with 'Paws::API::Caller',
             'Paws::API::EndpointResolver',
             '$signature_role',
             '$caller_role';

        @{[ join("\n", @op_methods) ]}

        sub operations { qw/$op_names_q/ }

        1;
    };

    local $@;
    eval $src;
    croak "materialize_service($service_pkg): $@\nSOURCE:\n$src" if $@;

    $self->_materialised_classes->{$service_pkg} = 1;

    # Eagerly materialise all operation+shape classes for now. A
    # follow-up commit will defer to first-call to bring cold-start
    # cost down further; eager is correct and easy to reason about.
    for my $op_name (@op_names) {
        $self->materialize_operation($service_ir, $op_name);
    }

    return $service_pkg;
}

sub materialize_operation {
    my ($self, $service_ir, $op_name) = @_;

    my $service_pkg = 'Paws::' . $service_ir->name;
    my $op_pkg      = $service_pkg . '::' . $op_name;

    if ($self->_materialised_classes->{$op_pkg}) {
        return $op_pkg;
    }

    my $op = $service_ir->operation($op_name)
        // croak "no such operation: $op_name";

    my @attr_lines;
    my @serdes_records;

    if (my $input_name = $op->input_shape) {
        my $input_shape = $service_ir->shape($input_name)
            // croak "input shape $input_name missing for op $op_name";
        $self->_install_structure_members($input_shape, $service_ir,
                                          \@attr_lines, \@serdes_records);
    }

    my $api_call    = _esc($op_name);
    my $api_method  = _esc($op->http_method);
    my $api_uri     = _esc($op->http_uri);
    my $returns_pkg = $op->output_shape
        ? "Paws::" . $service_ir->name . '::' . $op->output_shape
        : '';
    my $returns_method = $returns_pkg
        ? "sub _returns { '$returns_pkg' }"
        : "sub _returns { undef }";

    # Mirror templates/query/callargs_class.tt: awsQuery responses
    # carry a wrapper element named `<OpName>Result` between the
    # outer response envelope and the actual fields. The XML response
    # decoder uses _result_key to unwrap. Other protocols leave it
    # undef (their decoders don't need the unwrap).
    my $result_key_method =
        ($service_ir->protocol eq 'query' && $op->output_shape)
            ? "sub _result_key  { '${op_name}Result' }"
            : "sub _result_key  { undef }";

    my $src = qq{
        package $op_pkg;
        use Moo;
        use Types::Standard qw(Str Int Bool Num ArrayRef HashRef Maybe InstanceOf);

@{[ join("\n", @attr_lines) ]}

        sub _api_call    { '$api_call' }
        sub _api_method  { '$api_method' }
        sub _api_uri     { '$api_uri' }
        $returns_method
        $result_key_method

        1;
    };

    local $@;
    eval $src;
    croak "materialize_operation($op_pkg): $@\nSOURCE:\n$src" if $@;

    Paws::SerDes->register($op_pkg, \@serdes_records);

    if ($op->output_shape) {
        $self->_materialise_shape_class($service_ir, $op->output_shape);
    }

    $self->_materialised_classes->{$op_pkg} = 1;
    return $op_pkg;
}

# Recursively build a Moo class for a structure shape.
sub _materialise_shape_class {
    my ($self, $service_ir, $shape_name) = @_;

    my $service_pkg = 'Paws::' . $service_ir->name;
    my $pkg         = $service_pkg . '::' . $shape_name;

    return $pkg if $self->_materialised_classes->{$pkg};

    my $shape = $service_ir->shape($shape_name)
        // croak "shape $shape_name missing in service " . $service_ir->name;

    # Only structures get classes. Lists/maps/scalars are typed inline.
    return $pkg if !$shape->is_structure;

    # Claim the dedup slot BEFORE recursing into structure members.
    # Several services (DynamoDB.AttributeValue, S3 list pagination,
    # Glue partition descriptors, ...) have self-referential shapes,
    # so without this claim _install_structure_members re-enters
    # _materialise_shape_class for the same $pkg and recurses
    # indefinitely.
    $self->_materialised_classes->{$pkg} = 1;

    my @attr_lines;
    my @serdes_records;
    $self->_install_structure_members($shape, $service_ir,
                                      \@attr_lines, \@serdes_records);

    # If the IR shape has an attribute with one of Moo's reserved
    # names (before, after, around, extends, with, has), the accessor
    # install dies with a collision. Stash-delete those names AFTER
    # `use Moo` but BEFORE the `has` calls.
    my @attr_names = map {
        $_ =~ /^\s+has\s+(\w+)\s/ ? ($1) : ()
    } @attr_lines;
    my %attr_set = map { $_ => 1 } @attr_names;
    my @reserved = grep { $attr_set{$_} } qw(before after around extends with has);
    my @clear_lines;
    if (@reserved) {
        push @clear_lines, "        no strict 'refs';";
        push @clear_lines, map {
            "        delete \${'${pkg}::'}{'$_'};"
        } @reserved;
        push @clear_lines, "        use strict 'refs';";
    }

    my $src = qq{
        package $pkg;
        use Moo;
        use Types::Standard qw(Str Int Bool Num ArrayRef HashRef Maybe InstanceOf);

@{[ join("\n", @clear_lines) ]}

@{[ join("\n", @attr_lines) ]}

        has _request_id => (is => 'ro');

        1;
    };

    local $@;
    eval $src;
    croak "_materialise_shape_class($pkg): $@\nSOURCE:\n$src" if $@;

    Paws::SerDes->register($pkg, \@serdes_records);

    return $pkg;
}

sub _install_structure_members {
    my ($self, $shape, $service_ir, $attr_lines, $serdes_records) = @_;

    my %required = map { $_ => 1 } @{ $shape->required_members };

    for my $mname (sort keys %{ $shape->members }) {
        my $m       = $shape->members->{$mname};
        my $type_expr   = $self->_type_expr($service_ir, $m->shape);
        my $type_string = $self->_type_string($service_ir, $m->shape);

        my $target_shape   = $service_ir->shape($m->shape);
        my $shape_flatten  = $target_shape && $target_shape->is_list && $target_shape->flattened ? 1 : 0;
        my $member_flatten = $m->flattened ? 1 : 0;

        my %record = (
            name          => $mname,
            type          => $type_string,
            wire_key      => $mname,
            location      => 'body',
            location_name => undef,
            traits        => {},
            is_list       => ($type_string =~ /^ArrayRef\[/  ? 1 : 0),
            is_map        => ($type_string =~ /^HashRef\[/   ? 1 : 0),
            flattened     => ($shape_flatten || $member_flatten ? 1 : 0),
        );

        if (defined(my $loc = $m->location)) {
            if ($loc eq 'header') {
                $record{traits}{ParamInHeader} = 1;
                $record{location} = 'header';
                $record{location_name} = $m->locationName;
            } elsif ($loc eq 'headers') {
                $record{traits}{ParamInHeaders} = 1;
                $record{location} = 'headers';
                $record{location_name} = $m->locationName;
            } elsif ($loc eq 'querystring') {
                $record{traits}{ParamInQuery} = 1;
                $record{location} = 'querystring';
                $record{location_name} = $m->locationName;
            } elsif ($loc eq 'uri') {
                $record{traits}{ParamInURI} = 1;
                $record{location} = 'uri';
                $record{location_name} = $m->locationName;
            }
        } elsif (defined $m->locationName && $m->locationName ne $mname) {
            $record{traits}{NameInRequest} = 1;
            $record{location_name} = $m->locationName;
            $record{wire_key}      = $m->locationName;
        }

        if (defined $shape->payload && $shape->payload eq $mname) {
            $record{traits}{ParamInBody} = 1;
        }

        push @$serdes_records, \%record;

        my $required_part = $required{$mname} ? ', required => 1' : '';
        push @$attr_lines,
            "        has $mname => (is => 'ro', isa => $type_expr$required_part);";

        my $target = $service_ir->shape($m->shape);
        if ($target && $target->is_structure) {
            $self->_materialise_shape_class($service_ir, $m->shape);
        }
        if ($target && $target->is_list) {
            my $inner = $service_ir->shape($target->list_member_shape);
            if ($inner && $inner->is_structure) {
                $self->_materialise_shape_class($service_ir, $target->list_member_shape);
            }
        }
        if ($target && $target->is_map) {
            my $inner = $service_ir->shape($target->map_value_shape);
            if ($inner && $inner->is_structure) {
                $self->_materialise_shape_class($service_ir, $target->map_value_shape);
            }
        }
    }

    return;
}

# Returns a Type::Tiny expression that will be eval'd inside the
# materialised package. Names like Str, Int come from
# `use Types::Standard ...` at the top of the eval'd source.
sub _type_expr {
    my ($self, $service_ir, $shape_name) = @_;

    my $shape = $service_ir->shape($shape_name)
        // croak "type expr: shape $shape_name missing";

    if (my $prim = $PRIMITIVE_TO_TYPE_EXPR{ $shape->type }) {
        return $prim;
    }

    if ($shape->is_structure) {
        $self->_materialise_shape_class($service_ir, $shape_name);
        my $pkg = 'Paws::' . $service_ir->name . '::' . $shape_name;
        return "InstanceOf['" . _esc($pkg) . "']";
    }

    if ($shape->is_list) {
        my $inner = $self->_type_expr($service_ir, $shape->list_member_shape);
        return "ArrayRef[$inner]";
    }

    if ($shape->is_map) {
        my $inner = $self->_type_expr($service_ir, $shape->map_value_shape);
        return "HashRef[$inner]";
    }

    croak "type expr: don't know how to map shape=$shape_name type=" . $shape->type;
}

# Returns the string form of the type, used for Paws::SerDes records
# (the wire layer compares against these strings: 'Str', 'Int',
# 'ArrayRef[X]', etc.).
sub _type_string {
    my ($self, $service_ir, $shape_name) = @_;

    my $shape = $service_ir->shape($shape_name)
        // croak "type string: shape $shape_name missing";

    if (my $prim = $PRIMITIVE_TO_TYPE_EXPR{ $shape->type }) {
        return $prim;
    }
    if ($shape->is_structure) {
        return 'Paws::' . $service_ir->name . '::' . $shape_name;
    }
    if ($shape->is_list) {
        return 'ArrayRef[' . $self->_type_string($service_ir, $shape->list_member_shape) . ']';
    }
    if ($shape->is_map) {
        return 'HashRef[' . $self->_type_string($service_ir, $shape->map_value_shape) . ']';
    }
    croak "type string: unknown shape=$shape_name type=" . $shape->type;
}

sub _q   { defined $_[0] ? "'" . _esc($_[0]) . "'" : 'undef' }
sub _esc { my $s = $_[0] // ''; $s =~ s/(['\\])/\\$1/g; $s }

1;

__END__

=head1 NAME

Paws::Model::Materializer - in-memory construction of Paws::<Service>::*
classes from a Paws::Model::IR::Service

=head1 STATUS

PR9 lands the materialiser as opt-in via PAWS_LAZY=1. The default is
unchanged - Paws->service('X') still goes through `require Paws::X`
when the on-disk class is present.

The materialiser today builds:

  - the service class with one method per operation,
  - operation classes with input attributes + class_has metadata,
  - structure shape classes (input and output),

and is enough to round-trip the loader fixture in
t/model/fixtures/tinyservice through the wire layer.

What's deferred to follow-up commits on this same PR:

  - Sereal-backed IR cache (Paws::Model::Materializer::Cache); first-touch
    cost is bounded by the JSON parse + Moo construction.
  - Per-shape lazy materialisation (today: eager when the service
    materialises). Eager is correct and easy to reason about; lazy
    will improve cold-start once benchmarks show it matters.
  - Endpoint rule sets, paginators, retry configuration that vary
    per service.

=cut
