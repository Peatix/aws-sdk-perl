package Paws::Materializer;

# In-memory materialiser. Given a Paws::Model::IR::Service, builds the
# Moose classes that the existing AOT generator would have written to
# auto-lib/.
#
# This is the alternative to `require Paws::EC2` that is selected when
# PAWS_LAZY=1 (PR9 opt-in) or by default after PR10. The user-facing
# API is unchanged: `Paws->service('EC2')->DescribeInstances(...)`
# resolves to a Moose class regardless of whether it came from disk or
# from the materialiser.
#
# Per the plan's Materialiser is the single place where every class is
# built, which is what makes the Moo+Type::Tiny migration in PR12 a
# one-edit change rather than a 50k-file rewrite.

use strict;
use warnings;
use v5.10;

use Moose;

use Class::MOP;
use Class::MOP::Class;
use Carp qw(croak);

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
    is       => 'ro',
    required => 1,
    # Keep loose; loader role is in builder-lib which may not be on @INC
    # of an installed Paws.
    isa      => 'Object',
);

# Track which (Service, Operation, Shape) classes have already been
# materialised so we don't try to add_attribute on an already-built
# meta-class.
has _materialised_classes => (
    is      => 'ro',
    isa     => 'HashRef[Bool]',
    default => sub { {} },
);

# Mapping from botocore protocol name to the Paws::Net role.
my %PROTOCOL_TO_CALLER_ROLE = (
    'json'      => 'Paws::Net::JsonCaller',
    'rest-json' => 'Paws::Net::RestJsonCaller',
    'query'     => 'Paws::Net::QueryCaller',
    'rest-xml'  => 'Paws::Net::RestXmlCaller',
    'ec2'       => 'Paws::Net::EC2Caller',
);

# Mapping from botocore primitive type to the Moose isa string.
my %PRIMITIVE_TO_ISA = (
    string    => 'Str',
    integer   => 'Int',
    long      => 'Int',
    double    => 'Num',
    float     => 'Num',
    boolean   => 'Bool',
    timestamp => 'Str',
    blob      => 'Str',
);

# Public entry: given a service IR, build the Moose service class
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

    # Build the class itself.
    my $meta = Class::MOP::Class->create(
        $service_pkg,
        superclasses => ['Moose::Object'],
    );

    # Service identity methods (templates have these as plain subs).
    my $svc_name      = $service_ir->endpoint_prefix;
    my $svc_signing   = $service_ir->signing_name // $service_ir->endpoint_prefix;
    my $svc_version   = $service_ir->api_version;
    my $svc_target    = $service_ir->target_prefix;
    my $svc_jsonver   = $service_ir->json_version;

    $meta->add_method(service       => sub { $svc_name });
    $meta->add_method(signing_name  => sub { $svc_signing });
    $meta->add_method(version       => sub { $svc_version });
    $meta->add_method(flattened_arrays => sub { 0 });
    $meta->add_method(target_prefix => sub { $svc_target })  if defined $svc_target;
    $meta->add_method(json_version  => sub { $svc_jsonver }) if defined $svc_jsonver;

    # Retry / retriables: minimal default. Mirrors what the templates
    # emit for services with no service-specific retry policy.
    $meta->add_attribute(max_attempts => (
        is => 'ro', isa => 'Int', default => 5,
    ));
    $meta->add_attribute(retry => (
        is => 'ro', isa => 'HashRef',
        default => sub {
            { base => 'rand', type => 'exponential', growth_factor => 2 }
        },
    ));
    $meta->add_attribute(retriables => (
        is => 'ro', isa => 'ArrayRef', default => sub { [] },
    ));

    # Compose roles.
    Moose::Util::apply_all_roles(
        $meta,
        'Paws::API::Caller',
        'Paws::API::EndpointResolver',
        'Paws::Net::V4Signature',
        $caller_role,
    );

    # One method per operation. Each constructs the call object and
    # dispatches via the caller. Mirrors the TT default service_class.tt.
    for my $op_name ($service_ir->operation_names) {
        my $op    = $service_ir->operation($op_name);
        my $input = $op->input_shape;
        my $op_pkg = $service_pkg . '::' . $op_name;

        # Closure capture: $self, args. Operation classes are
        # materialised eagerly in the loop below, so this method only
        # needs to construct + dispatch.
        my $closure = sub {
            my $self = shift;
            my $call_object = $self->new_with_coercions($op_pkg, @_);
            return $self->caller->do_call($self, $call_object);
        };
        $meta->add_method($op_name => $closure);
    }

    # operations() class method, used by Paws::Crawler etc.
    my @op_names = $service_ir->operation_names;
    $meta->add_method(operations => sub { @op_names });

    $self->_materialised_classes->{$service_pkg} = 1;

    # Eagerly materialise all operation+shape classes for now. A
    # follow-up commit will defer to first-call to bring cold-start
    # cost down further; eager is correct and easy to reason about.
    for my $op_name ($service_ir->operation_names) {
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

    # Build the operation class. Its attributes are the input shape's
    # members, with traits derived from member.location/locationName.
    my $meta = Class::MOP::Class->create(
        $op_pkg,
        superclasses => ['Moose::Object'],
    );

    if (my $input_name = $op->input_shape) {
        my $input_shape = $service_ir->shape($input_name)
            // croak "input shape $input_name missing for op $op_name";
        $self->_install_structure_members($meta, $service_ir, $input_shape);
    }

    # Class attributes for the API metadata. We install plain methods
    # (not MooseX::ClassAttribute) - the wire layer only ever invokes
    # these as `$pkg->_api_call`, so a constant-returning method is
    # observationally identical and avoids the MooseX bookkeeping.
    my $api_call    = $op_name;
    my $api_method  = $op->http_method;
    my $api_uri     = $op->http_uri;
    $meta->add_method(_api_call   => sub { $api_call });
    $meta->add_method(_api_method => sub { $api_method });
    $meta->add_method(_api_uri    => sub { $api_uri });

    if (my $output = $op->output_shape) {
        my $returns_pkg = $service_pkg . '::' . $output;
        $meta->add_method(_returns => sub { $returns_pkg });
        # Materialise the output shape as well.
        $self->_materialise_shape_class($service_ir, $output);
    } else {
        $meta->add_method(_returns => sub { undef });
    }
    $meta->add_method(_result_key => sub { undef });

    $self->_materialised_classes->{$op_pkg} = 1;
    return $op_pkg;
}

