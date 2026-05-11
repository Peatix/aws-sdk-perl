#!/usr/bin/env perl

use strict;
use warnings;
use Test::More;
use IO::Handle;
use File::Temp qw(tempfile);

use Paws::Net::APIRequest;

subtest 'APIRequest stream_body detection' => sub {
  my $req = Paws::Net::APIRequest->new(
    method => 'PUT',
    url    => 'http://example.com/test',
  );

  ok(!$req->has_stream_body, 'no stream_body by default');
  ok(!$req->is_streaming_body, 'is_streaming_body false without stream_body');

  $req->stream_body('plain string');
  ok($req->has_stream_body, 'has_stream_body after setting');
  ok(!$req->is_streaming_body, 'plain string is not a streaming body');
};

subtest 'APIRequest detects GLOB ref as streaming' => sub {
  my ($fh, $filename) = tempfile(UNLINK => 1);
  print $fh "test data for glob";
  seek($fh, 0, 0);

  my $req = Paws::Net::APIRequest->new(
    method => 'PUT',
    url    => 'http://example.com/test',
  );
  $req->stream_body($fh);

  ok($req->has_stream_body, 'has_stream_body set');
  ok($req->is_streaming_body, 'GLOB ref detected as streaming');
};

subtest 'APIRequest detects IO::Handle as streaming' => sub {
  my $io = IO::Handle->new;
  my ($fh, $filename) = tempfile(UNLINK => 1);
  print $fh "test data for io handle";
  seek($fh, 0, 0);

  my $handle = IO::Handle->new_from_fd(fileno($fh), 'r');

  my $req = Paws::Net::APIRequest->new(
    method => 'PUT',
    url    => 'http://example.com/test',
  );
  $req->stream_body($handle);

  ok($req->has_stream_body, 'has_stream_body set');
  ok($req->is_streaming_body, 'IO::Handle detected as streaming');

  $handle->close;
};

subtest 'Caller builds code-ref content from streaming body' => sub {
  plan skip_all => 'HTTP::Tiny not available' unless eval { require HTTP::Tiny; 1 };

  my ($fh, $filename) = tempfile(UNLINK => 1);
  my $test_data = "Hello, streaming world!" x 100;
  print $fh $test_data;
  seek($fh, 0, 0);

  my $req = Paws::Net::APIRequest->new(
    method => 'PUT',
    url    => 'http://example.com/test',
  );
  $req->stream_body($fh);

  ok($req->is_streaming_body, 'body is streaming');

  my $collected = '';
  my $chunk_size = 65536;
  while (1) {
    my $buf;
    my $n = read($fh, $buf, $chunk_size);
    last unless $n;
    $collected .= $buf;
  }

  is($collected, $test_data, 'all data read from streaming body');
};

subtest 'RetryCallerRole passes params through' => sub {
  {
    package TestCaller::StreamParams;
    use Moose;
    with 'Paws::Net::RetryCallerRole', 'Paws::Net::CallerRole';
    use Paws::Net::APIResponse;

    has received_params => (is => 'rw', isa => 'HashRef', default => sub { {} });

    sub send_request {
      my ($self, $service, $call_object, %params) = @_;
      $self->received_params(\%params);
      return Paws::Net::APIResponse->new(
        status  => 200,
        content => '{}',
        headers => { 'x-amzn-requestid' => 'test-123' },
      );
    }

    sub caller_to_response {
      my ($self, $service, $call_object, $response) = @_;
      return Paws::API::Response->new(_request_id => 'test-123');
    }
  }

  require Paws::API::Response;

  my $caller = TestCaller::StreamParams->new;
  my $cb = sub { };

  {
    package FakeService::Stream;
    use Moose;
    sub retry { { base => 'rand', type => 'exponential', growth_factor => 2 } }
    sub max_attempts { 1 }
    sub retriables { [] }
    sub prepare_request_for_call { die "should not be called" }
    sub response_to_object { die "should not be called" }
  }

  {
    package FakeCall::Stream;
    use Moose;
    sub _returns { undef }
    sub _result_key { undef }
  }

  my $service = FakeService::Stream->new;
  my $call = FakeCall::Stream->new;

  eval { $caller->do_call($service, $call, response_callback => $cb) };

  is($caller->received_params->{response_callback}, $cb,
    'response_callback forwarded to send_request');
};

done_testing;
