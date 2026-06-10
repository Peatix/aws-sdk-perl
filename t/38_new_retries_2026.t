#!/usr/bin/env perl

# Tests for the AWS_NEW_RETRIES_2026 opt-in retry behaviour:
# https://aws.amazon.com/blogs/developer/announcing-updated-retry-behavior-for-aws-sdks-and-tools/
#
# All of the behaviour is gated behind the opt-in environment variable, so the
# tests set it explicitly. When the flag is unset, the existing standard /
# adaptive behaviour (covered by t/33_retry_modes.t) is unchanged.

use strict;
use warnings;
use Test::More;

use Paws::API::Retry;
use Paws::API::Retry::TokenBucket;
use Paws::Exception;
use Paws::Net::Interceptor::Retry;
use Paws::Net::InterceptorContext;
use Paws::Net::APIResponse;

# Neutralise any ambient opt-in so the flag-off assertions below are
# deterministic; the flag-on subtests set the variable locally.
delete $ENV{AWS_NEW_RETRIES_2026};

sub make_exception {
  my (%args) = @_;
  return Paws::Exception->new(
    code        => $args{code}        // 'TestError',
    message     => $args{message}     // 'test',
    request_id  => $args{request_id}  // '',
    (defined $args{http_status} ? (http_status => $args{http_status}) : ()),
  );
}

sub max_of { (sort { $b <=> $a } @_)[0] }

