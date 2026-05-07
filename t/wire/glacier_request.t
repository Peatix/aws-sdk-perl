#!/usr/bin/env perl

# Wire-byte fixture tests for the Glacier protocol caller's request
# side. Glacier extends RestJsonCaller with the x-amz-glacier-version
# header; the canonicalisation strips per-request headers so the
# version header (which is computed from the service version, not
# per-call) survives in the fixture.

use strict;
use warnings;

use lib 't/lib';

use FindBin qw($Bin);
use Test::More;
use Paws;
use Paws::GlacierParamsService;
use TestRequestCaller;
use WireFixture qw(canonicalise_request assert_wire_fixture);

my $aws = Paws->new(config => { credentials => 'Test::CustomCredentials' });

sub fixture_for { return "$Bin/fixtures/glacier/$_[0].txt" }

sub capture {
    my ($params) = @_;
    my $caller = TestRequestCaller->new;
    my $svc    = $aws->service('GlacierParamsService',
        region => 'us-east-1',
        caller => $caller,
    );
    my $req = $svc->MethodReq(%$params);
    return canonicalise_request($req);
}

subtest 'URI labels substituted; x-amz-glacier-version injected' => sub {
    my $bytes = capture({
        AccountId => '-',
        VaultName => 'archive',
    });
    assert_wire_fixture(
        name    => 'basic',
        fixture => fixture_for('basic'),
        actual  => $bytes,
    );
};

done_testing;
