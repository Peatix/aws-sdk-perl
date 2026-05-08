#!/usr/bin/env perl

# Wire-byte fixture tests for the EC2 protocol caller's request side.
# EC2 is a Query-protocol variant with PascalCase upcasing of the
# wire key's first character; this driver pins that behaviour.

use strict;
use warnings;

use lib 't/lib';

use FindBin qw($Bin);
use Test::More;
use Paws;
use Paws::EC2ParamsService;
use TestRequestCaller;
use WireFixture qw(canonicalise_request assert_wire_fixture);

my $aws = Paws->new(config => { credentials => 'Test::CustomCredentials' });

sub fixture_for { return "$Bin/fixtures/ec2/$_[0].txt" }

sub capture {
    my ($params) = @_;
    my $caller = TestRequestCaller->new;
    my $svc    = $aws->service('EC2ParamsService',
        region => 'us-east-1',
        caller => $caller,
    );
    my $req = $svc->MethodReq(%$params);
    return canonicalise_request($req);
}

subtest 'plain Name attribute (PascalCase preserved)' => sub {
    my $bytes = capture({ Name => 'hello' });
    assert_wire_fixture(
        name    => 'name-only',
        fixture => fixture_for('name-only'),
        actual  => $bytes,
    );
};

subtest 'NameInRequest also gets PascalCase upcasing on first char' => sub {
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

subtest 'list (EC2-style flattening: Items.1, Items.2, ...)' => sub {
    my $bytes = capture({ Items => [qw(a b c)] });
    assert_wire_fixture(
        name    => 'list',
        fixture => fixture_for('list'),
        actual  => $bytes,
    );
};

done_testing;
