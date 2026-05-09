package Paws::Model::Loader::Smithy;

# Loader for Smithy 2.0 AST JSON. Reads a single .json file containing
# the AST and normalises it to Paws::Model::IR.
#
# Smithy AST docs:
#   https://smithy.io/2.0/spec/json-ast.html
#
# The IR is the same shape that the Botocore loader produces, so
# downstream consumers (Paws::API::Builder once refactored,
# Paws::Model::Materializer, Paws::Model::Materializer::Moo) work with both
# loaders without knowing which source they were fed from.
#
# Smithy carries a richer model than botocore JSON (service-level
# traits like @aws.api#service, operation-level traits like
# @smithy.api#http, member-level traits like @smithy.api#jsonName).
# This loader normalises the parts that overlap with botocore JSON.
# Smithy-only constructs (event streams, document type, mixins,
# resources) are out of scope for PR14 - they'll be folded in once
# the IR grows additional fields.

use strict;
use warnings;
use v5.10;

use Moose;
with 'Paws::Model::Loader';

use JSON::MaybeXS qw();
use File::Slurper qw(read_text);
use Carp qw(croak);

use Paws::Model::IR;

sub name { 'smithy' }

# Maps Smithy protocol-trait IDs to the `protocol` value the IR uses
# (which matches botocore's `metadata.protocol`).
my %SMITHY_PROTOCOL_TRAIT = (
    'aws.protocols#awsJson1_0'  => 'json',
    'aws.protocols#awsJson1_1'  => 'json',
    'aws.protocols#restJson1'   => 'rest-json',
    'aws.protocols#awsQuery'    => 'query',
    'aws.protocols#ec2Query'    => 'ec2',
    'aws.protocols#restXml'     => 'rest-xml',
);

# JSON-version sub-trait for awsJson*; carried into IR->json_version.
my %SMITHY_PROTOCOL_JSON_VERSION = (
    'aws.protocols#awsJson1_0'  => '1.0',
    'aws.protocols#awsJson1_1'  => '1.1',
);

# Public entry. Pass either a path to the .smithy.json file or a
# hashref { ast => $path }.
sub load {
    my ($self, $arg) = @_;
    my $path;
    if (ref $arg eq 'HASH') {
        $path = $arg->{ast}
            // croak "Paws::Model::Loader::Smithy->load: 'ast' required\n";
    } else {
        $path = $arg;
    }
    -r $path
        or die "Paws::Model::Loader::Smithy->load: cannot read $path\n";

    my $ast = JSON::MaybeXS->new->decode(read_text($path));

    return $self->_build_service($ast);
}

