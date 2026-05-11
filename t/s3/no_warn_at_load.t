#!/usr/bin/env perl

# Pin the load-time silence guarantee for Paws::S3 (and for any
# other materialised REST-XML service).
#
# The legacy AOT generator emitted, on every REST-XML service
# class, the line
#
#   warn "Paws::S3 is not stable / supported / entirely developed"
#       unless $ENV{'PAWS_SILENCE_UNSTABLE_WARNINGS'};
#
# at the top of the `package` block, gated by the
# PAWS_SILENCE_UNSTABLE_WARNINGS env var. That warning was the
# canonical signal to users that the legacy AOT-generated S3
# code was a work in progress.
#
# The materialiser-built `Paws::S3` (post-stack19) does not emit
# that warning — `Paws::Model::Materializer::Moo` writes the
# service class without a warn line. This stack also removed the
# warn line from the legacy template
# (`templates/restxml/service_class.tt`) so any future contributor
# who runs the dormant AOT generator doesn't reintroduce the
# noise.
#
# This test pins both invariants:
#
#   1. Constructing a materialised Paws::S3 emits no
#      "is not stable" text on stderr.
#   2. The legacy AOT template file no longer contains the warn
#      line.

use strict;
use warnings;

use lib 't/lib';
use Paws::Test::MaterialiseServices;

use Test::More;
use File::Slurper qw(read_text);
use FindBin qw($Bin);

# --- (1) Materialise Paws::S3 with PAWS_SILENCE_UNSTABLE_WARNINGS
#         deliberately unset; capture stderr; assert nothing
#         mentioning "is not stable" appears.

{
    local $ENV{PAWS_SILENCE_UNSTABLE_WARNINGS};
    delete $ENV{PAWS_SILENCE_UNSTABLE_WARNINGS};

    # Run the load + service-construction in a child perl so we
    # capture stderr cleanly without trampling on the parent's
    # warning hooks. Pass the full PERL5LIB through so the child
    # finds Paws + the test helpers exactly as we do.
    my @cmd = (
        $^X,
        '-Ilib',
        '-It/lib',
        '-MPaws::Test::MaterialiseServices',
        '-MPaws',
        '-e',
        'Paws->load_class("Paws::S3"); my $s = Paws::S3->new('
            . 'region=>"eu-west-1",'
            . 'caller=>do{require Paws::Net::Caller; Paws::Net::Caller->new},'
            . 'credentials=>do{require Test::CustomCredentials; Test::CustomCredentials->new},'
            . '); print STDOUT "ok\n";',
    );

    open my $pipe, '-|', join(' ', map { qq{'$_'} } @cmd) . ' 2>&1'
        or die "fork: $!";
    my $output = do { local $/; <$pipe> };
    close $pipe;

    like($output, qr/^ok$/m,
        'child perl successfully materialised and constructed Paws::S3');
    unlike($output, qr/is not stable/,
        'no "is not stable" warning at Paws::S3 load with PAWS_SILENCE_UNSTABLE_WARNINGS unset');
}

# --- (2) The legacy AOT template no longer carries the warn line.

{
    my $tt_path = "$Bin/../../templates/restxml/service_class.tt";
    my $tt      = read_text($tt_path);
    unlike($tt, qr/is not stable/,
        "templates/restxml/service_class.tt no longer emits the legacy 'is not stable' warning");
    unlike($tt, qr/PAWS_SILENCE_UNSTABLE_WARNINGS/,
        "templates/restxml/service_class.tt no longer references PAWS_SILENCE_UNSTABLE_WARNINGS");
}

done_testing;
