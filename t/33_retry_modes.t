#!/usr/bin/env perl

use strict;
use warnings;
use Test::More;
use Paws::API::Retry;
use Paws::API::Retry::TokenBucket;
use Paws::Exception;

sub make_exception {
  my (%args) = @_;
  return Paws::Exception->new(
    code        => $args{code}        // 'TestError',
    message     => $args{message}     // 'test',
    request_id  => $args{request_id}  // '',
    (defined $args{http_status} ? (http_status => $args{http_status}) : ()),
  );
}

# ============================================================
# Legacy mode: unchanged behaviour
# ============================================================
subtest 'legacy mode preserves existing backoff formula' => sub {
  my $retry = Paws::API::Retry->new(
    type        => 'exponential',
    base        => 3,
    growth_factor => 2,
    max_tries   => 5,
    tries       => 0,
    retry_rules => [ sub { shift->code eq 'X' } ],
  );

  $retry->operation_result(make_exception(code => 'X'));

  $retry->one_more_try;
  my $s1 = $retry->sleep_time;
  ok($s1 >= 0 && $s1 <= 1, "legacy try=1 sleep in [0,1]: $s1");
  ok($retry->should_retry, 'legacy: should retry after try 1');

  $retry->one_more_try;
  my $s2 = $retry->sleep_time;
  ok($s2 >= 1 && $s2 <= 2, "legacy try=2 sleep in [1,2]: $s2");

  $retry->one_more_try;
  my $s3 = $retry->sleep_time;
  ok($s3 >= 2 && $s3 <= 3, "legacy try=3 sleep in [2,3]: $s3");

  $retry->one_more_try;
  my $s4 = $retry->sleep_time;
  ok($s4 >= 4 && $s4 <= 5, "legacy try=4 sleep in [4,5]: $s4");

  $retry->one_more_try;
  ok(!$retry->should_retry, 'legacy: no more retries after max_tries');
};

subtest 'legacy mode uses rule-based retriable check' => sub {
  my $retry = Paws::API::Retry->new(
    type        => 'exponential',
    max_tries   => 3,
    retry_rules => [ sub { shift->code eq 'SpecialError' } ],
  );

  $retry->one_more_try;
  $retry->operation_result(make_exception(code => 'SpecialError', http_status => 400));
  ok($retry->should_retry, 'legacy: custom rule matches');

  my $retry2 = Paws::API::Retry->new(
    type        => 'exponential',
    max_tries   => 3,
    retry_rules => [],
  );

  $retry2->one_more_try;
  $retry2->operation_result(make_exception(code => 'UnknownError', http_status => 400));
  ok(!$retry2->should_retry, 'legacy: unknown error not retriable');

  my $retry3 = Paws::API::Retry->new(
    type        => 'exponential',
    max_tries   => 3,
    retry_rules => [],
  );

  $retry3->one_more_try;
  $retry3->operation_result(make_exception(code => 'ConnectionError'));
  ok($retry3->should_retry, 'legacy: default rule matches ConnectionError');
};

subtest 'legacy mode with mode attribute explicitly set' => sub {
  my $retry = Paws::API::Retry->new(
    mode        => 'legacy',
    type        => 'exponential',
    max_tries   => 3,
    retry_rules => [],
  );

  is($retry->mode, 'legacy', 'mode is legacy');
  $retry->one_more_try;
  $retry->operation_result(make_exception(code => 'ConnectionError'));
  ok($retry->should_retry, 'legacy mode explicitly: default rules apply');
};

# ============================================================
# Standard mode: backoff, jitter, and error classification
# ============================================================
subtest 'standard mode backoff uses full jitter formula' => sub {
  my $retry = Paws::API::Retry->new(
    mode        => 'standard',
    max_tries   => 5,
    retry_rules => [],
  );

  $retry->operation_result(make_exception(code => 'ConnectionError'));

  $retry->one_more_try;
  my $s1 = $retry->sleep_time;
  # tries=1 → retry_count=0 → max_delay = min(20, 1*2^0) = 1
  ok($s1 >= 0 && $s1 < 1, "standard try=1 sleep in [0,1): $s1");

  $retry->one_more_try;
  my $s2 = $retry->sleep_time;
  # tries=2 → retry_count=1 → max_delay = min(20, 1*2^1) = 2
  ok($s2 >= 0 && $s2 < 2, "standard try=2 sleep in [0,2): $s2");

  $retry->one_more_try;
  my $s3 = $retry->sleep_time;
  # tries=3 → retry_count=2 → max_delay = min(20, 1*2^2) = 4
  ok($s3 >= 0 && $s3 < 4, "standard try=3 sleep in [0,4): $s3");

  $retry->one_more_try;
  my $s4 = $retry->sleep_time;
  # tries=4 → retry_count=3 → max_delay = min(20, 1*2^3) = 8
  ok($s4 >= 0 && $s4 < 8, "standard try=4 sleep in [0,8): $s4");
};

