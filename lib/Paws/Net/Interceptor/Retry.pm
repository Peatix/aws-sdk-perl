package Paws::Net::Interceptor::Retry;
  use Moose;
  use Paws::API::Retry;
  with 'Paws::Net::Interceptor';

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

  sub before_request {
    my ($self, $context) = @_;
    my $service = $context->service;
    my $mode = _resolve_retry_mode();
    my $max_attempts = $self->_resolve_max_attempts($service);

    my $tracker = Paws::API::Retry->new(
      ($mode eq 'legacy' ? (%{ $service->retry }) : ()),
      mode        => $mode,
      max_tries   => $max_attempts,
      retry_rules => $service->retriables,
    );
    $context->stash->{retry_tracker} = $tracker;
    $context->stash->{retry_mode} = $mode;
  }

  sub before_attempt {
    my ($self, $context) = @_;
    my $tracker = $context->stash->{retry_tracker};
    $tracker->one_more_try;
    $context->attempt($tracker->tries);
  }

  sub after_attempt {
    my ($self, $context) = @_;
    my $tracker = $context->stash->{retry_tracker};
    $tracker->operation_result($context->result);

    if ($tracker->should_retry) {
      $context->should_retry(1);
      $context->retry_delay($tracker->sleep_time);
    }
  }

  __PACKAGE__->meta->make_immutable;
1;
