# Retries

Paws retries failed requests inside the caller's middleware (interceptor)
chain. This document points at the moving parts rather than restating the code.

## Where the code lives

- `lib/Paws/Net/RetryCallerRole.pm` — the retry loop. Builds the interceptor
  chain, drives attempts, applies backoff sleeps, and (in adaptive mode)
  manages the per-endpoint retry-quota token bucket.
- `lib/Paws/Net/Interceptor/Retry.pm` — the retry interceptor. Resolves the
  mode and max attempts, constructs the per-request `Paws::API::Retry` tracker,
  and decides whether to retry after each attempt.
- `lib/Paws/API/Retry.pm` — the per-request tracker: error classification
  (transient / throttling), the backoff generator, and the attempt counter.
- `lib/Paws/API/Retry/TokenBucket.pm` — the retry quota. A per-endpoint token
  bucket (capacity 500) used by adaptive mode to stop retrying during sustained
  failures.

## Modes

Selected with `AWS_RETRY_MODE` (`legacy` by default; `standard` or `adaptive`):

- `legacy` — the original per-service exponential backoff and rule-based
  retriable checks. Unchanged by the opt-in below.
- `standard` — full-jitter exponential backoff with transient/throttling error
  classification.
- `adaptive` — `standard` plus the per-endpoint retry-quota token bucket.

`AWS_MAX_ATTEMPTS` overrides the attempt count for any mode.

## AWS_NEW_RETRIES_2026 opt-in

`AWS_NEW_RETRIES_2026=true` opts standard/adaptive into the updated behaviour
announced at
<https://aws.amazon.com/blogs/developer/announcing-updated-retry-behavior-for-aws-sdks-and-tools/>
(AWS will make this the default in November 2026). `legacy` mode is unaffected.

When enabled:

- Backoff base delay is chosen by error type: transient errors retry quickly
  (50 ms base), throttling errors back off longer (1000 ms base). See the
  generator in `Paws::API::Retry`.
- DynamoDB uses a 25 ms transient base and defaults to 4 max attempts
  (other services default to 3). Wired in `Paws::Net::Interceptor::Retry`.
- The adaptive retry quota costs 14 tokens per transient retry (was 10) and 5
  per throttling retry, so the quota engages sooner during transient outages.
  See `Paws::API::Retry::TokenBucket::token_cost_for_error`.
- Long-polling operations (currently SQS `ReceiveMessage`) back off before
  surfacing the error when the quota is depleted, instead of returning
  immediately and tightening the polling loop. See `_is_long_polling` in
  `Paws::Net::RetryCallerRole`.

`Paws::API::Retry::new_retries_enabled` is the single place that reads the flag.

## Tests

- `t/33_retry_modes.t` — default mode/backoff/classification + token bucket.
- `t/33_interceptors.t` — interceptor chain and end-to-end `do_call` retries.
- `t/16_retries.t` — legacy retry behaviour.
- `t/38_new_retries_2026.t` — the `AWS_NEW_RETRIES_2026` opt-in behaviour.
