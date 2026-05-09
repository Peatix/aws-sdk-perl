package Paws::Model::Loader::Botocore;

# Loader for botocore-format service descriptions
# (botocore/botocore/data/<service>/<date>/service-2.json).
#
# Reads service-2.json (and the documented companion files when they
# exist next to it: paginators-1.json, examples-1.json) into the
# source-format-independent IR (Paws::Model::IR).
#
# Companion files that are NOT yet absorbed into the IR (waiters,
# encoders, retries, endpoint-rule-set, sdk-extras): the existing
# builder still reads these directly via Paws::API::Builder. Folding
# them into the IR is a follow-up commit that will arrive when
# Paws::API::Builder is refactored to consume IR exclusively.

use strict;
use warnings;
use v5.10;

use Moose;
with 'Paws::Model::Loader';

use JSON::MaybeXS qw();
use File::Slurper qw(read_text);
use File::Spec;

use Paws::Model::IR;

sub name { 'botocore' }

# Public entry point. Pass either a string path to service-2.json
# or a hashref with at least { service_2 => $path }.
sub load {
    my ($self, $arg) = @_;

    my $service_2_path;
    my %companions;
    if (ref $arg eq 'HASH') {
        $service_2_path = $arg->{service_2}
            or die "Paws::Model::Loader::Botocore->load: 'service_2' required\n";
        %companions = %{ $arg->{companions} // {} };
    } else {
        $service_2_path = $arg;
    }

    -r $service_2_path
        or die "Paws::Model::Loader::Botocore->load: cannot read $service_2_path\n";

    my $api = $self->_decode_json(read_text($service_2_path));

    # Sniff sibling companion files if we weren't told where they are.
    my $dir = (File::Spec->splitpath($service_2_path))[1];
    for my $stem (qw(paginators-1 examples-1)) {
        my $key = $stem;
        $key =~ s/-1$//;
        next if exists $companions{$key};
        my $sibling = File::Spec->catfile($dir, "$stem.json");
        $companions{$key} = $sibling if -r $sibling;
    }

    my $paginators = {};
    if (my $p = $companions{paginators}) {
        my $struct = $self->_decode_json(read_text($p));
        $paginators = $struct->{pagination} // {};
    }

    return $self->_build_service($api, paginators => $paginators);
}

sub _decode_json {
    my ($self, $bytes) = @_;
    return JSON::MaybeXS->new->decode($bytes);
}

sub _build_service {
    my ($self, $api, %opts) = @_;

    my $meta     = $api->{metadata} // {};
    my $protocol = $meta->{protocol} // die "Paws::Model::Loader::Botocore: metadata.protocol missing\n";

    my %shapes;
    for my $name (sort keys %{ $api->{shapes} // {} }) {
        $shapes{$name} = $self->_build_shape($name, $api->{shapes}{$name});
    }

    my %operations;
    my $paginators = $opts{paginators} // {};
    for my $name (sort keys %{ $api->{operations} // {} }) {
        $operations{$name} = $self->_build_operation(
            $name,
            $api->{operations}{$name},
            $paginators->{$name},
        );
    }

    # `serviceId` is what gets concatenated into Perl class names
    # (e.g. `Paws::<serviceId>::DescribeFoo`), so it has to be a
    # legal Perl-identifier fragment. Botocore stores some IDs with
    # whitespace (`Route 53`, `S3 Tables`) that the auto-lib
    # generator's Paws::API::Builder::Paws->boto_file_information
    # used to fix up; mirror that fix-up here so the IR is the
    # single source of normalised identifiers.
    my $sdk_name = $meta->{serviceId} // $meta->{endpointPrefix} // 'unknown';
    substr($sdk_name, 0, 1) = uc(substr($sdk_name, 0, 1));
    $sdk_name =~ s/\s+//g;

    return Paws::Model::IR::Service->new(
        name              => $sdk_name,
        full_name         => $meta->{serviceFullName} // $meta->{endpointPrefix} // 'unknown',
        endpoint_prefix   => $meta->{endpointPrefix} // 'unknown',
        signing_name      => $meta->{signingName},
        api_version       => $meta->{apiVersion} // '0000-00-00',
        protocol          => $protocol,
        json_version      => $meta->{jsonVersion},
        target_prefix     => $meta->{targetPrefix},
        signature_version => $meta->{signatureVersion},
        uid               => $meta->{uid},
        documentation     => $api->{documentation},
        operations        => \%operations,
        shapes            => \%shapes,
    );
}

sub _build_operation {
    my ($self, $name, $op, $paginator) = @_;

    my $http = $op->{http} // {};

    my %args = (
        name          => $name,
        http_method   => $http->{method} // 'POST',
        http_uri      => $http->{requestUri} // '/',
        documentation => $op->{documentation},
        deprecated    => $op->{deprecated} ? 1 : 0,
    );

    $args{http_status_code} = $http->{responseCode} if defined $http->{responseCode};
    $args{input_shape}      = $op->{input}{shape}   if $op->{input};
    $args{output_shape}     = $op->{output}{shape}  if $op->{output};

    if ($op->{errors}) {
        $args{error_shapes} = [ map { $_->{shape} } @{ $op->{errors} } ];
    }

    $args{paginator} = $paginator if $paginator;

    return Paws::Model::IR::Operation->new(%args);
}

sub _build_shape {
    my ($self, $name, $shape) = @_;

    my %args = (
        name          => $name,
        type          => $shape->{type} // 'string',
        documentation => $shape->{documentation},
    );

    my $type = $args{type};

    if ($type eq 'structure') {
        my %members;
        for my $mname (sort keys %{ $shape->{members} // {} }) {
            $members{$mname} = $self->_build_member(
                $mname,
                $shape->{members}{$mname},
            );
        }
        $args{members}          = \%members;
        $args{required_members} = $shape->{required} // [];
        $args{payload}          = $shape->{payload} if defined $shape->{payload};
    }
    elsif ($type eq 'list') {
        my $member = $shape->{member} // {};
        $args{list_member_shape}        = $member->{shape};
        $args{list_member_locationName} = $member->{locationName};
        $args{flattened}                = $shape->{flattened} ? 1 : 0;
    }
    elsif ($type eq 'map') {
        $args{map_key_shape}   = $shape->{key}{shape}   if $shape->{key};
        $args{map_value_shape} = $shape->{value}{shape} if $shape->{value};
    }
    elsif ($type eq 'string' && $shape->{enum}) {
        $args{enum_values} = $shape->{enum};
    }

    return Paws::Model::IR::Shape->new(%args);
}

sub _build_member {
    my ($self, $name, $member) = @_;
    my $shape = $member->{shape}
        // die "member $name has no target shape\n";
    return Paws::Model::IR::Member->new(
        name          => $name,
        shape         => $shape,
        location      => $member->{location},
        locationName  => $member->{locationName},
        streaming     => $member->{streaming} ? 1 : 0,
        documentation => $member->{documentation},
        deprecated    => $member->{deprecated} ? 1 : 0,
    );
}

__PACKAGE__->meta->make_immutable;
1;

__END__

=head1 NAME

Paws::Model::Loader::Botocore - load a botocore service-2.json into
Paws::Model::IR

=head1 SYNOPSIS

  use Paws::Model::Loader::Botocore;

  my $loader = Paws::Model::Loader::Botocore->new;
  my $service = $loader->load('botocore/botocore/data/iam/2010-05-08/service-2.json');

  for my $op ($service->operation_names) {
      say sprintf('op=%s input=%s output=%s',
          $op,
          $service->operation($op)->input_shape  // '-',
          $service->operation($op)->output_shape // '-',
      );
  }

=head1 STATUS

PR8 lands the loader as a standalone module. PR8's "byte-identical
auto-lib regen" CI gate is not yet wired up because that requires
refactoring Paws::API::Builder to consume IR (a separate, larger
commit). PR9 (lazy materialiser) consumes IR directly via this loader.

=cut
