#!/usr/bin/env perl

use strict;
use warnings;
use Test::More;
use Test::Exception;

use Paws::Net::InterceptorContext;
use Paws::Net::APIResponse;
use Paws::Exception;

# --- Lightweight mocks for service and call_object ---

{
  package MockService;
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'S3');
  has region  => (is => 'ro', isa => 'Str', default => 'us-east-1');
  no Moose;
  __PACKAGE__->meta->make_immutable;
}

{
  package MockCallObject;
  use Moose;
  has _api_call => (is => 'ro', isa => 'Str', default => 'PutObject');
  no Moose;
  __PACKAGE__->meta->make_immutable;
}

# ============================================================
# Part 1: Paws::Net::Interceptor::Log
# ============================================================

subtest 'Log interceptor' => sub {
  use_ok('Paws::Net::Interceptor::Log');

  my $output = '';
  open my $fh, '>', \$output or die "Cannot open string handle: $!";

  my $logger = Paws::Net::Interceptor::Log->new(log_handle => $fh);

  ok($logger->does('Paws::Net::Interceptor'), 'consumes Interceptor role');

  subtest 'successful request logs info' => sub {
    $output = '';

    my $ctx = Paws::Net::InterceptorContext->new(
      service     => MockService->new,
      call_object => MockCallObject->new,
    );

    $logger->before_request($ctx);
    like($output, qr/level=debug.*service=S3.*op=PutObject.*phase=before_request/,
      'before_request emits debug line');

    $ctx->attempt(1);
    $logger->before_attempt($ctx);
    ok(defined $ctx->stash->{_interceptor_log}{attempt_start},
      'before_attempt records start time in stash');

    my $response = Paws::Net::APIResponse->new(
      status  => 200,
      headers => { 'x-amz-request-id' => 'REQ123' },
      content => '{}',
    );
    $ctx->response($response);

    # Simulate a successful result (non-exception)
    my $result = bless { _request_id => 'REQ123' }, 'MockResult';
    {
      no strict 'refs';
      *MockResult::_request_id = sub { $_[0]->{_request_id} };
    }
    $ctx->result($result);

    $logger->after_attempt($ctx);
    like($output, qr/level=info.*service=S3.*op=PutObject.*attempt=1.*status=200/,
      'after_attempt emits info for success');

    $logger->after_request($ctx);
    like($output, qr/level=info.*phase=after_request.*outcome=success/,
      'after_request emits info for success');
  };

  subtest 'error request logs error' => sub {
    $output = '';

    my $ctx = Paws::Net::InterceptorContext->new(
      service     => MockService->new,
      call_object => MockCallObject->new,
    );

    $ctx->attempt(1);
    $logger->before_attempt($ctx);

    my $exception = Paws::Exception->new(
      message     => 'Access Denied',
      code        => 'AccessDenied',
      request_id  => 'REQ456',
      http_status => 403,
    );
    $ctx->result($exception);
    $ctx->should_retry(0);

    $logger->after_attempt($ctx);
    like($output, qr/level=error.*error=AccessDenied.*retry=false/,
      'after_attempt emits error for non-retryable failure');

    $logger->on_error($ctx);
    like($output, qr/level=error.*phase=on_error.*error=AccessDenied/,
      'on_error emits error');

    $logger->after_request($ctx);
    like($output, qr/level=error.*phase=after_request.*outcome=error/,
      'after_request emits error for failure');
  };

  subtest 'retryable error logs warn' => sub {
    $output = '';

    my $ctx = Paws::Net::InterceptorContext->new(
      service     => MockService->new,
      call_object => MockCallObject->new,
    );

    $ctx->attempt(1);
    $logger->before_attempt($ctx);

    my $exception = Paws::Exception->new(
      message     => 'Service Unavailable',
      code        => 'ServiceUnavailable',
      request_id  => 'REQ789',
      http_status => 503,
    );
    $ctx->result($exception);
    $ctx->should_retry(1);

    $logger->after_attempt($ctx);
    like($output, qr/level=warn.*error=ServiceUnavailable.*retry=true/,
      'after_attempt emits warn for retryable error');
  };

  close $fh;
};

