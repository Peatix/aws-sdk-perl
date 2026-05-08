#!/usr/bin/env perl

# Wire-byte fixture tests for the RestXML protocol caller's request
# side. Body parameters serialise as XML elements (alphabetical
# ordering); ParamInURI / ParamInQuery / ParamInHeader-traited
# attributes route to the URI label / query string / request header.

use strict;
use warnings;

use lib 't/lib';

use FindBin qw($Bin);
use Test::More;
use Paws;
use Paws::RestXmlParamsService;
use TestRequestCaller;
use WireFixture qw(canonicalise_request assert_wire_fixture);

my $aws = Paws->new(config => { credentials => 'Test::CustomCredentials' });

sub fixture_for { return "$Bin/fixtures/restxml/$_[0].txt" }

sub capture {
    my ($params) = @_;
    my $caller = TestRequestCaller->new;
    my $svc    = $aws->service('RestXmlParamsService',
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

subtest 'body attributes serialise as XML elements (alphabetical)' => sub {
    my $bytes = capture({ Resource => 'abc', Title => 'Hello', Body => 'World' });
    assert_wire_fixture(
        name    => 'body-xml',
        fixture => fixture_for('body-xml'),
        actual  => $bytes,
    );
};

done_testing;
