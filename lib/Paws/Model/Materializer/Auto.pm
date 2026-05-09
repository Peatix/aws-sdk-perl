package Paws::Model::Materializer::Auto;

# Opt-in hook that switches Paws->load_class to use the materialiser
# when a class isn't already available on disk.
#
# Usage:
#
#   perl -MPaws::Model::Materializer::Auto -e '...'
#   PERL5OPT=-MPaws::Model::Materializer::Auto your-script.pl
#
# Or in code:
#
#   BEGIN { use Paws::Model::Materializer::Auto }
#   use Paws;
#
# Environment variables:
#
#   PAWS_LAZY                One of '0' / '1' / unset.
#                            '0' disables (no-op import).
#                            '1' or unset enables (this module would
#                            not be loaded if the user didn't want
#                            it).
#
#   PAWS_LAZY_FORCE          If '1', materialise even when an on-disk
#                            class exists (useful for testing the
#                            materialised path against the AOT path).
#                            Defaults to '0'.
#
#   PAWS_LAZY_DIR            Directory containing source files.
#                            Default: search 'share/smithy' and
#                            'botocore/botocore/data' relative to
#                            the current directory.
#
#   PAWS_OO_BACKEND          'Moo' (default from PR13) or 'Moose'
#                            (escape hatch). Selects the materialiser
#                            backend.
#
# Status: PR10 wires the opt-in in. The dist-layout change (drop
# auto-lib/, ship JSON in share/, make this the default) is the
# maintainer-driven major-version-bump moment that the plan flagged
# as needing a POD-strategy decision. Until then, this module is
# the bridge.

use strict;
use warnings;
use v5.10;

use Carp qw(croak);

# Lazy-load Paws so this module can be required before Paws.
sub import {
    my ($class) = @_;

    return if defined $ENV{PAWS_LAZY} && $ENV{PAWS_LAZY} eq '0';

    require Paws;
    _install_hook();
    return;
}

# Only install once per process.
my $installed = 0;

sub _install_hook {
    return if $installed;
    $installed = 1;

    require Module::Runtime;

    # Stash the original load_class so we can fall through to it.
    my $orig = \&Paws::load_class;

    {
        no warnings 'redefine';
        no strict 'refs';
        *{'Paws::load_class'} = sub {
            my ($invocant, @classes) = @_;

            my $force = $ENV{PAWS_LAZY_FORCE} ? 1 : 0;

            for my $class (@classes) {
                if (!$force && _on_disk($class)) {
                    # Existing AOT class is fine; let the original
                    # load_class handle it.
                    $orig->($invocant, $class);
                    next;
                }

                # Otherwise, materialise from a source file.
                if (!_materialise($class)) {
                    # Couldn't find a source file - fall back to the
                    # original (which will likely die with a useful
                    # require error).
                    $orig->($invocant, $class);
                }
            }
            return;
        };
    }
    return;
}

# Cheaply check whether a Perl module exists on disk in @INC. Avoids
# requiring the module (which would have side effects if it does).
sub _on_disk {
    my ($class) = @_;
    my $rel = $class;
    $rel =~ s{::}{/}g;
    $rel .= '.pm';
    for my $dir (@INC) {
        return 1 if -r "$dir/$rel";
    }
    return 0;
}

# Try to materialise $class. $class is something like
# 'Paws::IAM' or 'Paws::IAM::User'. We materialise the *service*
# (Paws::IAM); operation and shape classes are materialised
# eagerly when the service is, so the user's intended class will
# exist after this returns.
#
# Both this hook and lib/Paws.pm's `_materialise_class` (the direct
# entry point used when the hook hasn't been installed yet) need to
# avoid double-materialising a service. Without that, a load_class
# for `Paws::EC2::DescribeInstances` after `Paws::EC2` has already
# been materialised would trigger a full service rebuild and trip
# Moose's "Constructor for Paws::<Svc> has been inlined and cannot
# be updated" + a wave of "Subroutine X redefined" warnings.
#
# Detect "already materialised" by introspecting the target service
# package: `Paws::Model::Materializer::Moo::materialize_service`
# defines a `sub operations { ... }` on the service package as part
# of its eval, and the Moose backend defines the same method via
# class_has + a method handler. Both backends therefore expose
# `Paws::<Svc>->can('operations')` once the service has been built.
# Using runtime introspection rather than a parallel state hash
# means this hook and `_materialise_class` (and any future entry
# point) all share the same source of truth without having to wire
# up explicit state-sharing.
sub _materialise {
    my ($class) = @_;

    return 0 if $class !~ /^Paws::([^:]+)/;
    my $service_name = $1;
    my $service_class = "Paws::$service_name";

    return 1 if $service_class->can('operations');

    my $ir = _resolve_ir($service_name);
    return 0 if !$ir;

    # Pick the materialiser backend. Default flipped to Moo in PR13.
    # Set PAWS_OO_BACKEND=Moose to opt back into the Moose backend
    # for the duration of one release as the documented escape hatch
    # (see docs/oo-backends.md).
    my $backend = $ENV{PAWS_OO_BACKEND} // 'Moo';
    my $mat_class;
    if ($backend eq 'Moo') {
        $mat_class = 'Paws::Model::Materializer::Moo';
    } else {
        $mat_class = 'Paws::Model::Materializer';
    }
    eval { Module::Runtime::require_module($mat_class); 1 } or return 0;

    my $mat = $mat_class->new(loader => undef);
    $mat->materialize_service($ir);

    return 1;
}