# ============================================================
# Part 2: Paws::Net::Interceptor::XRay
# ============================================================

subtest 'XRay interceptor' => sub {
  use_ok('Paws::Net::Interceptor::XRay');

  my $xray = Paws::Net::Interceptor::XRay->new;

  ok($xray->does('Paws::Net::Interceptor'), 'consumes Interceptor role');

  SKIP: {
    skip 'AWS::XRay not installed', 3 unless eval { require AWS::XRay; 1 };

    my $captured_segment;
    no warnings 'redefine', 'once';
    local *AWS::XRay::capture = sub {
      my ($name, $code) = @_;
      my $segment = {};
      $code->($segment);
      $captured_segment = { name => $name, %$segment };
    };

    my $ctx = Paws::Net::InterceptorContext->new(
      service     => MockService->new,
      call_object => MockCallObject->new,
    );

    $xray->before_request($ctx);
    ok(defined $ctx->stash->{_interceptor_xray}{start_time},
      'before_request records start_time');

    $ctx->attempt(1);
    my $response = Paws::Net::APIResponse->new(
      status  => 200,
      headers => { 'x-amz-request-id' => 'XRAY123' },
      content => '{}',
    );
    $ctx->response($response);

    my $result = bless { _request_id => 'XRAY123' }, 'MockResult';
    $ctx->result($result);

    $xray->after_request($ctx);

    is($captured_segment->{name}, 'S3::PutObject',
      'segment named Service::Operation');
    is($captured_segment->{aws}{operation}, 'PutObject',
      'aws annotation has operation');
    is($captured_segment->{aws}{region}, 'us-east-1',
      'aws annotation has region');
  }

  subtest 'XRay gracefully handles missing module' => sub {
    my $xray_no_module = Paws::Net::Interceptor::XRay->new;

    # If AWS::XRay isn't available, the interceptor should be a no-op
    if (!$xray_no_module->_xray_available) {
      my $ctx = Paws::Net::InterceptorContext->new(
        service     => MockService->new,
        call_object => MockCallObject->new,
      );

      lives_ok { $xray_no_module->before_request($ctx) }
        'before_request is no-op without AWS::XRay';
      lives_ok { $xray_no_module->after_request($ctx) }
        'after_request is no-op without AWS::XRay';
    } else {
      pass 'AWS::XRay is available, skip missing-module test';
    }
  };
};

# ============================================================
# Part 3: Paws::Net::Interceptor::Metrics
# ============================================================

