#!/usr/bin/env perl

use strict;
use warnings;
use Test::More;
use Test::Exception;

use lib 't/lib';

use Paws::Net::Interceptor;
use Paws::Net::InterceptorContext;
use Paws::Net::InterceptorChain;
use Paws::Net::Interceptor::Retry;
use Paws::Net::APIResponse;
use Paws::Exception;

# ---------- helpers --------------------------------------------------

{
  package Test::Interceptor::Recorder;
  use Moose;
  with 'Paws::Net::Interceptor';

  has log => (
    is      => 'rw',
    isa     => 'ArrayRef',
    default => sub { [] },
  );

  sub before_request  { push @{ $_[0]->log }, 'before_request' }
  sub after_request   { push @{ $_[0]->log }, 'after_request' }
  sub before_attempt  { push @{ $_[0]->log }, 'before_attempt' }
  sub after_attempt   { push @{ $_[0]->log }, 'after_attempt' }
  sub on_error        { push @{ $_[0]->log }, 'on_error' }

  __PACKAGE__->meta->make_immutable;
}

{
  package Test::Interceptor::Named;
  use Moose;
  with 'Paws::Net::Interceptor';

  has name => (is => 'ro', isa => 'Str', required => 1);
  has log  => (is => 'rw', isa => 'ArrayRef', default => sub { [] });

  sub before_request  { push @{ $_[0]->log }, $_[0]->name . ':before_request' }
  sub after_request   { push @{ $_[0]->log }, $_[0]->name . ':after_request' }
  sub before_attempt  { push @{ $_[0]->log }, $_[0]->name . ':before_attempt' }
  sub after_attempt   { push @{ $_[0]->log }, $_[0]->name . ':after_attempt' }
  sub on_error        { push @{ $_[0]->log }, $_[0]->name . ':on_error' }

  __PACKAGE__->meta->make_immutable;
}

{
  package Test::NotAnInterceptor;
  use Moose;
  __PACKAGE__->meta->make_immutable;
}

# Minimal mock caller that composes RetryCallerRole
{
  package Test::MockCaller;
  use Moose;
  with 'Paws::Net::RetryCallerRole', 'Paws::Net::CallerRole';

  has mock_responses => (
    is      => 'rw',
    isa     => 'ArrayRef',
    default => sub { [] },
  );

  has _response_idx => (
    is      => 'rw',
    isa     => 'Int',
    default => 0,
  );

  sub send_request {
    my ($self, $service, $call_object) = @_;
    my $idx = $self->_response_idx;
    $self->_response_idx($idx + 1);
    return $self->mock_responses->[$idx];
  }

  sub caller_to_response {
    my ($self, $service, $call_object, $response) = @_;
    if ($response->status >= 500) {
      return Paws::Exception->new(
        message    => 'Server Error',
        code       => 'InternalError',
        request_id => '',
        http_status => $response->status,
      );
    }
    return { _request_id => 'test-req-id', status => $response->status };
  }

  __PACKAGE__->meta->make_immutable;
}

# Minimal service stub with retry attributes
{
  package Test::MockService;
  use Moose;

  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry        => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables   => (is => 'ro', isa => 'ArrayRef', default => sub { [] });
  has service      => (is => 'ro', isa => 'Str', default => 'S3');
  has region       => (is => 'ro', isa => 'Str', default => 'us-east-1');

  __PACKAGE__->meta->make_immutable;
}

# Mock call object for interceptor tests from master
{
  package MockCallObject;
  use Moose;
  has _api_call => (is => 'ro', isa => 'Str', default => 'PutObject');
  no Moose;
  __PACKAGE__->meta->make_immutable;
}

# ---------- InterceptorContext tests ---------------------------------

subtest 'InterceptorContext basic attributes' => sub {
  my $svc  = Test::MockService->new;
  my $ctx  = Paws::Net::InterceptorContext->new(
    service     => $svc,
    call_object => 'FakeCall',
  );

  is $ctx->attempt,       0,     'attempt starts at 0';
  is $ctx->should_retry,  0,     'should_retry defaults to false';
  is $ctx->retry_delay,   0,     'retry_delay defaults to 0';
  is ref($ctx->stash),    'HASH','stash is a hashref';
  ok !$ctx->result_is_exception, 'no result is not an exception';

  $ctx->result(Paws::Exception->new(
    message => 'boom', code => 'Err', request_id => '',
  ));
  ok $ctx->result_is_exception, 'Paws::Exception is flagged';

  $ctx->result({ ok => 1 });
  ok !$ctx->result_is_exception, 'plain hashref is not an exception';
};

