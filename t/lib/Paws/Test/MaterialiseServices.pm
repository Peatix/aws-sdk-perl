package Paws::Test::MaterialiseServices;

# Test-only opt-in module that re-enables runtime materialisation
# of service classes inside the master test suite.
#
# Phase 3 of the A4-B distribution plan (docs/distribution-plan-a4b.md
# §2.5) dropped the runtime-materialiser fallback from `lib/Paws.pm`
# in favour of the per-service modular dists. With that change, a
# bare `Paws-Core` checkout that doesn't have `Paws-<Service>`
# installed dies on `Paws->service('S3')` with the canonical
# `Can't locate Paws/S3.pm in @INC` error.
#
# Tests that need a real service class to exercise the wire layer
# (`t/s3/`, `t/17_s3metadata.t`, S3 fixtures under `t/10_responses/`,
# S3 paginator fixtures under `t/26_paginators/`) historically opted
# out by `use Paws::Test::SkipNoServiceClasses;`, which `skip_all`s
# the file. That gives up the test signal entirely.
#
# This module reinstates the pre-Phase-3 fallback, scoped to the
# test path. It mirrors what `lib/Paws/Materializer/Auto.pm` did
# before stack19 deleted it: monkey-patches `Paws->load_class` so a
# missing top-level `Paws::<Service>` is materialised from the
# vendored Smithy IR via `Paws::Model::Loader::Resolver` and
# `Paws::Model::Materializer::Moo`. The materialiser populates the
# entire service tree (service + operations + shapes) in the symbol
# table, so subsequent calls to `Paws->load_class('Paws::S3::PutObject')`
# etc. don't need to touch disk.
#
# `use Paws::Test::MaterialiseServices;` at the top of a `.t` is the
# opt-in. The module is internal to `t/lib/` — production dists
# never see it, and nothing in `lib/` references it.
#
# Internals that are NOT service classes (e.g. `Paws::API::*`,
# `Paws::Net::*`, `Paws::Credential::*`) bypass the shim and load
# from disk as normal.

use strict;
use warnings;
use v5.10;

use Carp qw(croak);
use Module::Runtime ();

my $installed = 0;
my $resolver;
my $materialiser;
my %materialised;

sub import {
    return if $installed;
    $installed = 1;

    require Paws;
    require Paws::Model::Loader::Resolver;
    require Paws::Model::Materializer::Moo;

    no warnings 'redefine';
    my $orig = \&Paws::load_class;

    *Paws::load_class = sub {
        my ($invocant, @classes) = @_;

        for my $class (@classes) {
            # If it's already loaded into the symbol table (because we
            # materialised it earlier in this process), do nothing.
            next if _class_is_loaded($class);

            # If it's on disk, defer to the original load_class which
            # does the `Module::Runtime::require_module` + immutability
            # bookkeeping.
            if (_on_disk($class)) {
                $orig->($invocant, $class);
                next;
            }

            # Otherwise: if it looks like a top-level Paws::<Service>
            # or a nested Paws::<Service>::<Op|Shape>, try to
            # materialise the service. Anything that doesn't match
            # the service-class shape (`Paws::API::*`, `Paws::Net::*`,
            # `Paws::Credential::*`, `Paws::Model::*`, `Paws::Signin`,
            # ...) falls through to the original.
            my $svc = _service_name_for($class);
            if (defined $svc) {
                _materialise_service($svc);
                # Materialiser populated the whole service tree into
                # the symbol table. If $class is now present, we're
                # done. If it isn't, the materialiser couldn't reach
                # it (e.g. typo, or service has no such inner class);
                # let the original raise the canonical error.
                next if _class_is_loaded($class);
            }

            $orig->($invocant, $class);
        }
        return;
    };
}

# Top-level Paws::<Service> we can materialise. Anything under one
# of the runtime / API / model / credential / sign-in namespaces is
# part of Paws-Core itself and lives on disk.
my %CORE_NS = map { $_ => 1 } qw(
    API
    Crawler
    Credential
    Exception
    Model
    Net
    SerDes
    Signin
);

sub _service_name_for {
    my ($class) = @_;
    return undef if $class !~ /^Paws::([^:]+)/;
    my $top = $1;
    return undef if $CORE_NS{$top};
    return $top;
}

sub _class_is_loaded {
    my ($class) = @_;
    no strict 'refs';
    my $stash = \%{ $class . '::' };
    return scalar keys %$stash > 0 ? 1 : 0;
}

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

sub _materialise_service {
    my ($svc) = @_;
    return if $materialised{$svc};
    $materialised{$svc} = 1;

    $resolver     //= Paws::Model::Loader::Resolver->new;
    $materialiser //= Paws::Model::Materializer::Moo->new(loader => $resolver);

    my $ir = eval { scalar $resolver->load_service($svc) };
    if (!$ir) {
        my $err = $@;
        croak "Paws::Test::MaterialiseServices: can't materialise "
            . "service '$svc': $err";
    }

    # The Smithy sdkId doesn't always match the Paws class name
    # (e.g. sdkId "Keyspaces" vs Paws "KeySpaces", sdkId "API Gateway"
    # vs Paws "ApiGateway"). Stamp the canonical class name so the
    # materialiser produces correctly-named packages.
    if ($ir->name ne $svc) {
        $ir->{name} = $svc;
    }

    $materialiser->materialize_service($ir);
}

1;