subtest 'Metrics interceptor' => sub {
  use_ok('Paws::Net::Interceptor::Metrics');

  subtest 'successful call emits metrics' => sub {
    my @emitted;
    my $metrics = Paws::Net::Interceptor::Metrics->new(
      callback => sub { push @emitted, shift },
    );

    ok($metrics->does('Paws::Net::Interceptor'), 'consumes Interceptor role');

    my $ctx = Paws::Net::InterceptorContext->new(
      service     => MockService->new,
      call_object => MockCallObject->new,
    );

    $metrics->before_request($ctx);

    $ctx->attempt(1);
    my $response = Paws::Net::APIResponse->new(
      status  => 200,
      headers => {},
      content => '{}',
    );
    $ctx->response($response);

    my $result = bless { _request_id => 'M1' }, 'MockResult';
    $ctx->result($result);

    $metrics->after_request($ctx);

    is(scalar @emitted, 1, 'callback invoked once');
    my $m = $emitted[0];
    is($m->{service}, 'S3', 'service field');
    is($m->{operation}, 'PutObject', 'operation field');
    is($m->{status}, 200, 'status field');
    is($m->{attempt_count}, 1, 'attempt_count field');
    ok($m->{latency_ms} >= 0, 'latency_ms is non-negative');
    ok(!exists $m->{error}, 'no error field on success');
  };

  subtest 'error call includes error in metrics' => sub {
    my @emitted;
    my $metrics = Paws::Net::Interceptor::Metrics->new(
      callback => sub { push @emitted, shift },
    );

    my $ctx = Paws::Net::InterceptorContext->new(
      service     => MockService->new,
      call_object => MockCallObject->new,
    );

    $metrics->before_request($ctx);

    $ctx->attempt(3);
    my $exception = Paws::Exception->new(
      message     => 'Throttled',
      code        => 'ThrottlingException',
      request_id  => 'M2',
      http_status => 400,
    );
    $ctx->result($exception);

    $metrics->after_request($ctx);

    is(scalar @emitted, 1, 'callback invoked once');
    my $m = $emitted[0];
    is($m->{service}, 'S3', 'service field');
    is($m->{status}, 400, 'status from exception');
    is($m->{attempt_count}, 3, 'attempt_count reflects retries');
    is($m->{error}, 'ThrottlingException', 'error field present');
  };

  subtest 'no-op when no callback' => sub {
    my $metrics = Paws::Net::Interceptor::Metrics->new;

    my $ctx = Paws::Net::InterceptorContext->new(
      service     => MockService->new,
      call_object => MockCallObject->new,
    );

    $metrics->before_request($ctx);

    my $result = bless { _request_id => 'M3' }, 'MockResult';
    $ctx->result($result);
    $ctx->attempt(1);

    lives_ok { $metrics->after_request($ctx) }
      'no-op callback does not throw';
  };

  subtest 'callback error is caught' => sub {
    my $metrics = Paws::Net::Interceptor::Metrics->new(
      callback => sub { die "boom" },
    );

    my $ctx = Paws::Net::InterceptorContext->new(
      service     => MockService->new,
      call_object => MockCallObject->new,
    );

    $metrics->before_request($ctx);

    my $result = bless { _request_id => 'M4' }, 'MockResult';
    $ctx->result($result);
    $ctx->attempt(1);

    my $warning = '';
    local $SIG{__WARN__} = sub { $warning .= $_[0] };

    lives_ok { $metrics->after_request($ctx) }
      'callback error does not propagate';
    like($warning, qr/callback error.*boom/,
      'warning emitted for callback error');
  };
};

# ============================================================
# Part 4: Multi-interceptor integration
# ============================================================

