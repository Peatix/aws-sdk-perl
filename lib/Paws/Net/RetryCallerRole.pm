package Paws::Net::RetryCallerRole;
  use Moose::Role;
  use Time::HiRes 'sleep';
  use Paws::API::Retry;

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

    do {
      $tracker->one_more_try;

      my $response = $self->send_request($service, $call_object);
      my $result = $self->caller_to_response($service, $call_object, $response);
      $tracker->operation_result($result);

      sleep $tracker->sleep_time if($tracker->should_retry);
    } while ($tracker->should_retry);

    if ($tracker->result_is_exception){
      $tracker->operation_result->throw;
    } else {
      return $tracker->operation_result;
    }
  }

  requires 'send_request';
1;
