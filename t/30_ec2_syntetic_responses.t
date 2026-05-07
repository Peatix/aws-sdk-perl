#!/usr/bin/env perl

# Synthetic-response decoding tests for the EC2 protocol caller.
# Mirrors t/20_json_syntetic_responses.t for the EC2 wire layer
# (a Query-protocol variant). Driven by Paws::EC2ParamsService
# (t/lib/Paws/EC2ParamsService.pm).

use strict;
use warnings;

use lib 't/lib';

use Test::More;
use Paws;
use Paws::EC2ParamsService;
use TestGivenResponse;

my $aws = Paws->new(config => { credentials => 'Test::CustomCredentials' });

my $s = $aws->service('EC2ParamsService',
    region => 'fake_region',
    caller => 'TestGivenResponse',
);

subtest 'empty response decodes' => sub {
    my $r = $s->Method1(response => '<Method1Response></Method1Response>');
    isa_ok($r, 'Paws::EC2ParamsService::Method1Return');
};

subtest 'top-level scalars decode' => sub {
    my $xml = <<'XML';
<Method1Response>
  <stringAttribute>String</stringAttribute>
  <integerAttribute>42</integerAttribute>
  <booleanAttribute>true</booleanAttribute>
</Method1Response>
XML
    my $r = $s->Method1(response => $xml);
    isa_ok($r, 'Paws::EC2ParamsService::Method1Return');
    is($r->StringAttribute,  'String');
    is($r->IntegerAttribute, 42);
    ok($r->BooleanAttribute);
};

subtest 'nested object decodes' => sub {
    my $xml = <<'XML';
<Method1Response>
  <objectAttribute>
    <att1>A1</att1>
    <att2>A2</att2>
  </objectAttribute>
</Method1Response>
XML
    my $r = $s->Method1(response => $xml);
    isa_ok($r->ObjectAttribute, 'Paws::EC2ParamsService::Object');
    is($r->ObjectAttribute->Att1, 'A1');
    is($r->ObjectAttribute->Att2, 'A2');
};

# NOTE: list/map decoding for the EC2 caller is materially different
# from the Query caller (different element wrapping) and warrants
# its own dedicated set of fixtures in PR4. Intentionally not added
# here so PR3 stays focused on protocol parity rather than per-shape
# coverage.

done_testing;