subtest 'Multi-interceptor ordering and stash isolation' => sub {
  my @order;

  {
    package TestInterceptorA;
    use Moose;
    with 'Paws::Net::Interceptor';

    has order_log => (is => 'ro', isa => 'ArrayRef', required => 1);

    sub before_request {
      my ($self, $ctx) = @_;
      push @{ $self->order_log }, 'A:before_request';
      $ctx->stash->{_test_a}{seen_before_request} = 1;
    }

    sub before_attempt {
      my ($self, $ctx) = @_;
      push @{ $self->order_log }, 'A:before_attempt';
      $ctx->stash->{_test_a}{seen_before_attempt} = 1;
    }

    sub after_attempt {
      my ($self, $ctx) = @_;
      push @{ $self->order_log }, 'A:after_attempt';
      $ctx->stash->{_test_a}{seen_after_attempt} = 1;
    }

    sub on_error {
      my ($self, $ctx) = @_;
      push @{ $self->order_log }, 'A:on_error';
    }

    sub after_request {
      my ($self, $ctx) = @_;
      push @{ $self->order_log }, 'A:after_request';
      $ctx->stash->{_test_a}{seen_after_request} = 1;
    }

    no Moose;
    __PACKAGE__->meta->make_immutable;
  }

  {
    package TestInterceptorB;
    use Moose;
    with 'Paws::Net::Interceptor';

    has order_log => (is => 'ro', isa => 'ArrayRef', required => 1);

    sub before_request {
      my ($self, $ctx) = @_;
      push @{ $self->order_log }, 'B:before_request';
      $ctx->stash->{_test_b}{seen_before_request} = 1;
    }

    sub before_attempt {
      my ($self, $ctx) = @_;
      push @{ $self->order_log }, 'B:before_attempt';
      $ctx->stash->{_test_b}{seen_before_attempt} = 1;
    }

    sub after_attempt {
      my ($self, $ctx) = @_;
      push @{ $self->order_log }, 'B:after_attempt';
      $ctx->stash->{_test_b}{seen_after_attempt} = 1;
    }

    sub on_error {
      my ($self, $ctx) = @_;
      push @{ $self->order_log }, 'B:on_error';
    }

    sub after_request {
      my ($self, $ctx) = @_;
      push @{ $self->order_log }, 'B:after_request';
      $ctx->stash->{_test_b}{seen_after_request} = 1;
    }

    no Moose;
    __PACKAGE__->meta->make_immutable;
  }

  my $ctx = Paws::Net::InterceptorContext->new(
    service     => MockService->new,
    call_object => MockCallObject->new,
  );

  my @interceptors = (
    TestInterceptorA->new(order_log => \@order),
    TestInterceptorB->new(order_log => \@order),
  );

  $_->before_request($ctx) for @interceptors;
  $ctx->attempt(1);
  $_->before_attempt($ctx) for @interceptors;

  my $exception = Paws::Exception->new(
    message     => 'Service Unavailable',
    code        => 'ServiceUnavailable',
    request_id  => 'MULTI1',
    http_status => 503,
  );
  $ctx->result($exception);
  $ctx->should_retry(0);

  $_->on_error($ctx) for @interceptors;
  $_->after_attempt($ctx) for @interceptors;
  $_->after_request($ctx) for @interceptors;

  is_deeply(
    \@order,
    [
      'A:before_request',  'B:before_request',
      'A:before_attempt',  'B:before_attempt',
      'A:on_error',        'B:on_error',
      'A:after_attempt',   'B:after_attempt',
      'A:after_request',   'B:after_request',
    ],
    'hooks fire in registration order across interceptors',
  );

  ok($ctx->stash->{_test_a}{seen_before_request},  'A stash: before_request');
  ok($ctx->stash->{_test_a}{seen_before_attempt},  'A stash: before_attempt');
  ok($ctx->stash->{_test_a}{seen_after_attempt},   'A stash: after_attempt');
  ok($ctx->stash->{_test_a}{seen_after_request},   'A stash: after_request');

  ok($ctx->stash->{_test_b}{seen_before_request},  'B stash: before_request');
  ok($ctx->stash->{_test_b}{seen_before_attempt},  'B stash: before_attempt');
  ok($ctx->stash->{_test_b}{seen_after_attempt},   'B stash: after_attempt');
  ok($ctx->stash->{_test_b}{seen_after_request},   'B stash: after_request');

  ok(!exists $ctx->stash->{_test_a}{seen_before_attempt_b},
    'A stash not polluted by B');
  ok(!exists $ctx->stash->{_test_b}{seen_before_attempt_a},
    'B stash not polluted by A');
};

# ============================================================
# Framework: InterceptorContext and register_interceptor
# ============================================================

subtest 'InterceptorContext' => sub {
  my $ctx = Paws::Net::InterceptorContext->new(
    service     => MockService->new,
    call_object => MockCallObject->new,
  );

  is($ctx->attempt, 0, 'default attempt is 0');
  is($ctx->should_retry, 0, 'default should_retry is false');
  is(ref $ctx->stash, 'HASH', 'stash is a hashref');
  ok(!$ctx->result_is_exception, 'no result is not exception');

  $ctx->result(Paws::Exception->new(
    message => 'test', code => 'X', request_id => '',
  ));
  ok($ctx->result_is_exception, 'Paws::Exception is exception');

  $ctx->result('scalar_result');
  ok(!$ctx->result_is_exception, 'scalar is not exception');
};

done_testing;
