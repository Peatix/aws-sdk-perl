package Paws::Net::RetryCallerRole;
  use Moose::Role;
  use Time::HiRes 'sleep';
  use Paws::Net::InterceptorContext;
  use Paws::Net::InterceptorChain;
  use Paws::Net::Interceptor::Retry;

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

    $chain->run_hook('before_request', $context);

    do {
      $context->should_retry(0);
      $context->retry_delay(0);

      $chain->run_hook('before_attempt', $context);

      my $response = $self->send_request($service, $call_object);
      my $result   = $self->caller_to_response($service, $call_object, $response);
      $context->response($response);
      $context->result($result);

      if ($context->result_is_exception) {
        $chain->run_hook('on_error', $context);
      }

      $chain->run_hook('after_attempt', $context);

      sleep $context->retry_delay if $context->should_retry;
    } while ($context->should_retry);

    $chain->run_hook('after_request', $context);

    if ($context->result_is_exception) {
      $context->result->throw;
    } else {
      return $context->result;
    }
  }

  requires 'send_request';
1;
