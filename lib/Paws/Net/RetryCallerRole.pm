package Paws::Net::RetryCallerRole;
  use Moose::Role;
  use Time::HiRes 'sleep';
  use Paws::API::Retry;
  use Paws::API::Retry::TokenBucket;

  sub _resolve_retry_mode {
    my $mode = $ENV{AWS_RETRY_MODE} // 'legacy';
    die "Invalid AWS_RETRY_MODE '$mode': must be legacy, standard, or adaptive"
      unless $mode =~ /\A(?:legacy|standard|adaptive)\z/;
    return $mode;
  }

  sub _resolve_max_attempts {
    my ($self, $service) = @_;
    if (defined $ENV{AWS_MAX_ATTEMPTS}) {
      my $val = $ENV{AWS_MAX_ATTEMPTS};
      die "Invalid AWS_MAX_ATTEMPTS '$val': must be a positive integer"
        unless $val =~ /\A[1-9]\d*\z/;
      return int($val);
    }
    return $service->max_attempts;
  }

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

  sub do_call {
    my ($self, $service, $call_object) = @_;

    my $mode = _resolve_retry_mode();
    my $max_attempts = $self->_resolve_max_attempts($service);

    my $tracker = Paws::API::Retry->new(
      ($mode eq 'legacy' ? (%{ $service->retry }) : ()),
      mode => $mode,
      max_tries => $max_attempts,
      retry_rules => $service->retriables,
    );

    my $token_bucket;
    if ($mode eq 'adaptive') {
      $token_bucket = Paws::API::Retry::TokenBucket->for_endpoint(
        $self->_endpoint_key($service)
      );
    }

    my $context;
    if ($self->interceptor_count) {
      require Paws::Net::InterceptorContext;
      $context = Paws::Net::InterceptorContext->new(
        service     => $service,
        call_object => $call_object,
      );
      $_->before_request($context) for $self->all_interceptors;
    }

    while (1) {
      $tracker->one_more_try;

      if ($token_bucket) {
        unless ($token_bucket->acquire(1)) {
          last;
        }
      }

      if ($context) {
        $context->attempt($tracker->tries);
        $_->before_attempt($context) for $self->all_interceptors;
      }

      my $response = $self->send_request($service, $call_object);
      my $result = $self->caller_to_response($service, $call_object, $response);
      $tracker->operation_result($result);

      if (not $tracker->result_is_exception and $token_bucket) {
        $token_bucket->release;
      }

      if ($context) {
        $context->response($response);
        $context->result($result);
        $context->should_retry($tracker->should_retry ? 1 : 0);
        $context->retry_delay($tracker->should_retry ? $tracker->sleep_time : 0);

        if ($context->result_is_exception) {
          $_->on_error($context) for $self->all_interceptors;
        }
        $_->after_attempt($context) for $self->all_interceptors;
      }

      my $should_retry = $context ? $context->should_retry : $tracker->should_retry;
      last unless $should_retry;

      if ($token_bucket) {
        my $error_type = $tracker->classify_error;
        my $cost = Paws::API::Retry::TokenBucket->token_cost_for_error($error_type);
        $token_bucket->acquire($cost);
      }

      my $delay = $context ? $context->retry_delay : $tracker->sleep_time;
      sleep $delay;
    }

    if ($context) {
      $context->result($tracker->operation_result);
      $_->after_request($context) for $self->all_interceptors;
    }

    if ($tracker->result_is_exception){
      $tracker->operation_result->throw;
    } else {
      return $tracker->operation_result;
    }
  }

  requires 'send_request';
1;
