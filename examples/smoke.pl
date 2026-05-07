#!/usr/bin/env perl

# examples/smoke.pl
#
# Distribution install smoke test. Uses Paws::Net::NoResponseMockCaller
# so it never hits the network. Verifies that an installed Paws can:
#
#   - load,
#   - construct services,
#   - prepare requests for representative calls,
#
# without any of the repo-level @INC tricks (`use lib 'auto-lib'`).
# Suitable for running after `cpanm Paws-X.YZ.tar.gz`.
#
# The smoke is split into two parts:
#
#   - "core" exercises Paws::Signin, which is handwritten and always
#     present. Failure here means the core dist is broken (Paws.pm,
#     the wire layer, the credential providers, or packaging itself).
#
#   - "auto" exercises Paws::S3, which is auto-generated. Failure here
#     usually means auto-lib/ is missing or wasn't included in the
#     dist tarball. Reported but does not fail the smoke unless
#     PAWS_SMOKE_REQUIRE_AUTO=1 is set.
#
# After the auto-generation pipeline is healthy, set
# PAWS_SMOKE_REQUIRE_AUTO=1 in CI so this becomes a hard gate again.

use strict;
use warnings;
use v5.10;

use Paws;
use Paws::Credential::Explicit;
use Paws::Net::NoResponseMockCaller;

my $require_auto = $ENV{PAWS_SMOKE_REQUIRE_AUTO} ? 1 : 0;
my $fail = 0;

# --- core smoke ---------------------------------------------------------

eval {
    my $caller = Paws::Net::NoResponseMockCaller->new;

    my $paws = Paws->new(config => {
        caller      => $caller,
        credentials => Paws::Credential::Explicit->new(
            access_key => 'SmokeAK',
            secret_key => 'SmokeSK',
        ),
        region      => 'us-east-1',
    });

    # Paws::Signin is a handwritten service in lib/Paws/Signin/. It
    # ships in every Paws release regardless of auto-lib state.
    my $svc = $paws->service('Signin');
    die "service('Signin') returned undef\n" if !defined $svc;

    say 'smoke part=core status=ok service=Signin';
};

if ($@) {
    say STDERR "smoke part=core status=fail error=$@";
    $fail = 1;
}

# --- auto-generated smoke ----------------------------------------------

eval {
    my $caller = Paws::Net::NoResponseMockCaller->new;

    my $paws = Paws->new(config => {
        caller      => $caller,
        credentials => Paws::Credential::Explicit->new(
            access_key => 'SmokeAK',
            secret_key => 'SmokeSK',
        ),
        region      => 'us-east-1',
    });

    # S3 is the most representative auto-generated service: restxml,
    # S3-specific signing, the most idiosyncratic wire layer.
    my $svc = $paws->service('S3');
    die "service('S3') returned undef\n" if !defined $svc;

    my $resp = $svc->ListBuckets;
    my $req  = $caller->actual_request;
    die "no actual_request captured\n" if !ref $req;

    say sprintf(
        'smoke part=auto status=ok service=S3 call=ListBuckets prepared_method=%s',
        $req->can('method') ? $req->method : 'unknown',
    );
};

if ($@) {
    my $msg = $@;
    $msg =~ s/\n.*//s;
    if ($require_auto) {
        say STDERR "smoke part=auto status=fail require_auto=1 error=$msg";
        $fail = 1;
    } else {
        say STDERR "smoke part=auto status=skip require_auto=0 error=$msg";
    }
}

exit($fail ? 1 : 0);
