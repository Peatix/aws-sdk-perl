#!/usr/bin/env perl

use strict;
use warnings;
use Test::More;
use File::Temp qw(tempfile);

BEGIN {
  package MockS3::Response;
  use Moose;
  has ETag           => (is => 'ro', isa => 'Str', default => '"abc123"');
  has UploadId       => (is => 'ro', isa => 'Str', default => 'upload-id-1');
  has ContentLength  => (is => 'ro', isa => 'Int', default => 0);
  has Body           => (is => 'ro', isa => 'Str', default => '');
  has Location       => (is => 'ro', isa => 'Str', default => '');
  has _request_id    => (is => 'ro', isa => 'Str', default => 'req-1');
}

{
  package MockS3Client;
  use Moose;

  has calls => (is => 'rw', isa => 'ArrayRef', default => sub { [] });
  has stored_parts => (is => 'rw', isa => 'HashRef', default => sub { {} });
  has stored_objects => (is => 'rw', isa => 'HashRef', default => sub { {} });

  sub _record {
    my ($self, $method, %args) = @_;
    push @{$self->calls}, { method => $method, %args };
  }

  sub PutObject {
    my ($self, %args) = @_;
    $self->_record('PutObject', %args);
    my $key = $args{Key};
    $self->stored_objects->{$key} = $args{Body};
    return MockS3::Response->new(ETag => '"single-etag"');
  }

  sub CreateMultipartUpload {
    my ($self, %args) = @_;
    $self->_record('CreateMultipartUpload', %args);
    return MockS3::Response->new(UploadId => 'test-upload-id');
  }

  sub UploadPart {
    my ($self, %args) = @_;
    $self->_record('UploadPart', %args);
    my $part_key = $args{PartNumber};
    $self->stored_parts->{$part_key} = $args{Body};
    return MockS3::Response->new(ETag => sprintf('"etag-part-%d"', $args{PartNumber}));
  }

  sub CompleteMultipartUpload {
    my ($self, %args) = @_;
    $self->_record('CompleteMultipartUpload', %args);
    return MockS3::Response->new(Location => 'http://bucket.s3.amazonaws.com/key');
  }

  sub AbortMultipartUpload {
    my ($self, %args) = @_;
    $self->_record('AbortMultipartUpload', %args);
    return MockS3::Response->new();
  }

  sub HeadObject {
    my ($self, %args) = @_;
    $self->_record('HeadObject', %args);
    my $key = $args{Key};
    my $body = $self->stored_objects->{$key} // '';
    return MockS3::Response->new(ContentLength => length($body));
  }

  sub GetObject {
    my ($self, %args) = @_;
    $self->_record('GetObject', %args);
    my $key = $args{Key};
    my $body = $self->stored_objects->{$key} // '';

    if (my $range = $args{Range}) {
      if ($range =~ /^bytes=(\d+)-(\d+)$/) {
        $body = substr($body, $1, $2 - $1 + 1);
      }
    }
    return MockS3::Response->new(Body => $body, ContentLength => length($body));
  }
}

use_ok('Paws::S3::Transfer');

subtest 'single-part upload (file smaller than part_size)' => sub {
  my $mock = MockS3Client->new;
  my $transfer = Paws::S3::Transfer->new(
    client    => $mock,
    part_size => 1024,
  );

  my ($fh, $filename) = tempfile(UNLINK => 1);
  print $fh "A" x 500;
  close($fh);

  $transfer->upload(
    bucket => 'test-bucket',
    key    => 'test-key',
    source => $filename,
  );

  my @calls = @{$mock->calls};
  is(scalar @calls, 1, 'single PutObject call');
  is($calls[0]{method}, 'PutObject', 'method is PutObject');
  is($calls[0]{Bucket}, 'test-bucket', 'correct bucket');
  is($calls[0]{Key}, 'test-key', 'correct key');
  is(length($calls[0]{Body}), 500, 'correct body size');
};

subtest 'multipart upload (file larger than part_size)' => sub {
  my $mock = MockS3Client->new;
  my $transfer = Paws::S3::Transfer->new(
    client    => $mock,
    part_size => 100,
  );

  my ($fh, $filename) = tempfile(UNLINK => 1);
  print $fh "B" x 350;
  close($fh);

  $transfer->upload(
    bucket => 'test-bucket',
    key    => 'multipart-key',
    source => $filename,
  );

  my @calls = @{$mock->calls};
  my @methods = map { $_->{method} } @calls;

  is($methods[0], 'CreateMultipartUpload', 'starts with CreateMultipartUpload');
  my @upload_parts = grep { $_->{method} eq 'UploadPart' } @calls;
  is(scalar @upload_parts, 4, '4 upload parts for 350 bytes / 100 byte parts');
  is($methods[-1], 'CompleteMultipartUpload', 'ends with CompleteMultipartUpload');

  is($upload_parts[0]{PartNumber}, 1, 'first part number is 1');
  is($upload_parts[1]{PartNumber}, 2, 'second part number is 2');
  is(length($upload_parts[0]{Body}), 100, 'first part is full size');
  is(length($upload_parts[3]{Body}), 50, 'last part is remainder');
};

