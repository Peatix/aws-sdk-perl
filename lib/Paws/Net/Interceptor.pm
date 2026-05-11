package Paws::Net::Interceptor;
  use Moose::Role;

  # Called once before the first attempt. Receives and may modify the
  # InterceptorContext (e.g. to inspect or alter the request).
  sub before_request { }

  # Called once after the final response is available (or after all
  # retries have been exhausted). Receives the InterceptorContext with
  # the final result.
  sub after_request { }

  # Called before each individual attempt (including retries).
  sub before_attempt { }

  # Called after each individual attempt. Interceptors may inspect the
  # response and set $context->should_retry / $context->retry_delay to
  # signal that the chain runner should loop.
  sub after_attempt { }

  # Called when an attempt produces a Paws::Exception result (returned,
  # not thrown). Interceptors may inspect or transform the error.
  sub on_error { }

1;