# ---------- InterceptorChain tests -----------------------------------

subtest 'InterceptorChain runs hooks in order' => sub {
  my $shared_log = [];
  my $a = Test::Interceptor::Named->new(name => 'A', log => $shared_log);
  my $b = Test::Interceptor::Named->new(name => 'B', log => $shared_log);

  my $chain = Paws::Net::InterceptorChain->new(
    interceptors => [$a, $b],
  );

  my $ctx = Paws::Net::InterceptorContext->new(
    service     => Test::MockService->new,
    call_object => 'FakeCall',
  );

  $chain->run_hook('before_request', $ctx);
  $chain->run_hook('before_attempt', $ctx);
  $chain->run_hook('after_attempt',  $ctx);
  $chain->run_hook('after_request',  $ctx);

  is_deeply $shared_log, [
    'A:before_request',  'B:before_request',
    'A:before_attempt',  'B:before_attempt',
    'A:after_attempt',   'B:after_attempt',
    'A:after_request',   'B:after_request',
  ], 'hooks fire in registration order, A then B';
};

subtest 'InterceptorChain empty chain is safe' => sub {
  my $chain = Paws::Net::InterceptorChain->new;
  my $ctx   = Paws::Net::InterceptorContext->new(
    service     => Test::MockService->new,
    call_object => 'FakeCall',
  );
  lives_ok { $chain->run_hook('before_request', $ctx) }
    'running hook on empty chain does not die';
};

# ---------- Registry tests -------------------------------------------

subtest 'register_interceptor validates role' => sub {
  my $caller = Test::MockCaller->new(
    mock_responses => [],
  );

  my $good = Test::Interceptor::Recorder->new;
  lives_ok { $caller->register_interceptor($good) }
    'registering a valid interceptor succeeds';
  is $caller->interceptor_count, 1, 'count is 1';

  my $bad = Test::NotAnInterceptor->new;
  dies_ok { $caller->register_interceptor($bad) }
    'registering a non-interceptor dies';
  is $caller->interceptor_count, 1, 'count still 1 after rejection';
};

subtest 'interceptors passed at construction' => sub {
  my $rec = Test::Interceptor::Recorder->new;
  my $caller = Test::MockCaller->new(
    interceptors   => [$rec],
    mock_responses => [],
  );
  is $caller->interceptor_count, 1, 'interceptor set via constructor';
};

# ---------- Default no-op hooks don't break --------------------------

subtest 'default no-op hooks' => sub {
  {
    package Test::Interceptor::NoOp;
    use Moose;
    with 'Paws::Net::Interceptor';
    __PACKAGE__->meta->make_immutable;
  }

  my $noop = Test::Interceptor::NoOp->new;
  my $ctx  = Paws::Net::InterceptorContext->new(
    service     => Test::MockService->new,
    call_object => 'FakeCall',
  );

  lives_ok { $noop->before_request($ctx) }  'no-op before_request';
  lives_ok { $noop->after_request($ctx) }   'no-op after_request';
  lives_ok { $noop->before_attempt($ctx) }  'no-op before_attempt';
  lives_ok { $noop->after_attempt($ctx) }   'no-op after_attempt';
  lives_ok { $noop->on_error($ctx) }        'no-op on_error';
};


# ---------- Retry interceptor tests ----------------------------------

