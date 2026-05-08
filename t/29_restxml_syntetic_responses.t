#!/usr/bin/env perl

# Synthetic-response decoding tests for the RestXML protocol caller.
# Mirrors t/20_json_syntetic_responses.t for the RestXML wire layer.
# Driven by Paws::RestXmlParamsService (t/lib/Paws/RestXmlParamsService.pm).

use strict;
use warnings;

use lib 't/lib';

use Test::More;
use Paws;
use Paws::RestXmlParamsService;
use TestGivenResponse;

my $aws = Paws->new(config => { credentials => 'Test::CustomCredentials' });

my $s = $aws->service('RestXmlParamsService',
    region => 'fake_region',
    caller => 'TestGivenResponse',
);

subtest 'empty response decodes to an empty return' => sub {
    my $r = $s->Method1(response => '<Method1Response></Method1Response>');
    isa_ok($r, 'Paws::RestXmlParamsService::Method1Return');
};

# NOTE: the JSON synthetic suite includes a "dup_requestid" test that
# exercises decode robustness when a server returns multiple
# x-amz(n)?-request-id headers. Paws::Net::JsonResponse handles that
# case (collapses ARRAY -> first element); Paws::Net::RestXMLResponse
# does not. Adding the dup test here would expose that gap, which
# belongs in PR4 (per-trait wire fixtures) along with the lib/ fix.
# Intentionally omitted here so PR3 remains a tests-only,
# behaviour-neutral change.

subtest 'top-level scalars decode' => sub {
    my $xml = <<'XML';
<Method1Response>
  <StringAttribute>String</StringAttribute>
  <IntegerAttribute>42</IntegerAttribute>
  <BooleanAttribute>true</BooleanAttribute>
</Method1Response>
XML
    my $r = $s->Method1(response => $xml);
    isa_ok($r, 'Paws::RestXmlParamsService::Method1Return');
    is($r->StringAttribute,  'String', 'string roundtrip');
    is($r->IntegerAttribute, 42,        'integer roundtrip');
    ok($r->BooleanAttribute, 'true decodes truthy');
};

subtest 'nested object decodes' => sub {
    my $xml = <<'XML';
<Method1Response>
  <ObjectAttribute>
    <Att1>Att1</Att1>
    <Att2>Att2</Att2>
  </ObjectAttribute>
</Method1Response>
XML
    my $r = $s->Method1(response => $xml);
    isa_ok($r, 'Paws::RestXmlParamsService::Method1Return');
    isa_ok($r->ObjectAttribute, 'Paws::RestXmlParamsService::Object');
    is($r->ObjectAttribute->Att1, 'Att1');
    is($r->ObjectAttribute->Att2, 'Att2');
};

done_testing;
