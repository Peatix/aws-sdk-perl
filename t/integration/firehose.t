#!/usr/bin/env perl

use strict;
use warnings;
use Test::More;
use FindBin;
use lib "$FindBin::Bin/..";
use integration::helpers qw(skip_unless_integration paws_client unique_name);

skip_unless_integration();

# Firehose CreateDeliveryStream requires an S3 destination bucket and an IAM
# role with firehose.amazonaws.com trust policy granting s3:PutObject. Creating
# these prerequisites in-test adds significant complexity and IAM propagation
# delays. Instead, this test takes two approaches:
#
# 1. If FIREHOSE_TEST_ROLE_ARN and FIREHOSE_TEST_S3_BUCKET are set, create a
#    delivery stream, put a record, and clean up.
# 2. Otherwise, exercise read-only ListDeliveryStreams and optionally
#    DescribeDeliveryStream against any existing stream.
#
# Prerequisites for full test:
#   - An S3 bucket for Firehose delivery
#   - An IAM role with trust policy for firehose.amazonaws.com and
#     s3:PutObject permission on the bucket
#   - Set FIREHOSE_TEST_ROLE_ARN=arn:aws:iam::ACCOUNT:role/NAME
#   - Set FIREHOSE_TEST_S3_BUCKET=bucket-name

my $paws     = paws_client();
my $firehose = $paws->service('Firehose');

my $role_arn   = $ENV{FIREHOSE_TEST_ROLE_ARN};
my $s3_bucket  = $ENV{FIREHOSE_TEST_S3_BUCKET};
my $can_create = $role_arn && $s3_bucket;

my @cleanup;

END {
  if (@cleanup) {
    diag "cleanup: removing test resources";
    for my $step (reverse @cleanup) {
      eval { $step->() };
      warn "cleanup error: $@" if $@;
    }
  }
}

if ($can_create) {
  my $stream_name = unique_name('paws-integ-fh');

  my $s3_prefix = "integration-tests/$stream_name/";

  subtest 'CreateDeliveryStream (S3 destination)' => sub {
    my $result = $firehose->CreateDeliveryStream(
      DeliveryStreamName => $stream_name,
      DeliveryStreamType => 'DirectPut',
      S3DestinationConfiguration => {
        BucketARN => "arn:aws:s3:::$s3_bucket",
        RoleARN   => $role_arn,
        Prefix    => $s3_prefix,
      },
    );
    ok($result->DeliveryStreamARN, "created stream=$stream_name");
    push @cleanup, sub {
      $firehose->DeleteDeliveryStream(
        DeliveryStreamName => $stream_name,
      );
    };

    # Wait for stream to become ACTIVE
    my $status = '';
    for my $attempt (1..30) {
      my $desc = $firehose->DescribeDeliveryStream(
        DeliveryStreamName => $stream_name,
      );
      $status = $desc->DeliveryStreamDescription->DeliveryStreamStatus;
      last if $status eq 'ACTIVE';
      diag "stream status=$status, waiting... (attempt $attempt)";
      sleep 5;
    }
    is($status, 'ACTIVE', 'stream reached ACTIVE status');
  };

  subtest 'PutRecord' => sub {
    my $result = $firehose->PutRecord(
      DeliveryStreamName => $stream_name,
      Record             => {
        Data => 'Paws Firehose integration test record',
      },
    );
    ok($result->RecordId, "put record id=" . $result->RecordId);
  };

  subtest 'DeleteDeliveryStream and cleanup S3 objects' => sub {
    $firehose->DeleteDeliveryStream(
      DeliveryStreamName => $stream_name,
    );
    ok(1, "deleted stream=$stream_name");

    my $s3 = $paws->service('S3');
    my $list = $s3->ListObjectsV2(
      Bucket => $s3_bucket,
      Prefix => $s3_prefix,
    );
    my $objects = $list->Contents // [];
    for my $obj (@$objects) {
      eval {
        $s3->DeleteObject(Bucket => $s3_bucket, Key => $obj->Key);
        diag "cleanup: deleted s3://$s3_bucket/" . $obj->Key;
      };
      warn "cleanup S3 error: $@" if $@;
    }
    diag "cleanup: removed " . scalar(@$objects) . " S3 objects with prefix=$s3_prefix";

    @cleanup = ();
  };

} else {
  diag "FIREHOSE_TEST_ROLE_ARN and FIREHOSE_TEST_S3_BUCKET not set; "
     . "running read-only Firehose tests";

  subtest 'ListDeliveryStreams' => sub {
    my $result = $firehose->ListDeliveryStreams();
    ok(defined $result->DeliveryStreamNames, 'ListDeliveryStreams returned stream names');
    diag "stream_count=" . scalar @{$result->DeliveryStreamNames // []};
  };

  subtest 'DescribeDeliveryStream (if any exist)' => sub {
    my $list = $firehose->ListDeliveryStreams();
    my $names = $list->DeliveryStreamNames;

    SKIP: {
      skip 'no existing delivery streams to describe', 1
        unless $names && @$names;

      my $name = $names->[0];
      my $result = $firehose->DescribeDeliveryStream(
        DeliveryStreamName => $name,
      );
      is(
        $result->DeliveryStreamDescription->DeliveryStreamName,
        $name,
        "described stream=$name",
      );
    }
  };
}

done_testing();
