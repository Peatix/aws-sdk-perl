package Paws::Net::RetryCallerRole;
  use Moose::Role;
  use Time::HiRes 'sleep';
  use Paws::API::Retry;

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
   
    my $tracker = Paws::API::Retry->new(
      %{ $service->retry }, 
      max_tries => $service->max_attempts,
      retry_rules => $service->retriables,
    );

    my $context;
    if ($self->interceptor_count) {
      require Paws::Net::InterceptorContext;
      $context = Paws::Net::InterceptorContext->new(
        service     => $service,
        call_object => $call_object,
      );
      $_->before_request($context) for $self->all_interceptors;
    }

    my $do_retry;
    do {
      $tracker->one_more_try;

      if ($context) {
        $context->attempt($tracker->tries);
        $_->before_attempt($context) for $self->all_interceptors;
      }

      my $response = $self->send_request($service, $call_object);
      my $result = $self->caller_to_response($service, $call_object, $response);
      $tracker->operation_result($result);

      if ($context) {
        $context->response($response);
        $context->result($result);
        $context->should_retry($tracker->should_retry ? 1 : 0);
        $context->retry_delay($tracker->should_retry ? $tracker->sleep_time : 0);

        if ($context->result_is_exception) {
          $_->on_error($context) for $self->all_interceptors;
        }
        $_->after_attempt($context) for $self->all_interceptors;

        $do_retry = $context->should_retry;
        sleep $context->retry_delay if $do_retry;
      } else {
        $do_retry = $tracker->should_retry;
        sleep $tracker->sleep_time if $do_retry;
      }
    } while ($do_retry);

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
