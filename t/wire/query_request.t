#!/usr/bin/env perl

# Wire-byte fixture tests for the Query protocol caller's request
# side. Query encodes everything in the form-urlencoded body, including
# Action and Version. NameInRequest renames the wire key.

use strict;
use warnings;

use lib 't/lib';

use FindBin qw($Bin);
use Test::More;
use Paws;
use Paws::QueryParamsService;
use TestRequestCaller;
use WireFixture qw(canonicalise_request assert_wire_fixture);

my $aws = Paws->new(config => { credentials => 'Test::CustomCredentials' });

sub fixture_for { return "$Bin/fixtures/query/$_[0].txt" }

sub capture {
    my ($params) = @_;
    my $caller = TestRequestCaller->new;
    my $svc    = $aws->service('QueryParamsService',
        region => 'us-east-1',
        caller => $caller,
    );
    my $req = $svc->MethodReq(%$params);
    return canonicalise_request($req);
}

subtest 'plain Name attribute' => sub {
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

subtest 'integer attribute' => sub {
    my $bytes = capture({ Number => 42 });
    assert_wire_fixture(
        name    => 'integer',
        fixture => fixture_for('integer'),
        actual  => $bytes,
    );
};

subtest 'list attribute (member-style flattening)' => sub {
    my $bytes = capture({ Items => [qw(a b c)] });
    assert_wire_fixture(
        name    => 'list',
        fixture => fixture_for('list'),
        actual  => $bytes,
    );
};

done_testing;
