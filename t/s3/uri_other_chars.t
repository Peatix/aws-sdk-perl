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
#use Paws::Net::MockCaller;
use TestRequestCaller;

Paws->default_config->caller(TestRequestCaller->new);
Paws->default_config->credentials('Test::CustomCredentials');

my $bucketname = 'test-uri-paws';
my $s3 = Paws->service('S3', region => 'us-west-2');

my @to_encode = ("\0243", # GBP currency sign
                 "\0251", # copyright symbol
    );

foreach my $char (@to_encode) {
  my $response;
  eval { $response = $s3->PutObject(
    "Key"    => "test$char",
    "Bucket" => $bucketname,
    "Body"   => 'Blub',
      );
  } or do {
    diag qq[Error creating object: $@];
  };

## The URI should contain a once-encoded character. Modern dot-
## delimited host and the S3 Smithy `x-id` query parameter come
## along for the ride; the test signal is that the *key* carries
## the URL-escaped character exactly once.
  is($response->url, 'https://s3.us-west-2.amazonaws.com/test-uri-paws/test' . uri_escape($char) . '?x-id=PutObject', "S3 uri encoded correctly");
}

done_testing;
