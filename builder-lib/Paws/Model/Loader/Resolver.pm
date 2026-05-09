package Paws::Model::Loader::Resolver;

# Loader resolver: given a service name, find the on-disk source
# files in either the botocore or the smithy layout and return a
# Paws::Model::IR::Service via the appropriate loader.
#
# Default order: smithy first, botocore fallback. Override via
#   PAWS_LOADER_ORDER=Botocore,Smithy
# if a regression appears on a specific service.

use strict;
use warnings;
use v5.10;

use Carp qw(croak);
use File::Spec;

use Paws::Model::IR;
use Paws::Model::Loader::Botocore;
use Paws::Model::Loader::Smithy;

use Moose;

# Resolve the dist's installed share/ directory at runtime so the
# defaults can prefer the vendored, fully-self-contained tree
# (`<install-prefix>/auto/share/dist/Paws/{smithy,botocore}`) over
# the in-tree dev paths. File::ShareDir::dist_dir dies for an
# uninstalled / unregistered dist, which is the normal state during
# in-tree development; eval-wrap and fall through. Cached at
# package scope: dist_dir does file system probing and the result
# never changes for the life of the process.
my $SHARE_DIR;
sub _share_dir {
    return $SHARE_DIR if defined $SHARE_DIR;
    require File::ShareDir;
    my $dir = eval { File::ShareDir::dist_dir('Paws') };
    $SHARE_DIR = defined $dir ? $dir : '';
    return $SHARE_DIR;
}

# Where to look for source files. Each path is checked in turn.
#
# Default order:
#   1. The dist's installed sharedir (populated by `dzil build` from
#      script/paws-vendor-{smithy,botocore}; see dist.ini's [ShareDir]
#      and the `dist-prep` Makefile target). This is the path that
#      makes a plain `cpanm Paws` install actually work end-to-end —
#      see issue #80.
#   2. The in-tree dev path (CWD-relative). Populated by
#      `make vendor-{smithy,botocore}` for contributors who haven't
#      done `dzil build` and `cpanm` of the resulting tarball. Also
#      acts as a fallback for the post-stack19 dist where auto-lib/
#      stops shipping.
#
# Both paths are tried for every service before giving up; this
# keeps in-tree dev work going against a freshly-vendored share/
# tree even when an installed Paws happens to be earlier in @INC.
has botocore_search_paths => (
    is      => 'ro',
    isa     => 'ArrayRef[Str]',
    lazy    => 1,
    default => sub {
        my @paths;
        if (my $dir = _share_dir()) {
            push @paths, File::Spec->catdir($dir, 'botocore');
        }
        push @paths, 'share/botocore';
        push @paths, 'botocore/botocore/data';
        return \@paths;
    },
);

has smithy_search_paths => (
    is      => 'ro',
    isa     => 'ArrayRef[Str]',
    lazy    => 1,
    default => sub {
        my @paths;
        if (my $dir = _share_dir()) {
            push @paths, File::Spec->catdir($dir, 'smithy');
        }
        push @paths, 'share/smithy';
        return \@paths;
    },
);

# Order in which loaders are tried. The first one that finds a source
# file wins. Defaults from PAWS_LOADER_ORDER if set, else
# 'Smithy,Botocore'.
has order => (
    is      => 'ro',
    isa     => 'ArrayRef[Str]',
    lazy    => 1,
    default => sub {
        my $env = $ENV{PAWS_LOADER_ORDER};
        if (defined $env && length $env) {
            return [ split /,/, $env ];
        }
        return [ 'Smithy', 'Botocore' ];
    },
);

# Loader instance per name.
has _loaders => (
    is      => 'ro',
    isa     => 'HashRef',
    lazy    => 1,
    default => sub {
        return {
            Smithy   => Paws::Model::Loader::Smithy->new,
            Botocore => Paws::Model::Loader::Botocore->new,
        };
    },
);

# Public entry: load the named service via the first loader in the
# resolution order that can find a source file for it.
#
# Returns ($ir, $loader_name).
sub load_service {
    my ($self, $service_name) = @_;

    for my $loader_name (@{ $self->order }) {
        my $path = $self->_find_path_for($loader_name, $service_name);
        next if !defined $path;
        my $loader = $self->_loaders->{$loader_name}
            // croak "resolver: no loader instance for $loader_name";
        my $ir = $loader->load($path);
        return wantarray ? ($ir, $loader_name) : $ir;
    }

    croak "resolver: no source file found for service=$service_name in any of "
        . join(',', @{ $self->order });
}

# For each loader name, look in the configured search paths for a
# matching source file.
sub _find_path_for {
    my ($self, $loader_name, $service_name) = @_;

    if ($loader_name eq 'Smithy') {
        for my $base (@{ $self->smithy_search_paths }) {
            for my $candidate (
                # Flat layout: share/smithy/<service>.smithy.json
                File::Spec->catfile($base, "$service_name.smithy.json"),
                File::Spec->catfile($base, lc($service_name) . ".smithy.json"),
                # Nested layout (test fixtures, vendored mirrors):
                # share/smithy/<service>/<service>.smithy.json
                File::Spec->catfile($base, $service_name, "$service_name.smithy.json"),
                File::Spec->catfile($base, lc($service_name), lc($service_name) . ".smithy.json"),
            ) {
                return $candidate if -r $candidate;
            }
        }
        return undef;
    }

    if ($loader_name eq 'Botocore') {
        for my $base (@{ $self->botocore_search_paths }) {
            # botocore/botocore/data/<endpoint-prefix>/<date>/service-2.json
            # service_name we get from the user is the SDK name (e.g. EC2);
            # botocore uses the endpoint prefix in the directory name
            # (e.g. 'ec2'). Try a few normalisations.
            for my $candidate_dir (
                File::Spec->catdir($base, $service_name),
                File::Spec->catdir($base, lc $service_name),
            ) {
                next if !-d $candidate_dir;
                # Find the most recent dated subdirectory.
                opendir(my $dh, $candidate_dir) or next;
                my @dates = sort grep {
                    /^\d{4}-\d{2}-\d{2}$/
                    && -f File::Spec->catfile($candidate_dir, $_, 'service-2.json')
                } readdir $dh;
                closedir $dh;
                next if !@dates;
                return File::Spec->catfile($candidate_dir, $dates[-1], 'service-2.json');
            }
        }
        return undef;
    }

    croak "resolver: unknown loader name '$loader_name'";
}

__PACKAGE__->meta->make_immutable;
1;

__END__

=head1 NAME

Paws::Model::Loader::Resolver - find and load a service via the first
available loader in resolution order

=head1 SYNOPSIS

  use Paws::Model::Loader::Resolver;

  my $resolver = Paws::Model::Loader::Resolver->new(
      smithy_search_paths   => ['share/smithy'],
      botocore_search_paths => ['botocore/botocore/data'],
  );

  my ($ir, $loader_name) = $resolver->load_service('IAM');
  say "loaded via $loader_name";

  # Override the default order at process scope:
  $ENV{PAWS_LOADER_ORDER} = 'Botocore,Smithy';

=cut
