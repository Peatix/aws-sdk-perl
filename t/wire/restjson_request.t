#!/usr/bin/env perl

# Wire-byte fixture tests for the RestJSON protocol caller's request
# side. Pins how each location-affecting trait routes its parameter:
# ParamInURI -> path substitution, ParamInQuery -> query string,
# ParamInHeader -> request header.

use strict;
use warnings;

use lib 't/lib';

use FindBin qw($Bin);
use Test::More;
use Paws;
use Paws::RestJsonParamsService;
use TestRequestCaller;
use WireFixture qw(canonicalise_request assert_wire_fixture);

my $aws = Paws->new(config => { credentials => 'Test::CustomCredentials' });

sub fixture_for { return "$Bin/fixtures/restjson/$_[0].txt" }

sub capture {
    my ($params) = @_;
    my $caller = TestRequestCaller->new;
    my $svc    = $aws->service('RestJsonParamsService',
        region => 'us-east-1',
        caller => $caller,
    );
    my $req = $svc->MethodReq(%$params);
    return canonicalise_request($req);
}

subtest 'ParamInURI substitutes the path placeholder' => sub {
    my $bytes = capture({ Resource => 'abc' });
    assert_wire_fixture(
        name    => 'param-in-uri',
        fixture => fixture_for('param-in-uri'),
        actual  => $bytes,
    );
};

subtest 'ParamInQuery is appended to the query string' => sub {
    my $bytes = capture({ Resource => 'abc', Filter => 'active' });
    assert_wire_fixture(
        name    => 'param-in-query',
        fixture => fixture_for('param-in-query'),
        actual  => $bytes,
    );
};

subtest 'ParamInHeader becomes a request header' => sub {
    my $bytes = capture({ Resource => 'abc', Marker => 'mk-123' });
    assert_wire_fixture(
        name    => 'param-in-header',
        fixture => fixture_for('param-in-header'),
        actual  => $bytes,
    );
};

subtest 'all locations combined' => sub {
    my $bytes = capture({
        Resource => 'r9',
        Filter   => 'active',
        Marker   => 'mk',
    });
    assert_wire_fixture(
        name    => 'all-locations',
        fixture => fixture_for('all-locations'),
        actual  => $bytes,
    );
};

done_testing;