sub _build_service {
    my ($self, $ast) = @_;

    my $shapes = $ast->{shapes} // croak "Smithy AST has no shapes\n";

    # Find the service shape.
    my ($svc_id, $svc_shape);
    for my $id (sort keys %$shapes) {
        if (($shapes->{$id}{type} // '') eq 'service') {
            $svc_id    = $id;
            $svc_shape = $shapes->{$id};
            last;
        }
    }
    croak "Smithy AST has no service shape\n" if !$svc_shape;

    my $svc_traits = $svc_shape->{traits} // {};
    my $protocol;
    my $json_version;
    for my $tid (keys %SMITHY_PROTOCOL_TRAIT) {
        if (exists $svc_traits->{$tid}) {
            $protocol     = $SMITHY_PROTOCOL_TRAIT{$tid};
            $json_version = $SMITHY_PROTOCOL_JSON_VERSION{$tid};
            last;
        }
    }
    croak "Smithy AST: no recognised protocol trait on service $svc_id\n"
        if !defined $protocol;

    # @aws.api#service carries endpointPrefix / sdkId.
    my $api_service_trait = $svc_traits->{'aws.api#service'} // {};
    my $endpoint_prefix   = $api_service_trait->{endpointPrefix} // _local_part($svc_id);
    my $sdk_id            = $api_service_trait->{sdkId}          // _local_part($svc_id);

    # Operations live in the service shape's operations[].
    my @op_targets =
        map { $_->{target} } @{ $svc_shape->{operations} // [] };

    my %operations;
    for my $tgt (@op_targets) {
        my $op_shape = $shapes->{$tgt}
            or next;
        my $op_name  = _local_part($tgt);
        $operations{$op_name} = $self->_build_operation($op_name, $op_shape);
    }

    # All structures (and the supporting list/map/scalar shapes) become
    # IR shapes.
    my %ir_shapes;
    for my $id (sort keys %$shapes) {
        my $s = $shapes->{$id};
        next if ($s->{type} // '') eq 'service';
        next if ($s->{type} // '') eq 'operation';
        my $local = _local_part($id);
        $ir_shapes{$local} = $self->_build_shape($local, $s);
    }

    # Service-level documentation comes from the @smithy.api#documentation trait.
    my $svc_doc = ($svc_traits->{'smithy.api#documentation'} // undef);

    return Paws::Model::IR::Service->new(
        name              => $sdk_id,
        full_name         => $api_service_trait->{sdkId} // $sdk_id,
        endpoint_prefix   => $endpoint_prefix,
        signing_name      => $api_service_trait->{arnNamespace},
        api_version       => $svc_shape->{version} // '0000-00-00',
        protocol          => $protocol,
        json_version      => $json_version,
        target_prefix     => $api_service_trait->{sdkId},
        signature_version => 'v4',
        uid               => sprintf('%s-%s', $endpoint_prefix, ($svc_shape->{version} // '0000-00-00')),
        documentation     => $svc_doc,
        operations        => \%operations,
        shapes            => \%ir_shapes,
    );
}

sub _build_operation {
    my ($self, $name, $op) = @_;

    my $traits = $op->{traits} // {};
    my $http   = $traits->{'smithy.api#http'} // {};

    my %args = (
        name          => $name,
        http_method   => $http->{method} // 'POST',
        http_uri      => $http->{uri}    // '/',
        documentation => $traits->{'smithy.api#documentation'},
        deprecated    => exists $traits->{'smithy.api#deprecated'} ? 1 : 0,
    );
    $args{http_status_code} = $http->{code} if defined $http->{code};

    # smithy.api#Unit is Smithy's placeholder for "operation has no
    # input/output payload". The IR represents that as undef so the
    # materialiser does not chase a non-existent `Unit` shape.
    if (my $in = $op->{input}) {
        my $tgt = $in->{target} // '';
        $args{input_shape} = _local_part($tgt)
            if $tgt ne '' && $tgt ne 'smithy.api#Unit';
    }
    if (my $out = $op->{output}) {
        my $tgt = $out->{target} // '';
        $args{output_shape} = _local_part($tgt)
            if $tgt ne '' && $tgt ne 'smithy.api#Unit';
    }

    if ($op->{errors}) {
        $args{error_shapes} = [ map { _local_part($_->{target}) } @{ $op->{errors} } ];
    }

    return Paws::Model::IR::Operation->new(%args);
}

sub _build_shape {
    my ($self, $name, $shape) = @_;

    my $type   = $shape->{type} // 'string';
    my $traits = $shape->{traits} // {};

    my %args = (
        name          => $name,
        type          => $type,
        documentation => $traits->{'smithy.api#documentation'},
    );

    if ($type eq 'structure') {
        my %members;
        for my $mname (sort keys %{ $shape->{members} // {} }) {
            $members{$mname} = $self->_build_member(
                $mname,
                $shape->{members}{$mname},
            );
        }
        my @required;
        for my $mname (keys %{ $shape->{members} // {} }) {
            my $m_traits = $shape->{members}{$mname}{traits} // {};
            push @required, $mname if exists $m_traits->{'smithy.api#required'};
        }
        $args{members}          = \%members;
        $args{required_members} = [ sort @required ];

        # @smithy.api#httpPayload on a member identifies the payload.
        for my $mname (keys %{ $shape->{members} // {} }) {
            my $m_traits = $shape->{members}{$mname}{traits} // {};
            if (exists $m_traits->{'smithy.api#httpPayload'}) {
                $args{payload} = $mname;
                last;
            }
        }
    }
    elsif ($type eq 'list') {
        my $member = $shape->{member} // {};
        $args{list_member_shape}        = _local_part($member->{target});
        my $m_traits = $member->{traits} // {};
        $args{list_member_locationName} = $m_traits->{'smithy.api#xmlName'} // $m_traits->{'smithy.api#jsonName'};
        $args{flattened}                = exists $traits->{'smithy.api#xmlFlattened'} ? 1 : 0;
    }
    elsif ($type eq 'map') {
        $args{map_key_shape}   = _local_part($shape->{key}{target})   if $shape->{key};
        $args{map_value_shape} = _local_part($shape->{value}{target}) if $shape->{value};
    }
    elsif ($type eq 'enum') {
        # Smithy 2.0 introduced `enum` as a first-class shape; the IR
        # still calls primitives 'string' so callers' switch tables
        # don't need a new branch.
        $args{type} = 'string';
        $args{enum_values} = [ sort keys %{ $shape->{members} // {} } ];
    }
    elsif ($type eq 'string' && (my $enum_trait = $traits->{'smithy.api#enum'})) {
        # Smithy 1.0-style enum string.
        $args{enum_values} = [ map { $_->{value} } @$enum_trait ];
    }

    return Paws::Model::IR::Shape->new(%args);
}

sub _build_member {
    my ($self, $name, $member) = @_;

    my $traits = $member->{traits} // {};

    # Smithy member -> IR member: the wire-location info comes from
    # member traits (httpHeader / httpQuery / httpLabel).
    my $location;
    my $location_name;
    if (exists $traits->{'smithy.api#httpHeader'}) {
        $location      = 'header';
        $location_name = $traits->{'smithy.api#httpHeader'};
    } elsif (exists $traits->{'smithy.api#httpPrefixHeaders'}) {
        $location      = 'headers';
        $location_name = $traits->{'smithy.api#httpPrefixHeaders'};
    } elsif (exists $traits->{'smithy.api#httpQuery'}) {
        $location      = 'querystring';
        $location_name = $traits->{'smithy.api#httpQuery'};
    } elsif (exists $traits->{'smithy.api#httpLabel'}) {
        $location      = 'uri';
        # The label name is the structure member name in Smithy's URI
        # template (e.g. `/things/{ThingId}`); IR carries it verbatim.
        $location_name = $name;
    }

    # Fallback: jsonName / xmlName is the body-rename equivalent of
    # botocore's locationName.
    $location_name //= $traits->{'smithy.api#jsonName'};
    $location_name //= $traits->{'smithy.api#xmlName'};

    return Paws::Model::IR::Member->new(
        name          => $name,
        shape         => _local_part($member->{target}),
        location      => $location,
        locationName  => $location_name,
        streaming     => exists $traits->{'smithy.api#streaming'} ? 1 : 0,
        documentation => $traits->{'smithy.api#documentation'},
        deprecated    => exists $traits->{'smithy.api#deprecated'} ? 1 : 0,
    );
}

# 'com.example#Foo' -> 'Foo'
sub _local_part {
    my ($id) = @_;
    return undef if !defined $id;
    return $id   if $id !~ /#/;
    my ($_ns, $local) = split /#/, $id, 2;
    return $local;
}

__PACKAGE__->meta->make_immutable;
1;

__END__

=head1 NAME

Paws::Model::Loader::Smithy - load a Smithy 2.0 AST JSON file into
Paws::Model::IR

=head1 SYNOPSIS

  use Paws::Model::Loader::Smithy;

  my $loader = Paws::Model::Loader::Smithy->new;
  my $service = $loader->load('share/smithy/iam.smithy.json');

  for my $op ($service->operation_names) {
      say "$op";
  }

=head1 STATUS

PR14 lands the Smithy loader as a peer of Paws::Model::Loader::Botocore.
Both produce the same IR. PR15 adds loader resolution order so a service
that has both a botocore JSON and a smithy AST file prefers the smithy
one (where the IR diverges, smithy carries more information).

=head1 SEE ALSO

L<Paws::Model::IR>, L<Paws::Model::Loader::Botocore>,
L<docs/loaders.md|file:docs/loaders.md>.

=cut