# Recursively build a Moose class for a structure shape.
sub _materialise_shape_class {
    my ($self, $service_ir, $shape_name) = @_;

    my $service_pkg = 'Paws::' . $service_ir->name;
    my $pkg         = $service_pkg . '::' . $shape_name;

    return $pkg if $self->_materialised_classes->{$pkg};

    my $shape = $service_ir->shape($shape_name)
        // croak "shape $shape_name missing in service " . $service_ir->name;

    # Only structures get classes. Lists/maps/scalars are typed inline.
    return $pkg if !$shape->is_structure;

    my $meta = Class::MOP::Class->create(
        $pkg,
        superclasses => ['Moose::Object'],
    );

    $self->_install_structure_members($meta, $service_ir, $shape);

    # Output shapes carry _request_id; harmless on input shapes.
    $meta->add_attribute(_request_id => (
        is => 'ro', isa => 'Str',
    )) if !$meta->has_attribute('_request_id');

    $self->_materialised_classes->{$pkg} = 1;
    return $pkg;
}

sub _install_structure_members {
    my ($self, $meta, $service_ir, $shape) = @_;

    my %required = map { $_ => 1 } @{ $shape->required_members };

    for my $mname (sort keys %{ $shape->members }) {
        my $m       = $shape->members->{$mname};
        my $isa     = $self->_isa_for_member($service_ir, $m);
        my %extra;
        my @traits;

        # Resolve trait + named-arg pair from member.location.
        if (defined(my $loc = $m->location)) {
            if ($loc eq 'header') {
                push @traits, 'ParamInHeader';
                $extra{header_name} = $m->locationName;
            } elsif ($loc eq 'headers') {
                push @traits, 'ParamInHeaders';
                $extra{header_prefix} = $m->locationName;
            } elsif ($loc eq 'querystring') {
                push @traits, 'ParamInQuery';
                $extra{query_name} = $m->locationName;
            } elsif ($loc eq 'uri') {
                push @traits, 'ParamInURI';
                $extra{uri_name} = $m->locationName;
            }
            # statusCode etc. are output-only and not added as traits.
        } elsif (defined $m->locationName && $m->locationName ne $mname) {
            push @traits, 'NameInRequest';
            $extra{request_name} = $m->locationName;
        }

        # ParamInBody for the payload.
        if (defined $shape->payload && $shape->payload eq $mname) {
            push @traits, 'ParamInBody';
        }

        my %attr = (
            is  => 'ro',
            isa => $isa,
            (@traits ? (traits => \@traits) : ()),
            %extra,
            ($required{$mname} ? (required => 1) : ()),
        );

        $meta->add_attribute($mname => %attr);
    }
}

# Compute the Moose isa-string for a member's target shape. Side
# effect: materialise any nested structure shape that becomes a
# class.
sub _isa_for_member {
    my ($self, $service_ir, $member) = @_;
    return $self->_isa_for_shape($service_ir, $member->shape);
}

sub _isa_for_shape {
    my ($self, $service_ir, $shape_name) = @_;

    my $shape = $service_ir->shape($shape_name)
        // croak "isa: shape $shape_name missing";

    if (my $prim = $PRIMITIVE_TO_ISA{ $shape->type }) {
        return $prim;
    }

    if ($shape->is_structure) {
        $self->_materialise_shape_class($service_ir, $shape_name);
        return 'Paws::' . $service_ir->name . '::' . $shape_name;
    }

    if ($shape->is_list) {
        my $inner = $self->_isa_for_shape($service_ir, $shape->list_member_shape);
        return "ArrayRef[$inner]";
    }

    if ($shape->is_map) {
        my $inner = $self->_isa_for_shape($service_ir, $shape->map_value_shape);
        return "HashRef[$inner]";
    }

    croak "isa: don't know how to map shape=$shape_name type=" . $shape->type;
}

__PACKAGE__->meta->make_immutable;
1;

__END__

=head1 NAME

Paws::Materializer - in-memory construction of Paws::<Service>::*
classes from a Paws::Model::IR::Service

=head1 STATUS

PR9 lands the materialiser as opt-in via PAWS_LAZY=1. The default is
unchanged - Paws->service('X') still goes through `require Paws::X`
when the on-disk class is present.

The materialiser today builds:

  - the service class with one method per operation,
  - operation classes with input attributes + class_has metadata,
  - structure shape classes (input and output),

and is enough to round-trip the Botocore-loader fixture in
t/model/fixtures/tinyservice through the wire layer.

What's deferred to follow-up commits on this same PR:

  - Sereal-backed IR cache (Paws::Materializer::Cache); first-touch
    cost is bounded by the JSON parse + Moose construction.
  - Per-shape lazy materialisation (today: eager when the service
    materialises). Eager is correct and easy to reason about; lazy
    will improve cold-start once benchmarks show it matters.
  - Endpoint rule sets, paginators, retry configuration that vary
    per service.

=cut