subtest 'progress callback is invoked' => sub {
  my $mock = MockS3Client->new;
  my @progress;
  my $transfer = Paws::S3::Transfer->new(
    client            => $mock,
    part_size         => 100,
    progress_callback => sub {
      my (%info) = @_;
      push @progress, \%info;
    },
  );

  my ($fh, $filename) = tempfile(UNLINK => 1);
  print $fh "C" x 250;
  close($fh);

  $transfer->upload(
    bucket => 'test-bucket',
    key    => 'progress-key',
    source => $filename,
  );

  ok(scalar @progress > 0, 'progress callback was called');
  is($progress[-1]{bytes_transferred}, 250, 'final progress shows all bytes sent');
  is($progress[-1]{total_size}, 250, 'total_size is correct');
};

subtest 'abort on failure' => sub {
  {
    package FailingS3Client;
    use Moose;
    extends 'MockS3Client';

    has fail_on_part => (is => 'ro', isa => 'Int', default => 2);

    sub UploadPart {
      my ($self, %args) = @_;
      $self->_record('UploadPart', %args);
      if ($args{PartNumber} == $self->fail_on_part) {
        die "simulated upload failure on part=" . $args{PartNumber};
      }
      return MockS3::Response->new(ETag => '"etag"');
    }
  }

  my $mock = FailingS3Client->new(fail_on_part => 2);
  my $transfer = Paws::S3::Transfer->new(
    client    => $mock,
    part_size => 100,
  );

  my ($fh, $filename) = tempfile(UNLINK => 1);
  print $fh "D" x 300;
  close($fh);

  eval {
    $transfer->upload(
      bucket => 'test-bucket',
      key    => 'fail-key',
      source => $filename,
    );
  };
  my $err = $@;
  like($err, qr/simulated upload failure/, 'error propagated');

  my @aborts = grep { $_->{method} eq 'AbortMultipartUpload' } @{$mock->calls};
  is(scalar @aborts, 1, 'AbortMultipartUpload called on failure');
  is($aborts[0]{UploadId}, 'test-upload-id', 'correct upload ID aborted');
};

subtest 'single-part download' => sub {
  my $mock = MockS3Client->new;
  $mock->stored_objects->{'dl-key'} = "Hello Download";

  my $transfer = Paws::S3::Transfer->new(
    client    => $mock,
    part_size => 1024,
  );

  my ($fh, $filename) = tempfile(UNLINK => 1);

  $transfer->download(
    bucket => 'test-bucket',
    key    => 'dl-key',
    dest   => $filename,
  );

  open(my $rfh, '<:raw', $filename);
  my $content = do { local $/; <$rfh> };
  close($rfh);

  is($content, "Hello Download", 'downloaded content matches');
};

subtest 'multipart download with Range' => sub {
  my $mock = MockS3Client->new;
  my $big_data = "X" x 500;
  $mock->stored_objects->{'big-key'} = $big_data;

  my $transfer = Paws::S3::Transfer->new(
    client    => $mock,
    part_size => 200,
  );

  my ($fh, $filename) = tempfile(UNLINK => 1);

  $transfer->download(
    bucket => 'test-bucket',
    key    => 'big-key',
    dest   => $filename,
  );

  open(my $rfh, '<:raw', $filename);
  my $content = do { local $/; <$rfh> };
  close($rfh);

  is(length($content), 500, 'downloaded all 500 bytes');
  is($content, $big_data, 'content matches original');

  my @get_calls = grep { $_->{method} eq 'GetObject' } @{$mock->calls};
  is(scalar @get_calls, 3, '3 range requests for 500/200');
  like($get_calls[0]{Range}, qr/bytes=0-199/, 'first range correct');
  like($get_calls[1]{Range}, qr/bytes=200-399/, 'second range correct');
  like($get_calls[2]{Range}, qr/bytes=400-499/, 'third range correct');
};

subtest 'upload from filehandle' => sub {
  my $mock = MockS3Client->new;
  my $transfer = Paws::S3::Transfer->new(
    client    => $mock,
    part_size => 1024,
  );

  my ($fh, $filename) = tempfile(UNLINK => 1);
  print $fh "FH upload data";
  seek($fh, 0, 0);

  $transfer->upload(
    bucket => 'test-bucket',
    key    => 'fh-key',
    fh     => $fh,
  );

  my @calls = @{$mock->calls};
  is($calls[0]{method}, 'PutObject', 'PutObject called');
  is($calls[0]{Body}, 'FH upload data', 'body from filehandle');
};

done_testing;
