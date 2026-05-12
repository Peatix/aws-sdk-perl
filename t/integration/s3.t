#!/usr/bin/env perl

use strict;
use warnings;
use Test::More;
use FindBin;
use lib "$FindBin::Bin/..";
use integration::helpers qw(skip_unless_integration paws_client unique_name test_region);

skip_unless_integration();

my $paws   = paws_client();
my $s3     = $paws->service('S3');
my $bucket = unique_name('paws-integ-s3');
my $key    = 'test-object.txt';
my $body   = "Hello from Paws integration test: $bucket";

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

subtest 'CreateBucket' => sub {
  my $region = test_region();
  my %args = (Bucket => $bucket);

  # us-east-1 must not send LocationConstraint
  if ($region ne 'us-east-1') {
    $args{CreateBucketConfiguration} = {
      LocationConstraint => $region,
    };
  }

  my $result = $s3->CreateBucket(%args);
  ok($result, "created bucket=$bucket");
  push @cleanup, sub { $s3->DeleteBucket(Bucket => $bucket) };
};

subtest 'PutObject' => sub {
  my $result = $s3->PutObject(
    Bucket => $bucket,
    Key    => $key,
    Body   => $body,
  );
  ok($result->ETag, "put object key=$key has ETag");
  push @cleanup, sub { $s3->DeleteObject(Bucket => $bucket, Key => $key) };
};

subtest 'GetObject content roundtrip' => sub {
  my $result = $s3->GetObject(
    Bucket => $bucket,
    Key    => $key,
  );
  is($result->Body, $body, 'GetObject body matches PutObject body');
};

subtest 'DeleteObject' => sub {
  my $result = $s3->DeleteObject(
    Bucket => $bucket,
    Key    => $key,
  );
  ok(1, "deleted object key=$key");
  @cleanup = grep { ref $_ } @cleanup;
  # Remove the object cleanup since we already deleted it; keep bucket cleanup
  @cleanup = (sub { $s3->DeleteBucket(Bucket => $bucket) });
};

subtest 'DeleteBucket' => sub {
  my $result = $s3->DeleteBucket(Bucket => $bucket);
  ok(1, "deleted bucket=$bucket");
  @cleanup = ();
};

done_testing();
