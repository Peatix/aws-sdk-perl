#!/usr/bin/env perl

use strict;
use warnings;
use Test::More;
use Test::Exception;

use lib 't/lib';

use Paws::Net::Interceptor;
use Paws::Net::InterceptorContext;
use Paws::Net::InterceptorChain;
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

done_testing;