subtest 'Retry interceptor preserves exponential backoff' => sub {
  my $retry_interceptor = Paws::Net::Interceptor::Retry->new;
  my $svc = Test::MockService->new(max_attempts => 3);
  my $ctx = Paws::Net::InterceptorContext->new(
    service     => $svc,
    call_object => 'FakeCall',
  );

  $retry_interceptor->before_request($ctx);
  ok defined $ctx->stash->{retry_tracker}, 'tracker created in stash';

  # first attempt
  $retry_interceptor->before_attempt($ctx);
  is $ctx->attempt, 1, 'attempt is 1';

  $ctx->result(Paws::Exception->new(
    code => 'ConnectionError', message => 'fail', request_id => '',
  ));
  $retry_interceptor->after_attempt($ctx);
  ok $ctx->should_retry, 'should retry on ConnectionError';
  cmp_ok $ctx->retry_delay, '>=', 0, 'retry_delay is non-negative';

  # second attempt
  $ctx->should_retry(0);
  $retry_interceptor->before_attempt($ctx);
  is $ctx->attempt, 2, 'attempt is 2';

  $ctx->result(Paws::Exception->new(
    code => 'ConnectionError', message => 'fail', request_id => '',
  ));
  $retry_interceptor->after_attempt($ctx);
  ok $ctx->should_retry, 'should retry again';

  # third attempt (max_attempts=3, so no more retries)
  $ctx->should_retry(0);
  $retry_interceptor->before_attempt($ctx);
  is $ctx->attempt, 3, 'attempt is 3';

  $ctx->result(Paws::Exception->new(
    code => 'ConnectionError', message => 'fail', request_id => '',
  ));
  $retry_interceptor->after_attempt($ctx);
  ok !$ctx->should_retry, 'should NOT retry after max attempts';
};

subtest 'Retry interceptor does not retry on success' => sub {
  my $retry_interceptor = Paws::Net::Interceptor::Retry->new;
  my $svc = Test::MockService->new;
  my $ctx = Paws::Net::InterceptorContext->new(
    service     => $svc,
    call_object => 'FakeCall',
  );

  $retry_interceptor->before_request($ctx);
  $retry_interceptor->before_attempt($ctx);

  $ctx->result({ _request_id => 'ok', status => 200 });
  $retry_interceptor->after_attempt($ctx);
  ok !$ctx->should_retry, 'no retry on successful result';
};

subtest 'Retry interceptor respects per-service retriable rules' => sub {
  my $svc = Test::MockService->new(
    max_attempts => 3,
    retriables   => [
      sub { $_[0]->code eq 'CustomRetriable' },
    ],
  );
  my $retry_interceptor = Paws::Net::Interceptor::Retry->new;
  my $ctx = Paws::Net::InterceptorContext->new(
    service     => $svc,
    call_object => 'FakeCall',
  );

  $retry_interceptor->before_request($ctx);
  $retry_interceptor->before_attempt($ctx);

  $ctx->result(Paws::Exception->new(
    code => 'CustomRetriable', message => 'custom', request_id => '',
  ));
  $retry_interceptor->after_attempt($ctx);
  ok $ctx->should_retry, 'retries on custom retriable code';
};

subtest 'Full do_call with interceptors fires hooks' => sub {
  my $rec = Test::Interceptor::Recorder->new;
  my $caller = Test::MockCaller->new(
    interceptors   => [$rec],
    mock_responses => [
      Paws::Net::APIResponse->new(
        status  => 200,
        content => '{"ok":true}',
        headers => {},
      ),
    ],
  );
  my $svc = Test::MockService->new;

  my $result = $caller->do_call($svc, 'FakeCall');
  is ref($result), 'HASH', 'got hash result';

  ok scalar(@{ $rec->log }) >= 4, 'recorder saw at least 4 hooks';
  is $rec->log->[0], 'before_request',  'first hook: before_request';
  is $rec->log->[1], 'before_attempt',  'second hook: before_attempt';
  is $rec->log->[2], 'after_attempt',   'third hook: after_attempt';
  is $rec->log->[3], 'after_request',   'fourth hook: after_request';
};

