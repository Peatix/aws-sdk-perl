package Paws::Model::IR::ToHash;

# Bridge: convert a Paws::Model::IR::Service back into the
# JSON-shaped hashref that the existing Template Toolkit generator
# (`Paws::API::Builder`'s `api_struct` consumer) expects.
#
# Why a bridge rather than rewriting templates: the byte-identical
# regen CI gate (PR 09) protects the generator's output. Reshaping
# the IR back to the hash the templates already understand keeps that
# gate green by construction; rewriting templates would invalidate
# every fixture in `auto-lib/` (which we just dropped, but other
# downstream consumers may still rely on).
#
# The transformation is lossy in one direction (IR -> hash drops
# typed-object metadata) but lossless in the other (botocore JSON ->
# IR -> hash recovers the original JSON structure).

use strict;
use warnings;
use v5.20;

use Paws::Model::IR;

# Public entry: $hash = Paws::Model::IR::ToHash->reshape($ir);
sub reshape {
    my ($class, $ir) = @_;

    my %meta = (
        endpointPrefix   => $ir->endpoint_prefix,
        serviceFullName  => $ir->full_name,
        apiVersion       => $ir->api_version,
        protocol         => $ir->protocol,
    );
    $meta{serviceId}        = $ir->name              if defined $ir->name;
    $meta{signingName}      = $ir->signing_name      if defined $ir->signing_name;
    $meta{jsonVersion}      = $ir->json_version      if defined $ir->json_version;
    $meta{targetPrefix}     = $ir->target_prefix     if defined $ir->target_prefix;
    $meta{signatureVersion} = $ir->signature_version if defined $ir->signature_version;
    $meta{uid}              = $ir->uid               if defined $ir->uid;

    my %operations;
    for my $op_name ($ir->operation_names) {
        $operations{$op_name} = _operation_to_hash($ir->operation($op_name));
    }

    my %shapes;
    for my $shape_name ($ir->shape_names) {
        $shapes{$shape_name} = _shape_to_hash($ir->shape($shape_name));
    }

    my %hash = (
        version       => '2.0',
        metadata      => \%meta,
        operations    => \%operations,
        shapes        => \%shapes,
    );
    $hash{documentation} = $ir->documentation if defined $ir->documentation;

    return \%hash;
}

sub _operation_to_hash {
    my ($op) = @_;

    my %h = (
        name => $op->name,
        http => {
            method     => $op->http_method,
            requestUri => $op->http_uri,
        },
    );
    $h{http}{responseCode} = $op->http_status_code if defined $op->http_status_code;
    $h{input}              = { shape => $op->input_shape  } if defined $op->input_shape;
    $h{output}             = { shape => $op->output_shape } if defined $op->output_shape;
    if (@{ $op->error_shapes }) {
        $h{errors} = [ map { { shape => $_ } } @{ $op->error_shapes } ];
    }
    $h{documentation} = $op->documentation if defined $op->documentation;
    $h{deprecated}    = \1                 if $op->deprecated;
    return \%h;
}

sub _shape_to_hash {
    my ($shape) = @_;

    my %h = ( type => $shape->type );

    if ($shape->is_structure) {
        my %members;
        for my $mname (sort keys %{ $shape->members }) {
            $members{$mname} = _member_to_hash($shape->members->{$mname});
        }
        $h{members}  = \%members;
        $h{required} = $shape->required_members if @{ $shape->required_members };
        $h{payload}  = $shape->payload          if defined $shape->payload;
    }
    elsif ($shape->is_list) {
        $h{member} = {
            shape => $shape->list_member_shape,
            (defined $shape->list_member_locationName
                ? (locationName => $shape->list_member_locationName)
                : ()),
        };
        $h{flattened} = \1 if $shape->flattened;
    }
    elsif ($shape->is_map) {
        $h{key}   = { shape => $shape->map_key_shape   } if defined $shape->map_key_shape;
        $h{value} = { shape => $shape->map_value_shape } if defined $shape->map_value_shape;
    }
    elsif ($shape->type eq 'string' && @{ $shape->enum_values }) {
        $h{enum} = [ @{ $shape->enum_values } ];
    }

    $h{documentation} = $shape->documentation if defined $shape->documentation;
    return \%h;
}

sub _member_to_hash {
    my ($m) = @_;
    my %h = ( shape => $m->shape );
    $h{location}      = $m->location      if defined $m->location;
    $h{locationName}  = $m->locationName  if defined $m->locationName;
    $h{streaming}     = \1                if $m->streaming;
    $h{documentation} = $m->documentation if defined $m->documentation;
    $h{deprecated}    = \1                if $m->deprecated;
    return \%h;
}

1;

__END__

=head1 NAME

Paws::Model::IR::ToHash - convert a Paws::Model::IR::Service back into
the JSON-shaped hashref that L<Paws::API::Builder> consumes

=head1 SYNOPSIS

  use Paws::Model::Loader::Botocore;
  use Paws::Model::IR::ToHash;

  my $loader = Paws::Model::Loader::Botocore->new;
  my $ir     = $loader->load('botocore/.../service-2.json');
  my $hash   = Paws::Model::IR::ToHash->reshape($ir);

  # $hash is shaped like the original service-2.json (modulo
  # ordering and any IR-only fields that have no JSON equivalent).

=head1 STATUS

Used by C<Paws::API::Builder> from PR 20 of the maintenance-reduction
stack to make the AOT generator IR-exclusive: the builder loads via
C<Paws::Model::Loader::Botocore>, then this module reshapes the IR
back to the form templates already expect. The byte-identical regen
CI gate from PR 09 protects against any unintended template-output
drift.

=cut
