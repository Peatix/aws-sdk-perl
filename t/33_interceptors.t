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

  # Retry interceptor runs first (before_request, before_attempt,
  # after_attempt, after_request), then the user interceptor.
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

done_testing;