# A minimal service stub the retry interceptor can introspect.
{
  package Test::Svc;
  use Moo;
  use Types::Standard qw(Int Str ArrayRef HashRef);
  has service      => (is => 'ro', isa => Str, default => 'sqs');
  has region       => (is => 'ro', isa => Str, default => 'us-east-1');
  has max_attempts => (is => 'ro', isa => Int, default => 5);
  has retriables   => (is => 'ro', isa => ArrayRef, default => sub { [] });
  has retry        => (is => 'ro', isa => HashRef, default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
}

{
  package Test::Call;
  use Moo;
  use Types::Standard qw(Str);
  has _api_call => (is => 'ro', isa => Str, default => 'ReceiveMessage');
}

# Mock caller composing the retry role, used for the long-polling integration.
{
  package Test::LPCaller;
  use Moo;
  use Types::Standard qw(ArrayRef Int);
  with 'Paws::Net::RetryCallerRole', 'Paws::Net::CallerRole';

  has send_count => (is => 'rw', isa => Int, default => 0);
  has mock_responses => (is => 'rw', isa => ArrayRef, default => sub { [] });
  has _response_idx  => (is => 'rw', isa => Int, default => 0);

  sub send_request {
    my ($self, $service, $call_object) = @_;
    $self->send_count($self->send_count + 1);
    my $idx = $self->_response_idx;
    $self->_response_idx($idx + 1);
    return $self->mock_responses->[$idx];
  }

  sub caller_to_response {
    my ($self, $service, $call_object, $response) = @_;
    return { _request_id => 'rid', status => $response->status };
  }
}

# ------------------------------------------------------------------
# Opt-in flag parsing
# ------------------------------------------------------------------
subtest 'new_retries_enabled parses AWS_NEW_RETRIES_2026' => sub {
  for my $v (qw(1 true TRUE yes On)) {
    local $ENV{AWS_NEW_RETRIES_2026} = $v;
    ok(Paws::API::Retry::new_retries_enabled(), "'$v' enables new retries");
  }
  for my $v (qw(0 false no off nonsense), '') {
    local $ENV{AWS_NEW_RETRIES_2026} = $v;
    ok(!Paws::API::Retry::new_retries_enabled(), "'$v' does not enable new retries");
  }
  {
    local $ENV{AWS_NEW_RETRIES_2026};
    delete $ENV{AWS_NEW_RETRIES_2026};
    ok(!Paws::API::Retry::new_retries_enabled(), 'unset does not enable new retries');
  }
};

# ------------------------------------------------------------------
# Retry quota cost
# ------------------------------------------------------------------
subtest 'retry quota cost' => sub {
  {
    local $ENV{AWS_NEW_RETRIES_2026} = 'true';
    is(Paws::API::Retry::TokenBucket->token_cost_for_error('transient'), 14,
      'transient retry costs 14 tokens when opted in');
    is(Paws::API::Retry::TokenBucket->token_cost_for_error('throttling'), 5,
      'throttling retry costs 5 tokens when opted in');
    is(Paws::API::Retry::TokenBucket->token_cost_for_error(undef), 5,
      'unclassified retry costs 5 tokens when opted in');
  }
  {
    local $ENV{AWS_NEW_RETRIES_2026};
    delete $ENV{AWS_NEW_RETRIES_2026};
    is(Paws::API::Retry::TokenBucket->token_cost_for_error('transient'), 10,
      'transient retry costs 10 tokens (unchanged) when not opted in');
    is(Paws::API::Retry::TokenBucket->token_cost_for_error('throttling'), 5,
      'throttling retry costs 5 tokens when not opted in');
  }
};

# ------------------------------------------------------------------
# Error-type-specific backoff base delays
# ------------------------------------------------------------------
subtest 'error-type backoff base when opted in' => sub {
  # retry_count = tries - 1; we drive tries to 5 (retry_count 4, 2^4 = 16).
  #   transient  max delay = min(20, 0.05 * 16) = 0.8
  #   throttling max delay = min(20, 1    * 16) = 16
  my $transient = Paws::API::Retry->new(
    mode => 'standard', max_tries => 10, retry_rules => [], new_retries => 1,
  );
  $transient->operation_result(make_exception(code => 'ConnectionError'));
  $transient->one_more_try for 1 .. 5;
  my @ts = map { $transient->sleep_time } 1 .. 200;
  ok(!(grep { $_ < 0 } @ts), 'transient delays are non-negative');
  ok(max_of(@ts) < 0.8, 'transient backoff bounded by 0.05 base (max < 0.8)');

  my $throttle = Paws::API::Retry->new(
    mode => 'standard', max_tries => 10, retry_rules => [], new_retries => 1,
  );
  $throttle->operation_result(make_exception(code => 'Throttling', http_status => 400));
  $throttle->one_more_try for 1 .. 5;
  my @hs = map { $throttle->sleep_time } 1 .. 200;
  ok(max_of(@hs) < 16, 'throttling backoff bounded by 1s base (max < 16)');
  ok(max_of(@hs) > 0.8,
    'throttling backoff uses the larger 1s base, not the transient base');
};

subtest 'dynamodb transient base delay (0.025s) when opted in' => sub {
  # tries 5 -> retry_count 4 -> min(20, 0.025 * 16) = 0.4
  my $ddb = Paws::API::Retry->new(
    mode => 'standard', max_tries => 10, retry_rules => [],
    new_retries => 1, transient_base_delay => 0.025,
  );
  $ddb->operation_result(make_exception(code => 'ConnectionError'));
  $ddb->one_more_try for 1 .. 5;
  my @s = map { $ddb->sleep_time } 1 .. 200;
  ok(max_of(@s) < 0.4, 'dynamodb transient backoff bounded by 0.025 base (max < 0.4)');
};

subtest 'flag off keeps the 1s standard base for any error type' => sub {
  my $retry = Paws::API::Retry->new(
    mode => 'standard', max_tries => 10, retry_rules => [],
  );
  ok(!$retry->new_retries, 'new_retries defaults off without the env flag');
  $retry->operation_result(make_exception(code => 'ConnectionError'));
  $retry->one_more_try for 1 .. 5; # min(20, 1 * 16) = 16
  my @s = map { $retry->sleep_time } 1 .. 200;
  ok(max_of(@s) > 0.8,
    'transient still uses the 1s base when not opted in (matches t/33)');
};

# ------------------------------------------------------------------
# Interceptor: DynamoDB detection and max-attempts resolution
# ------------------------------------------------------------------
subtest 'interceptor dynamodb detection and max attempts' => sub {
  my $i   = Paws::Net::Interceptor::Retry->new;
  my $ddb = Test::Svc->new(service => 'dynamodb', max_attempts => 5);
  my $sqs = Test::Svc->new(service => 'sqs', max_attempts => 5);

  ok(Paws::Net::Interceptor::Retry::_is_dynamodb($ddb), 'dynamodb detected');
  ok(!Paws::Net::Interceptor::Retry::_is_dynamodb($sqs), 'sqs is not dynamodb');

  is($i->_resolve_max_attempts($sqs, new_retries => 1, mode => 'standard', is_dynamodb => 0),
    3, 'standard new default is 3 attempts');
  is($i->_resolve_max_attempts($ddb, new_retries => 1, mode => 'adaptive', is_dynamodb => 1),
    4, 'dynamodb new default is 4 attempts');
  is($i->_resolve_max_attempts($sqs, new_retries => 0, mode => 'standard', is_dynamodb => 0),
    5, 'flag off keeps the service default');
  is($i->_resolve_max_attempts($sqs, new_retries => 1, mode => 'legacy', is_dynamodb => 0),
    5, 'legacy keeps the service default even when opted in');

  {
    local $ENV{AWS_MAX_ATTEMPTS} = 7;
    is($i->_resolve_max_attempts($ddb, new_retries => 1, mode => 'standard', is_dynamodb => 1),
      7, 'explicit AWS_MAX_ATTEMPTS overrides the new defaults');
  }
};

subtest 'before_request wires new-retries tuning into the tracker' => sub {
  local $ENV{AWS_NEW_RETRIES_2026} = 'true';
  local $ENV{AWS_RETRY_MODE}       = 'standard';

  my $i = Paws::Net::Interceptor::Retry->new;

  my $ddb_ctx = Paws::Net::InterceptorContext->new(
    service     => Test::Svc->new(service => 'dynamodb', max_attempts => 5),
    call_object => Test::Call->new,
  );
  $i->before_request($ddb_ctx);
  my $dt = $ddb_ctx->stash->{retry_tracker};
  ok($dt->new_retries, 'dynamodb tracker has new_retries enabled');
  is($dt->transient_base_delay, 0.025, 'dynamodb transient base 0.025');
  is($dt->throttling_base_delay, 1, 'throttling base 1s');
  is($dt->max_tries, 4, 'dynamodb max attempts 4');
  ok($ddb_ctx->stash->{new_retries}, 'stash flags new_retries on');

  my $sqs_ctx = Paws::Net::InterceptorContext->new(
    service     => Test::Svc->new(service => 'sqs', max_attempts => 5),
    call_object => Test::Call->new,
  );
  $i->before_request($sqs_ctx);
  my $st = $sqs_ctx->stash->{retry_tracker};
  is($st->transient_base_delay, 0.05, 'non-dynamodb transient base 0.05');
  is($st->max_tries, 3, 'non-dynamodb max attempts 3');
};

# ------------------------------------------------------------------
# Long-polling backoff on depleted quota
# ------------------------------------------------------------------
subtest '_is_long_polling detection' => sub {
  my $sqs  = Test::Svc->new(service => 'sqs');
  my $s3   = Test::Svc->new(service => 'S3');
  my $recv = Test::Call->new(_api_call => 'ReceiveMessage');
  my $send = Test::Call->new(_api_call => 'SendMessage');

  ok(Paws::Net::RetryCallerRole::_is_long_polling($sqs, $recv),
    'sqs ReceiveMessage is long-polling');
  ok(!Paws::Net::RetryCallerRole::_is_long_polling($sqs, $send),
    'sqs SendMessage is not long-polling');
  ok(!Paws::Net::RetryCallerRole::_is_long_polling($s3, $recv),
    'non-sqs ReceiveMessage is not long-polling');
};

subtest 'depleted-quota long-polling backoff' => sub {
  local $ENV{AWS_RETRY_MODE} = 'adaptive';

  my $drain = sub {
    Paws::API::Retry::TokenBucket->reset_all;
    Paws::API::Retry::TokenBucket->for_endpoint('us-east-1/sqs')->current_tokens(0);
  };

  # Opted in + long-polling: backs off before surfacing the depleted quota.
  {
    local $ENV{AWS_NEW_RETRIES_2026} = 'true';
    $drain->();
    my @slept;
    no warnings 'redefine';
    local *Paws::Net::RetryCallerRole::sleep = sub { push @slept, $_[0] };

    my $caller = Test::LPCaller->new;
    $caller->do_call(Test::Svc->new(service => 'sqs'), Test::Call->new(_api_call => 'ReceiveMessage'));
    is($caller->send_count, 0, 'no request attempted once the quota is depleted');
    is(scalar(@slept), 1, 'long-polling backoff slept once before giving up');
  }

  # Opted in + non-long-polling: no backoff, fails fast.
  {
    local $ENV{AWS_NEW_RETRIES_2026} = 'true';
    $drain->();
    my @slept;
    no warnings 'redefine';
    local *Paws::Net::RetryCallerRole::sleep = sub { push @slept, $_[0] };

    my $caller = Test::LPCaller->new;
    $caller->do_call(Test::Svc->new(service => 'sqs'), Test::Call->new(_api_call => 'SendMessage'));
    is($caller->send_count, 0, 'no request attempted once the quota is depleted');
    is(scalar(@slept), 0, 'non-long-polling operation does not back off');
  }

  # Flag off + long-polling: no backoff (current behaviour preserved).
  {
    local $ENV{AWS_NEW_RETRIES_2026};
    delete $ENV{AWS_NEW_RETRIES_2026};
    $drain->();
    my @slept;
    no warnings 'redefine';
    local *Paws::Net::RetryCallerRole::sleep = sub { push @slept, $_[0] };

    my $caller = Test::LPCaller->new;
    $caller->do_call(Test::Svc->new(service => 'sqs'), Test::Call->new(_api_call => 'ReceiveMessage'));
    is(scalar(@slept), 0, 'no long-polling backoff when not opted in');
  }
};

done_testing;
