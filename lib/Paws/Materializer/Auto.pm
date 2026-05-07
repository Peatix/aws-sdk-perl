package Paws::Materializer::Auto;

# Opt-in hook that switches Paws->load_class to use the materialiser
# when a class isn't already available on disk.
#
# Usage:
#
#   perl -MPaws::Materializer::Auto -e '...'
#   PERL5OPT=-MPaws::Materializer::Auto your-script.pl
#
# Or in code:
#
#   BEGIN { use Paws::Materializer::Auto }
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
#   PAWS_OO_BACKEND          'Moose' (default) or 'Moo'. Selects the
#                            materialiser backend. PR13 is where the
#                            default flips to 'Moo'; until then the
#                            opt-in remains explicit.
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
sub _materialise {
    my ($class) = @_;

    return 0 if $class !~ /^Paws::([^:]+)/;
    my $service_name = $1;

    # Resolve via the loader. If the loader infrastructure isn't on
    # @INC (Paws-without-builder-lib install), bail.
    my $resolver_class = 'Paws::Model::Loader::Resolver';
    my $resolver_loaded = eval { Module::Runtime::require_module($resolver_class); 1 };
    return 0 if !$resolver_loaded;

    my $resolver = $resolver_class->new(_search_paths());

    my $ir = eval { $resolver->load_service($service_name) };
    return 0 if !$ir;

    # Pick the materialiser backend.
    my $backend = $ENV{PAWS_OO_BACKEND} // 'Moose';
    my $mat_class;
    if ($backend eq 'Moo') {
        $mat_class = 'Paws::Materializer::Moo';
    } else {
        $mat_class = 'Paws::Materializer';
    }
    Module::Runtime::require_module($mat_class);

    my $mat = $mat_class->new(loader => undef);
    $mat->materialize_service($ir);

    return 1;
}

sub _search_paths {
    my @args;
    if (defined $ENV{PAWS_LAZY_DIR}) {
        my $dir = $ENV{PAWS_LAZY_DIR};
        push @args, smithy_search_paths   => [$dir];
        push @args, botocore_search_paths => [$dir];
    }
    return @args;
}

1;

__END__

=head1 NAME

Paws::Materializer::Auto - opt-in lazy materialisation hook

=head1 SYNOPSIS

  # Enable for a single script:
  perl -MPaws::Materializer::Auto your-script.pl

  # Or process-wide:
  PERL5OPT=-MPaws::Materializer::Auto your-script.pl

  # Pick the OO backend:
  PAWS_OO_BACKEND=Moo perl -MPaws::Materializer::Auto -e ...

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

'Moose' (default) or 'Moo'. Selects the materialiser backend.

=back

=cut