subtest 'standard mode caps backoff at 20 seconds' => sub {
  my $retry = Paws::API::Retry->new(
    mode        => 'standard',
    max_tries   => 20,
    retry_rules => [],
  );

  $retry->operation_result(make_exception(code => 'ConnectionError'));

  for (1..15) { $retry->one_more_try; }
  # tries=15 → retry_count=14 → 2^14 = 16384, capped to 20
  my $s = $retry->sleep_time;
  ok($s >= 0 && $s < 20, "standard caps at MAX_BACKOFF=20: $s");
};

subtest 'standard mode classifies transient errors' => sub {
  my @transient_codes = qw(
    RequestTimeout RequestTimeoutException PriorRequestNotComplete
    ConnectionError HTTPClientError IDPCommunicationError
  );

  for my $code (@transient_codes) {
    my $retry = Paws::API::Retry->new(
      mode => 'standard', max_tries => 3, retry_rules => [],
    );
    $retry->one_more_try;
    $retry->operation_result(make_exception(code => $code));
    ok($retry->should_retry, "standard: $code is retriable");
    ok($retry->is_transient_error, "standard: $code is transient");
    ok(!$retry->is_throttling_error, "standard: $code is not throttling");
  }

  for my $status (408, 500, 502, 503, 504) {
    my $retry = Paws::API::Retry->new(
      mode => 'standard', max_tries => 3, retry_rules => [],
    );
    $retry->one_more_try;
    $retry->operation_result(make_exception(code => 'ServerError', http_status => $status));
    ok($retry->should_retry, "standard: HTTP $status is retriable");
    ok($retry->is_transient_error, "standard: HTTP $status is transient");
  }
};

subtest 'standard mode classifies throttling errors' => sub {
  my @throttle_codes = qw(
    Throttling ThrottlingException ThrottledException
    RequestThrottledException TooManyRequestsException
    ProvisionedThroughputExceededException TransactionInProgressException
    RequestLimitExceeded BandwidthLimitExceeded LimitExceededException
    RequestThrottled SlowDown EC2ThrottledException
  );

  for my $code (@throttle_codes) {
    my $retry = Paws::API::Retry->new(
      mode => 'standard', max_tries => 3, retry_rules => [],
    );
    $retry->one_more_try;
    $retry->operation_result(make_exception(code => $code, http_status => 400));
    ok($retry->should_retry, "standard: $code is retriable");
    ok($retry->is_throttling_error, "standard: $code is throttling");
  }

  for my $status (429, 509) {
    my $retry = Paws::API::Retry->new(
      mode => 'standard', max_tries => 3, retry_rules => [],
    );
    $retry->one_more_try;
    $retry->operation_result(make_exception(code => 'SomeError', http_status => $status));
    ok($retry->should_retry, "standard: HTTP $status is retriable");
    ok($retry->is_throttling_error, "standard: HTTP $status is throttling");
  }
};

subtest 'standard mode does not retry non-retriable errors' => sub {
  my $retry = Paws::API::Retry->new(
    mode => 'standard', max_tries => 3, retry_rules => [],
  );
  $retry->one_more_try;
  $retry->operation_result(make_exception(code => 'AccessDenied', http_status => 403));
  ok(!$retry->should_retry, 'standard: AccessDenied 403 is not retriable');
};

subtest 'standard mode classify_error returns correct category' => sub {
  my $retry = Paws::API::Retry->new(
    mode => 'standard', max_tries => 3, retry_rules => [],
  );
  $retry->one_more_try;

  $retry->operation_result(make_exception(code => 'Throttling', http_status => 400));
  is($retry->classify_error, 'throttling', 'classify_error: throttling');

  $retry->operation_result(make_exception(code => 'ConnectionError'));
  is($retry->classify_error, 'transient', 'classify_error: transient');

  $retry->operation_result(make_exception(code => 'AccessDenied', http_status => 403));
  is($retry->classify_error, undef, 'classify_error: non-retriable returns undef');
};

# ============================================================
# Token bucket
# ============================================================
subtest 'token bucket basic operations' => sub {
  Paws::API::Retry::TokenBucket->reset_all;

  my $bucket = Paws::API::Retry::TokenBucket->new;
  is($bucket->current_tokens, 500, 'starts with 500 tokens');
  is($bucket->capacity, 500, 'capacity is 500');

  ok($bucket->acquire(5), 'acquire 5 tokens succeeds');
  is($bucket->current_tokens, 495, '495 tokens remain');

  $bucket->release(1);
  is($bucket->current_tokens, 496, 'release adds 1 token');

  $bucket->current_tokens(2);
  ok(!$bucket->acquire(5), 'acquire fails when insufficient tokens');
  is($bucket->current_tokens, 2, 'tokens unchanged after failed acquire');

  $bucket->current_tokens(499);
  $bucket->release(10);
  is($bucket->current_tokens, 500, 'release caps at capacity');
};