subtest 'before_request interceptor can mutate call_object used by send_request' => sub {
  {
    package Test::Interceptor::MutateCall;
    use Moose;
    with 'Paws::Net::Interceptor';

    sub before_request {
      my ($self, $context) = @_;
      $context->call_object('MutatedCall');
    }

    __PACKAGE__->meta->make_immutable;
  }

  {
    package Test::MockCaller::Capturing;
    use Moose;
    with 'Paws::Net::RetryCallerRole', 'Paws::Net::CallerRole';

    our @captured_calls;

    has mock_responses => (
      is      => 'rw',
      isa     => 'ArrayRef',
      default => sub { [] },
    );

    has _response_idx => (
      is      => 'rw',
      isa     => 'Int',
      default => 0,
    );

    sub send_request {
      my ($self, $service, $call_object) = @_;
      push @captured_calls, $call_object;
      my $idx = $self->_response_idx;
      $self->_response_idx($idx + 1);
      return $self->mock_responses->[$idx];
    }

    sub caller_to_response {
      my ($self, $service, $call_object, $response) = @_;
      push @captured_calls, $call_object;
      return { _request_id => 'test-req-id', status => $response->status };
    }

    __PACKAGE__->meta->make_immutable;
  }

  my $mutator = Test::Interceptor::MutateCall->new;
  my $caller = Test::MockCaller::Capturing->new(
    interceptors   => [$mutator],
    mock_responses => [
      Paws::Net::APIResponse->new(
        status  => 200,
        content => '{"ok":true}',
        headers => {},
      ),
    ],
  );
  my $svc = Test::MockService->new;

  @Test::MockCaller::Capturing::captured_calls = ();
  my $result = $caller->do_call($svc, 'OriginalCall');

  is $Test::MockCaller::Capturing::captured_calls[0], 'MutatedCall',
    'send_request received the mutated call_object';
  is $Test::MockCaller::Capturing::captured_calls[1], 'MutatedCall',
    'caller_to_response received the mutated call_object';
};

subtest 'interceptor die is caught and sets exception result' => sub {
  {
    package Test::Interceptor::Dying;
    use Moose;
    with 'Paws::Net::Interceptor';

    sub before_attempt {
      my ($self, $context) = @_;
      die "intentional explosion";
    }

    __PACKAGE__->meta->make_immutable;
  }

  my $dying = Test::Interceptor::Dying->new;
  my $caller = Test::MockCaller->new(
    interceptors   => [$dying],
    mock_responses => [
      Paws::Net::APIResponse->new(
        status  => 200,
        content => '{"ok":true}',
        headers => {},
      ),
    ],
  );
  my $svc = Test::MockService->new;

  dies_ok { $caller->do_call($svc, 'FakeCall') }
    'do_call throws when interceptor dies';
  my $err = $@;
  ok $err->isa('Paws::Exception'), 'exception is a Paws::Exception';
  like $err->code, qr/InterceptorError/, 'code is InterceptorError';
  like $err->message, qr/intentional explosion/, 'message contains original error';
};

subtest 'do_call with retry fires on_error and retries' => sub {
  my $rec = Test::Interceptor::Recorder->new;
  my $caller = Test::MockCaller->new(
    interceptors   => [$rec],
    mock_responses => [
      Paws::Net::APIResponse->new(
        status  => 500,
        content => 'Internal Server Error',
        headers => {},
      ),
      Paws::Net::APIResponse->new(
        status  => 200,
        content => '{"ok":true}',
        headers => {},
      ),
    ],
  );
  my $svc = Test::MockService->new(max_attempts => 3);

  my $result = $caller->do_call($svc, 'FakeCall');
  is ref($result), 'HASH', 'got result after retry';

  my @on_error = grep { $_ eq 'on_error' } @{ $rec->log };
  is scalar(@on_error), 1, 'on_error fired once for the 500';

  my @before_attempt = grep { $_ eq 'before_attempt' } @{ $rec->log };
  is scalar(@before_attempt), 2, 'before_attempt fired twice (initial + retry)';
};

subtest 'do_call exhausts retries and throws' => sub {
  my $caller = Test::MockCaller->new(
    mock_responses => [
      (Paws::Net::APIResponse->new(
        status  => 500,
        content => 'Internal Server Error',
        headers => {},
      )) x 5,
    ],
  );
  my $svc = Test::MockService->new(max_attempts => 2);

  dies_ok { $caller->do_call($svc, 'FakeCall') }
    'throws after exhausting retries';
};

# ============================================================
# Log interceptor tests (from master)
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
      service     => Test::MockService->new,
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
      service     => Test::MockService->new,
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
      service     => Test::MockService->new,
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
# XRay interceptor tests (from master)
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
      service     => Test::MockService->new,
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

    if (!$xray_no_module->_xray_available) {
      my $ctx = Paws::Net::InterceptorContext->new(
        service     => Test::MockService->new,
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
# Metrics interceptor tests (from master)
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
      service     => Test::MockService->new,
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
      service     => Test::MockService->new,
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
      service     => Test::MockService->new,
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
      service     => Test::MockService->new,
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
# Multi-interceptor ordering and stash isolation (from master)
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
    service     => Test::MockService->new,
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

done_testing;
