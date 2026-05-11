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

my %call_args = (
  'PutBucketLifecycleConfiguration' => {
    Bucket => $bucketname,
    LifecycleConfiguration => {
      Rules => [
        {
          Status => 'Enabled',
          Filter => {
           },
          }
       ]
     },
  },
  'PutBucketCors' => {
    Bucket => $bucketname,
    CORSConfiguration => {
      CORSRules => [
        {
          AllowedMethods => ['GET','HEAD'],
          AllowedOrigins => ['https://example.com'],
        },
       ],
    },
  },
  'PutBucketTagging' => {
    Bucket => $bucketname,
    Tagging => {
      TagSet => [
        { Key => 'Environment', Value => 'Production' },
       ],
     },
  },
  'PutBucketWebsite' => {
    Bucket => $bucketname,
    WebsiteConfiguration => {
      IndexDocument => { Suffix => 'index.html' },
    },
  },
  'PutBucketReplication' => {
    Bucket => $bucketname,
    ReplicationConfiguration => {
      Role  => 'arn:aws:iam::1234:role/replication',
      Rules => [
        {
          Status      => 'Enabled',
          Prefix      => 'archive/',
          Destination => { Bucket => 'arn:aws:s3:::dest-bucket' },
        },
       ],
    },
  },
  'PutBucketAcl' => {
    Bucket => $bucketname,
    ACL    => 'private',
    AccessControlPolicy => {
      Owner  => { ID => 'owner-id', DisplayName => 'owner' },
      Grants => [
        {
          Grantee    => { Type => 'CanonicalUser', ID => 'grantee-id' },
          Permission => 'FULL_CONTROL',
        },
       ],
    },
  },
  'SelectObjectContent' => {
    Bucket => $bucketname,
    Key => 'MyKey',
    Expression => 'Select * from S3Object',
    ExpressionType => 'SQL',
    InputSerialization => {
     },
    OutputSerialization => {
     },
   },
 );

# The S3 service-level XML namespace, vendored at
# share/smithy/s3/s3.smithy.json line ~606. Every PUT body that
# carries a payload member (`<PayloadElement xmlns="...">`) or a
# whole-input wrapper (`<RequestShape xmlns="...">`) uses this URI.
my $S3_NS = 'http://s3.amazonaws.com/doc/2006-03-01/';

my %xml_results = (
  PutBucketLifecycleConfiguration =>
    qq{<LifecycleConfiguration xmlns="$S3_NS"><Rule><Filter></Filter><Status>Enabled</Status></Rule></LifecycleConfiguration>},
  SelectObjectContent =>
    qq{<SelectObjectContentRequest xmlns="$S3_NS"><Expression>Select * from S3Object</Expression><ExpressionType>SQL</ExpressionType><InputSerialization></InputSerialization><OutputSerialization></OutputSerialization></SelectObjectContentRequest>},
);

# Exact-match assertions for the two operations with stable inner
# content (one payload-member wrapping case + one whole-input
# wrapping case). The other PUT operations vary on the order of
# emitted body members across the IR walk so we assert structurally
# below.
foreach my $method (sort keys %xml_results) {
  my $request;
  eval { $request = $s3->$method(%{ $call_args{$method} }); 1 } or do {
    fail("S3 $method call dies: $@");
    next;
  };
  is($request->content(), $xml_results{$method}, "S3 $method XML body matches");
}

# Structural assertions for every PUT operation in the table: the
# body is wrapped in `<Element xmlns="$S3_NS">...</Element>` where
# Element is the operation's payload-member name (or the input
# shape's name, for SelectObjectContent). This exercises the
# Smithy-loader / materialiser / wire-layer pipeline end to end on
# operations whose AOT classes used to carry a hand-rolled
# `_top_level_element` / `_top_level_namespace` (only
# SelectObjectContent did) without relying on the inner field-order
# stability that the exact-match cases above pin.
my %expected_wrapper = (
  PutBucketLifecycleConfiguration => 'LifecycleConfiguration',
  PutBucketCors                   => 'CORSConfiguration',
  PutBucketTagging                => 'Tagging',
  PutBucketWebsite                => 'WebsiteConfiguration',
  PutBucketReplication            => 'ReplicationConfiguration',
  PutBucketAcl                    => 'AccessControlPolicy',
  SelectObjectContent             => 'SelectObjectContentRequest',
);

foreach my $method (sort keys %expected_wrapper) {
  my $element = $expected_wrapper{$method};
  my $request;
  eval { $request = $s3->$method(%{ $call_args{$method} }); 1 } or do {
    fail("S3 $method call dies: $@");
    next;
  };
  my $body = $request->content() // '';
  like(
    $body,
    qr{\A<\Q$element\E xmlns="\Q$S3_NS\E">.*</\Q$element\E>\z}s,
    "S3 $method body wrapped in <$element xmlns=...> ... </$element>",
  );
}

done_testing;
