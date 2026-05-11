#!/usr/bin/env perl

# This file has been modified from the original upstream distribution
# by Peatix, Inc. See the git log for this file for details of changes.


use strict;
use warnings;

use lib 't/lib';
use Paws::Test::MaterialiseServices;

use English qw(-no-match-vars);
use Carp;
use Test::More;
use URI::Escape;

use Paws;
use TestRequestCaller;

Paws->default_config->caller(TestRequestCaller->new);
Paws->default_config->credentials('Test::CustomCredentials');

my $bucketname = 'shadowcatjesstest';
my $s3 = Paws->service('S3', region => 'us-west-2');

my %prefix_methods = (
  ListObjectVersions => {
    Bucket => $bucketname,
    Prefix => 'TestPrefix',
   },
  ListObjects => {
    Bucket => $bucketname,
    Prefix => 'TestPrefix',
   },
 );

my %prefix_results = (
  # Modern dot-delimited regional host (s3.<region>.amazonaws.com);
  # neither ListObjects nor ListObjectVersions carry an `x-id`
  # routing query parameter in the Smithy IR.
  ListObjectVersions => 'https://s3.us-west-2.amazonaws.com/shadowcatjesstest?prefix=TestPrefix',
  ListObjects        => 'https://s3.us-west-2.amazonaws.com/shadowcatjesstest?prefix=TestPrefix',
 );

foreach my $method (qw/ListObjectVersions ListObjects/) {
  my $response;
  eval { $response = $s3->$method(%{ $prefix_methods{$method} });
  } or do {
    warn qq[Error creating object: $@];
  };

  ## The URI Query params should contain a Prefix param
  is($response->url, $prefix_results{$method}, "S3 $method URI contains Prefix");
}

done_testing;
