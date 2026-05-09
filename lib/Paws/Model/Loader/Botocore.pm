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
use FindBin ();

use Paws::Model::IR;

# Loaded lazily on first use; cached at package level. Keyed by the
# service's botocore endpointPrefix (e.g. `iam`, `sts`, `s3`), since
# that's what `etc/_endpoints.json` keys by. The file is a snapshot
# of the legacy pplu/botocore _regions.json from before the upstream
# switched to endpoint-rule-set-1.json. Vendored alongside the dist.
my %ENDPOINT_RULES_CACHE;
my $ENDPOINT_RULES_LOADED = 0;

sub name { 'botocore' }

# Public entry point. Pass either a string path to service-2.json
# or a hashref with at least { service_2 => $path }.
sub load {
    my ($self, $arg) = @_;

    my $service_2_path;
    my $name_override;
    my %companions;
    if (ref $arg eq 'HASH') {
        $service_2_path = $arg->{service_2}
            or die "Paws::Model::Loader::Botocore->load: 'service_2' required\n";
        %companions    = %{ $arg->{companions} // {} };
        $name_override = $arg->{name_override};
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

    return $self->_build_service(
        $api,
        paginators    => $paginators,
        name_override => $name_override,
    );
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
    #
    # Callers (resolver) may also pass a `name_override` to honour the
    # ~70-entry directory-name -> SDK-name table that Paws has
    # historically diverged from upstream serviceId on (see
    # Paws::API::Builder::Paws->servicefile_to_class_overrides /
    # Paws::Model::Loader::Resolver's vendored copy).
    my $sdk_name;
    if (defined $opts{name_override} && length $opts{name_override}) {
        $sdk_name = $opts{name_override};
    } else {
        $sdk_name = $meta->{serviceId} // $meta->{endpointPrefix} // 'unknown';
        substr($sdk_name, 0, 1) = uc(substr($sdk_name, 0, 1));
        $sdk_name =~ s/\s+//g;
    }

    my $endpoint_prefix = $meta->{endpointPrefix} // 'unknown';
    my $region_rules = _region_rules_for($endpoint_prefix);

    return Paws::Model::IR::Service->new(
        name              => $sdk_name,
        full_name         => $meta->{serviceFullName} // $meta->{endpointPrefix} // 'unknown',
        endpoint_prefix   => $endpoint_prefix,
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
        region_rules      => $region_rules,
    );
}

# Find and decode etc/_endpoints.json once per process. Looks first
# alongside the dist (resolves Paws.pm's lib/ -> dist root -> etc/),
# then falls back to a botocore checkout if present.
sub _region_rules_for {
    my ($endpoint_prefix) = @_;
    _load_endpoint_rules() if !$ENDPOINT_RULES_LOADED;
    my $rules = $ENDPOINT_RULES_CACHE{$endpoint_prefix};
    return defined $rules ? $rules : undef;
}

sub _load_endpoint_rules {
    $ENDPOINT_RULES_LOADED = 1;

    # Resolve etc/_endpoints.json via @INC: lib/Paws.pm lives at
    # <dist>/lib/Paws.pm, so the dist root is two `..` up from the
    # @INC entry that contains lib/Paws.pm. Most installs put @INC
    # entries that point at lib/.
    require Paws;
    (my $rel_paws = 'Paws.pm') =~ s{::}{/}g;
    my $paws_path = $INC{$rel_paws};
    my @candidates;
    if (defined $paws_path) {
        my $lib_dir = (File::Spec->splitpath($paws_path))[1];
        my $dist_root = File::Spec->canonpath(File::Spec->catdir($lib_dir, File::Spec->updir, File::Spec->updir));
        push @candidates, File::Spec->catfile($dist_root, 'etc', '_endpoints.json');
    }
    push @candidates, 'etc/_endpoints.json';
    push @candidates, 'botocore/botocore/data/_endpoints.json';

    for my $path (@candidates) {
        next if !-r $path;
        my $struct = eval { JSON::MaybeXS->new->decode(read_text($path)) };
        next if !$struct;
        for my $key (keys %$struct) {
            next if $key =~ /^_/;
            $ENDPOINT_RULES_CACHE{$key} = $struct->{$key};
        }
        return;
    }
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
    if (my $in = $op->{input}) {
        $args{input_shape} = $in->{shape};
        $args{input_top_level_element}   = $in->{locationName};
        $args{input_top_level_namespace} = $in->{xmlNamespace}{uri}
            if ref $in->{xmlNamespace};
    }
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
        if (my $k = $shape->{key}) {
            $args{map_key_shape}        = $k->{shape};
            $args{map_key_locationName} = $k->{locationName};
        }
        if (my $v = $shape->{value}) {
            $args{map_value_shape}        = $v->{shape};
            $args{map_value_locationName} = $v->{locationName};
        }
        $args{flattened} = $shape->{flattened} ? 1 : 0;
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
