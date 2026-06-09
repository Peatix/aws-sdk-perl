#!/usr/bin/env perl
# t/36_signing_region.t
#
# The signing region (_region_for_signature) must come from the
# resolved endpoint's credentialScope when the matched endpoint rule
# provides one -- the rule already accounted for the client's region
# when it was selected, and the resolved host only accepts signatures
# scoped to credentialScope.region.
#
# Regression: STS's endpoint ruleset maps legacy regions
# (ap-northeast-1, eu-west-1, ...) to the global host sts.amazonaws.com
# with credentialScope us-east-1. Signing those with the client region
# produced "SignatureDoesNotMatch: Credential should be scoped to a
# valid region". Global services (IAM/Route53/...) with an explicit
# region hit the same class of bug.

use strict;
use warnings;
use Test::More;

# A service whose ruleset maps one specific region to a global host
# carrying a credentialScope (the shape of the real STS rules), and
# lets other regions fall through to the default regional rule.
{
  package Test::LegacyGlobalRegion;
  use Moo;
  with 'Paws::API::EndpointResolver';
  sub service { 'testsvc' }
  has '+region_rules' => (default => sub {
    [
      { constraints => [ [ 'region', 'equals', 'ap-northeast-1' ] ],
        properties  => { credentialScope => { region => 'us-east-1', service => 'testsvc' } },
        uri         => 'https://testsvc.amazonaws.com' },
    ];
  });
}

# A truly global service: a catch-all rule (no constraints) to a global
# host with a credentialScope (the shape of the real IAM/Route53 rules).
{
  package Test::TrulyGlobal;
  use Moo;
  with 'Paws::API::EndpointResolver';
  sub service { 'globalsvc' }
  has '+region_rules' => (default => sub {
    [
      { properties => { credentialScope => { region => 'us-east-1', service => 'globalsvc' } },
        uri        => 'https://globalsvc.amazonaws.com' },
    ];
  });
}

# Legacy region matched by a credentialScope rule: global host, sign
# with the credentialScope region (not the client region).
{
  my $svc = Test::LegacyGlobalRegion->new(region => 'ap-northeast-1');
  is($svc->endpoint_host, 'testsvc.amazonaws.com',
    'matched rule resolves to the global host');
  is($svc->_region_for_signature, 'us-east-1',
    'signs with the credentialScope region, not the client region');
}

# A region with no matching credentialScope rule falls through to the
# default regional rule and signs with the client region.
{
  my $svc = Test::LegacyGlobalRegion->new(region => 'eu-west-1');
  is($svc->endpoint_host, 'testsvc.eu-west-1.amazonaws.com',
    'unmatched region falls through to the regional default rule');
  is($svc->_region_for_signature, 'eu-west-1',
    'regional endpoint signs with the client region');
}

# Global service, no region supplied: sign with credentialScope
# (the pre-existing behaviour for IAM/Route53/CloudFront/WAF).
{
  my $svc = Test::TrulyGlobal->new(region => undef);
  is($svc->endpoint_host, 'globalsvc.amazonaws.com',
    'global service resolves to the global host with no region');
  is($svc->_region_for_signature, 'us-east-1',
    'no client region: signs with the credentialScope region');
}

# Global service WITH an explicit region: still signs with
# credentialScope. Previously the explicit region overrode the
# credentialScope and produced a SignatureDoesNotMatch against the
# global host.
{
  my $svc = Test::TrulyGlobal->new(region => 'eu-west-1');
  is($svc->endpoint_host, 'globalsvc.amazonaws.com',
    'global service ignores client region for the host');
  is($svc->_region_for_signature, 'us-east-1',
    'explicit client region does not override the credentialScope');
}

done_testing;
