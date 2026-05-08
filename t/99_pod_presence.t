#!/usr/bin/env perl

# 99_pod_presence.t
#
# Asserts that every loaded Paws::* class carries the POD entries the
# auto-generator emits today:
#
#   - All classes (operations and shapes) must have `=head1 NAME`.
#   - Operation classes (those that ->can('_api_call')) must
#     additionally have `=head1 SYNOPSIS`.
#
# This complements 99_pod_syntax.t, which only validates POD that
# exists. The two tests together form the gate that PR10 (lazy default;
# drop auto-lib/) must keep green: when shape `.pm` files no longer live
# on disk, their POD has to come from somewhere - either a sibling
# `Paws-Docs` distribution or a runtime POD generator. Either way, this
# test is the contract.
#
# Per-service so failures are localised. Author-only because preloading
# all services is expensive (a couple of minutes); the existing CI
# workflow sets AUTHOR_TESTING=1.

use strict;
use warnings;
use v5.10;

use Test::More;
use Paws;
use Class::Unload;

if (!$ENV{AUTHOR_TESTING} && !$ENV{PAWS_RUN_POD_PRESENCE}) {
    plan skip_all => 'set AUTHOR_TESTING=1 or PAWS_RUN_POD_PRESENCE=1 to run';
}

my $paws     = Paws->new;
my @services = @ARGV > 0 ? @ARGV : sort $paws->available_services;

if (!@services) {
    plan skip_all => 'no services available - run after auto-lib/ is populated';
}

plan tests => scalar(@services);

for my $service (@services) {
    subtest "$service POD presence" => sub { check_service($service) };
}

sub check_service {
    my ($service) = @_;

    Paws->preload_service($service);

    my $class_prefix = $paws->_class_prefix . $service . '::';
    my $inc_prefix   = $class_prefix;
    $inc_prefix =~ s{::}{/}g;

    my @loaded;
    for my $key (sort keys %INC) {
        next if $key !~ m{^\Q$inc_prefix\E};
        my $file = $INC{$key};
        next if !defined $file || !-r $file;
        # Only gate auto-generated classes. Handwritten classes under
        # lib/Paws/ have a different POD style and are not what we're
        # protecting against accidental loss of (PR10 specifically
        # affects auto-generated content). After PR10 lands, the
        # source-path heuristic gives way to a generator-aware check.
        next if $file !~ m{(^|/)auto-lib/};
        my $pkg = $key;
        $pkg =~ s{/}{::}g;
        $pkg =~ s/\.pm$//;
        push @loaded, [ $pkg, $file ];
    }

    if (!@loaded) {
        # No auto-generated classes for this service - all-handwritten
        # service like Paws::Signin. Pass with a note instead of failing
        # so the gate stays narrow (auto-lib/ POD presence only).
        pass("$service: no auto-generated classes to check");
        unload_service($service);
        return;
    }

    my $bad_name     = 0;
    my $bad_synopsis = 0;
    my @bad;

    for my $entry (@loaded) {
        my ($pkg, $file) = @$entry;

        my $pod = read_pod($file);

        if ($pod !~ /^=head1\s+NAME\b/m) {
            push @bad, { pkg => $pkg, file => $file, missing => 'NAME' };
            $bad_name++;
            next;
        }

        # Operation classes have a class attribute named _api_call set
        # by the generator. Shapes don't.
        my $is_operation = $pkg->can('_api_call');
        if ($is_operation && $pod !~ /^=head1\s+SYNOPSIS\b/m) {
            push @bad, { pkg => $pkg, file => $file, missing => 'SYNOPSIS' };
            $bad_synopsis++;
        }
    }

    ok(
        $bad_name == 0 && $bad_synopsis == 0,
        sprintf(
            'service=%s classes=%d missing_name=%d missing_synopsis=%d',
            $service, scalar(@loaded), $bad_name, $bad_synopsis,
        ),
    ) or diag_failures(\@bad);

    unload_service($service);
}

sub read_pod {
    my ($file) = @_;
    open my $fh, '<', $file or return '';
    local $/;
    my $content = <$fh>;
    close $fh;
    return defined $content ? $content : '';
}

sub diag_failures {
    my ($bad) = @_;
    my $shown = 0;
    for my $b (@$bad) {
        last if $shown++ >= 10;
        diag(sprintf('  pkg=%s missing=%s file=%s', $b->{pkg}, $b->{missing}, $b->{file}));
    }
    if (@$bad > $shown) {
        diag(sprintf('  ... and %d more', scalar(@$bad) - $shown));
    }
}

sub unload_service {
    my ($service) = @_;
    my $prefix = $paws->_class_prefix . $service;
    $prefix =~ s/::/\//g;
    for my $key (grep { $_ =~ m{^\Q$prefix\E} } keys %INC) {
        my $pkg = $key;
        $pkg =~ s{/}{::}g;
        $pkg =~ s/\.pm$//;
        Class::MOP::remove_metaclass_by_name($pkg);
        Class::Unload->unload($pkg);
    }
}