# Resolve a service name into a Paws::Model::IR::Service. Prefers
# Paws::Model::Loader::Resolver (lands in stack15) if available so it
# can search Smithy first / botocore second; otherwise falls back to
# Paws::Model::Loader::Botocore directly with a simple service-name ->
# directory lookup against the configured search paths.
sub _resolve_ir {
    my ($service_name) = @_;

    if (eval { Module::Runtime::require_module('Paws::Model::Loader::Resolver'); 1 }) {
        # Cache the resolver so its (eventually-built) botocore
        # SDK-name -> directory index is reused across all
        # _resolve_ir calls in this process. Without this, every
        # load_class for a non-mechanical-name service (e.g.
        # ACMPCA -> acm-pca) re-scans every service-2.json.
        state $resolver = Paws::Model::Loader::Resolver->new(_resolver_search_paths());
        my $ir = eval { $resolver->load_service($service_name) };
        return $ir if $ir;
    }

    eval { Module::Runtime::require_module('Paws::Model::Loader::Botocore'); 1 } or return undef;
    my $loader = Paws::Model::Loader::Botocore->new;
    for my $candidate (_botocore_candidate_paths($service_name)) {
        next if !-r $candidate;
        my $ir = eval { $loader->load($candidate) };
        return $ir if $ir;
    }
    return undef;
}

sub _resolver_search_paths {
    my @args;
    if (defined $ENV{PAWS_LAZY_DIR}) {
        my $dir = $ENV{PAWS_LAZY_DIR};
        push @args, smithy_search_paths   => [$dir];
        push @args, botocore_search_paths => [$dir];
    }
    return @args;
}

# Per-class-name candidate service-2.json paths under the configured
# search dirs. Picks the latest API version when several exist.
sub _botocore_candidate_paths {
    my ($service_name) = @_;
    my @paths;
    for my $dir (_botocore_search_dirs()) {
        for my $bot_dir (_service_dirs_for($service_name, $dir)) {
            my @versioned = sort glob File::Spec->catfile($bot_dir, '*', 'service-2.json');
            push @paths, $versioned[-1] if @versioned;
        }
    }
    return @paths;
}

sub _botocore_search_dirs {
    if (defined $ENV{PAWS_LAZY_DIR}) {
        return ($ENV{PAWS_LAZY_DIR});
    }
    return (
        File::Spec->catdir('share', 'smithy'),
        File::Spec->catdir('botocore', 'botocore', 'data'),
    );
}

# Map a Paws class-name suffix to candidate botocore directory names
# under $base. Tries the suffix lowercased as-is, then the suffix as a
# direct entry. Stack15's resolver replaces this with the canonical
# botocore-id mapping; this fallback only handles the common case
# where Paws::<X> corresponds to a directory named lc(X).
sub _service_dirs_for {
    my ($service_name, $base) = @_;
    my @candidates;
    push @candidates, File::Spec->catdir($base, lc $service_name);
    push @candidates, File::Spec->catdir($base, $service_name);
    return @candidates;
}

# File::Spec is pulled in for path joins.
use File::Spec;

1;

__END__

=head1 NAME

Paws::Model::Materializer::Auto - opt-in lazy materialisation hook

=head1 SYNOPSIS

  # Enable for a single script:
  perl -MPaws::Model::Materializer::Auto your-script.pl

  # Or process-wide:
  PERL5OPT=-MPaws::Model::Materializer::Auto your-script.pl

  # Pick the OO backend:
  PAWS_OO_BACKEND=Moo perl -MPaws::Model::Materializer::Auto -e ...

=head1 DESCRIPTION

When loaded, this module monkey-patches Paws->load_class so that any
service class without an on-disk .pm file is materialised in memory
from a source description (botocore or smithy JSON) found in the
configured search paths.

This is the bridge between PR9 (the materialiser as a callable
module) and PR10 (the default-flip that drops auto-lib/ and ships
JSON in share/). Until PR10 lands, opt-in via this module.

=head1 ENVIRONMENT

=over

=item PAWS_LAZY

'0' disables (no-op import).

=item PAWS_LAZY_FORCE

If '1', materialise even when an on-disk class exists. Useful for
testing the materialised path against the AOT path.

=item PAWS_LAZY_DIR

Directory containing source files. Default: 'share/smithy' and
'botocore/botocore/data' relative to the current directory.

=item PAWS_OO_BACKEND

'Moo' (default from PR13) or 'Moose' (escape hatch). Selects the
materialiser backend.

=back

=cut
