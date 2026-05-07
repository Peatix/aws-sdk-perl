#!/usr/bin/env perl

# Wire-byte fixture tests for the JSON-RPC protocol caller's request
# side. Pins exactly what bytes go on the wire for representative
# parameter shapes, so PR11 (wire-layer side-table) is forced to be
# behaviour-preserving and not just "tests-pass" preserving.
#
# Run with UPDATE_FIXTURES=1 to regenerate the goldens.
#
# Worked example for the wire-fixture pattern. See docs/testing.md
# for the canonicalisation rules and how to add more cells.

use strict;
use warnings;

use lib 't/lib';

use FindBin qw($Bin);
use Test::More;
use Paws;
use Paws::JsonParamsService;
use TestRequestCaller;
use WireFixture qw(canonicalise_request assert_wire_fixture);

my $aws = Paws->new(config => { credentials => 'Test::CustomCredentials' });

sub fixture_for {
    my ($name) = @_;
    return "$Bin/fixtures/json/$name.txt";
}

sub capture {
    my ($params) = @_;
    my $caller = TestRequestCaller->new;
    my $svc    = $aws->service('JsonParamsService',
        region => 'us-east-1',
        caller => $caller,
    );
    my $req = $svc->MethodReq(%$params);
    return canonicalise_request($req);
}

subtest 'plain string attribute (no NameInRequest)' => sub {
    my $bytes = capture({ Name => 'hello' });
    assert_wire_fixture(
        name    => 'name-only',
        fixture => fixture_for('name-only'),
        actual  => $bytes,
    );
};

subtest 'NameInRequest renames the wire key' => sub {
    my $bytes = capture({ Renamed => 'world' });
    assert_wire_fixture(
        name    => 'renamed',
        fixture => fixture_for('renamed'),
        actual  => $bytes,
    );
};

subtest 'multiple primitive attributes' => sub {
    my $bytes = capture({
        Name   => 'multi',
        Number => 42,
        Flag   => 1,
    });
    assert_wire_fixture(
        name    => 'primitives',
        fixture => fixture_for('primitives'),
        actual  => $bytes,
    );
};

subtest 'list attribute' => sub {
    my $bytes = capture({ Items => [qw(a b c)] });
    assert_wire_fixture(
        name    => 'list',
        fixture => fixture_for('list'),
        actual  => $bytes,
    );
};

done_testing;