subtest 'token bucket per-endpoint keying' => sub {
  Paws::API::Retry::TokenBucket->reset_all;

  my $b1 = Paws::API::Retry::TokenBucket->for_endpoint('us-east-1/s3');
  my $b2 = Paws::API::Retry::TokenBucket->for_endpoint('eu-west-1/s3');
  my $b3 = Paws::API::Retry::TokenBucket->for_endpoint('us-east-1/s3');

  is($b1, $b3, 'same endpoint key returns same bucket');
  isnt($b1, $b2, 'different endpoint keys return different buckets');

  $b1->acquire(100);
  is($b1->current_tokens, 400, 'b1 drained');
  is($b2->current_tokens, 500, 'b2 unaffected');
  is($b3->current_tokens, 400, 'b3 is same object as b1');
};

subtest 'token cost for error type' => sub {
  is(
    Paws::API::Retry::TokenBucket->token_cost_for_error('throttling'),
    5,
    'throttling cost is 5',
  );
  is(
    Paws::API::Retry::TokenBucket->token_cost_for_error('transient'),
    10,
    'transient (timeout) cost is 10',
  );
  is(
    Paws::API::Retry::TokenBucket->token_cost_for_error(undef),
    5,
    'undef cost defaults to 5',
  );
};

subtest 'token bucket exhaustion stops retries' => sub {
  Paws::API::Retry::TokenBucket->reset_all;

  my $bucket = Paws::API::Retry::TokenBucket->for_endpoint('us-east-1/test');
  $bucket->current_tokens(8);

  ok($bucket->acquire(5), 'first transient retry: acquire 5 succeeds');
  is($bucket->current_tokens, 3, '3 tokens remain');

  ok(!$bucket->acquire(5), 'second throttle retry: acquire 5 fails');
  ok(!$bucket->acquire(10), 'transient timeout retry: acquire 10 also fails');
};

# ============================================================
# AWS_RETRY_MODE env var
# ============================================================
subtest 'AWS_RETRY_MODE defaults to legacy' => sub {
  local $ENV{AWS_RETRY_MODE};
  delete $ENV{AWS_RETRY_MODE};

  my $retry = Paws::API::Retry->new(
    type        => 'exponential',
    max_tries   => 3,
    retry_rules => [],
  );
  is($retry->mode, 'legacy', 'default mode is legacy');
};

subtest 'standard mode can be constructed without type' => sub {
  my $retry = Paws::API::Retry->new(
    mode        => 'standard',
    max_tries   => 3,
    retry_rules => [],
  );
  is($retry->mode, 'standard', 'mode set to standard');
  is($retry->type, 'exponential', 'type defaults to exponential');
};

subtest 'adaptive mode can be constructed without type' => sub {
  my $retry = Paws::API::Retry->new(
    mode        => 'adaptive',
    max_tries   => 3,
    retry_rules => [],
  );
  is($retry->mode, 'adaptive', 'mode set to adaptive');
};

# ============================================================
# Adaptive mode: standard + token bucket integration
# ============================================================
subtest 'adaptive mode uses standard backoff formula' => sub {
  my $retry = Paws::API::Retry->new(
    mode        => 'adaptive',
    max_tries   => 5,
    retry_rules => [],
  );

  $retry->operation_result(make_exception(code => 'ConnectionError'));

  $retry->one_more_try;
  my $s1 = $retry->sleep_time;
  ok($s1 >= 0 && $s1 < 1, "adaptive try=1 sleep in [0,1): $s1");

  $retry->one_more_try;
  my $s2 = $retry->sleep_time;
  ok($s2 >= 0 && $s2 < 2, "adaptive try=2 sleep in [0,2): $s2");
};

subtest 'adaptive mode uses standard error classification' => sub {
  my $retry = Paws::API::Retry->new(
    mode => 'adaptive', max_tries => 3, retry_rules => [],
  );
  $retry->one_more_try;

  $retry->operation_result(make_exception(code => 'Throttling', http_status => 400));
  ok($retry->should_retry, 'adaptive: throttling is retriable');
  is($retry->classify_error, 'throttling', 'adaptive: classified as throttling');

  $retry->operation_result(make_exception(code => 'ConnectionError'));
  ok($retry->should_retry, 'adaptive: transient is retriable');
  is($retry->classify_error, 'transient', 'adaptive: classified as transient');
};

done_testing;
