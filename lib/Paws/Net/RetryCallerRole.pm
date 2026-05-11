package Paws::Net::RetryCallerRole;
  use Moose::Role;
  use Time::HiRes 'sleep';
  use Paws::Net::InterceptorContext;
  use Paws::Net::InterceptorChain;
  use Paws::Net::Interceptor::Retry;
  use Paws::API::Retry::TokenBucket;

  sub _endpoint_key {
    my ($self, $service) = @_;
    my $region  = $service->region // 'global';
    my $svc     = $service->service;
    return "$region/$svc";
  }

  has interceptors => (
    is      => 'rw',
    isa     => 'ArrayRef',
    traits  => ['Array'],
    default => sub { [] },
    handles => {
      all_interceptors    => 'elements',
      add_interceptor     => 'push',
      interceptor_count   => 'count',
    },
  );

  sub register_interceptor {
    my ($self, $interceptor) = @_;
    require Moose::Util;
    Moose::Util::does_role($interceptor, 'Paws::Net::Interceptor')
      or die "Interceptor must consume the Paws::Net::Interceptor role";
    $self->add_interceptor($interceptor);
    return $self;
  }

  sub _build_chain {
    my ($self) = @_;
    my $retry = Paws::Net::Interceptor::Retry->new;
    return Paws::Net::InterceptorChain->new(
      interceptors => [ $retry, $self->all_interceptors ],
    );
  }

  sub do_call {
    my ($self, $service, $call_object) = @_;

    my $chain = $self->_build_chain;
    my $context = Paws::Net::InterceptorContext->new(
      service     => $service,
      call_object => $call_object,
    );

    if (!$chain->run_hook('before_request', $context)) {
      if ($context->result_is_exception) {
        $context->result->throw;
      }
      return $context->result;
    }

    my $token_bucket;
    if (($context->stash->{retry_mode} // 'legacy') eq 'adaptive') {
      $token_bucket = Paws::API::Retry::TokenBucket->for_endpoint(
        $self->_endpoint_key($service)
      );
    }

    RETRY: while (1) {
      $context->should_retry(0);
      $context->retry_delay(0);

      if ($token_bucket) {
        unless ($token_bucket->acquire(1)) {
          last RETRY;
        }
      }

      if (!$chain->run_hook('before_attempt', $context)) {
        last RETRY;
      }

      my $response = $self->send_request($service, $context->call_object);
      my $result   = $self->caller_to_response($service, $context->call_object, $response);
      $context->response($response);
      $context->result($result);

      if (not $context->result_is_exception and $token_bucket) {
        $token_bucket->release;
      }

      if ($context->result_is_exception) {
        $chain->run_hook('on_error', $context);
      }

      $chain->run_hook('after_attempt', $context);

      last RETRY unless $context->should_retry;

      if ($token_bucket) {
        my $tracker = $context->stash->{retry_tracker};
        if ($tracker) {
          my $error_type = $tracker->classify_error;
          my $cost = Paws::API::Retry::TokenBucket->token_cost_for_error($error_type);
          $token_bucket->acquire($cost);
        }
      }

      sleep $context->retry_delay;
    }

    $chain->run_hook('after_request', $context);

    if ($context->result_is_exception) {
      $context->result->throw;
    } else {
      return $context->result;
    }
  }

  requires 'send_request';
1;
