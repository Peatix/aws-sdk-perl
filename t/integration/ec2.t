#!/usr/bin/env perl

use strict;
use warnings;
use Test::More;
use FindBin;
use lib "$FindBin::Bin/..";
use integration::helpers qw(skip_unless_integration paws_client test_region);

skip_unless_integration();

my $paws   = paws_client();
my $ec2    = $paws->service('EC2');
my $region = test_region();

# Read-only tests only — no resource creation to avoid cost and complexity.

subtest 'DescribeRegions' => sub {
  my $result = $ec2->DescribeRegions();
  my $regions = $result->Regions;
  ok($regions && scalar @$regions > 0, 'DescribeRegions returned at least one region');

  my @names = map { $_->RegionName } @$regions;
  ok(grep({ $_ eq 'us-east-1' } @names), 'us-east-1 is in the region list');
  diag "region_count=" . scalar @$regions;
};

subtest 'DescribeAvailabilityZones' => sub {
  my $result = $ec2->DescribeAvailabilityZones();
  my $zones = $result->AvailabilityZones;
  ok($zones && scalar @$zones > 0, 'DescribeAvailabilityZones returned at least one zone');

  my $first = $zones->[0];
  like($first->ZoneName, qr/^${region}[a-z]$/, "first zone matches region=$region pattern");
  is($first->State, 'available', 'first zone state is available');
  diag "zone_count=" . scalar @$zones;
};

subtest 'DescribeVpcs' => sub {
  my $result = $ec2->DescribeVpcs();
  my $vpcs = $result->Vpcs;
  ok(defined $vpcs, 'DescribeVpcs returned a VPC list');
  diag "vpc_count=" . scalar @{$vpcs // []};
};

done_testing();
