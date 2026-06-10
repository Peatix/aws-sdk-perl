package Paws::Net::Interceptor::Retry;
  use Moo;
  use Paws::API::Retry;
  with 'Paws::Net::Interceptor';

  sub _resolve_retry_mode {
    my $mode = $ENV{AWS_RETRY_MODE} // 'legacy';
    die "Invalid AWS_RETRY_MODE '$mode': must be legacy, standard, or adaptive"
      unless $mode =~ /\A(?:legacy|standard|adaptive)\z/;
    return $mode;
  }

  sub _is_dynamodb {
    my ($service) = @_;
    my $name = eval { $service->service } // '';
    # Covers both dynamodb and dynamodbstreams.
    return $name =~ /\Adynamodb/i ? 1 : 0;
  }

  sub _resolve_max_attempts {
    my ($self, $service, %opt) = @_;
    if (defined $ENV{AWS_MAX_ATTEMPTS}) {
      my $val = $ENV{AWS_MAX_ATTEMPTS};
      die "Invalid AWS_MAX_ATTEMPTS '$val': must be a positive integer"
        unless $val =~ /\A[1-9]\d*\z/;
      return int($val);
    }
    # AWS_NEW_RETRIES_2026 lowers the standard/adaptive default to 3 attempts,
    # with DynamoDB tuned to 4 so its last retry's maximum backoff stays
    # comparable to other services given its shorter base delay.
    if ($opt{new_retries} && defined $opt{mode} && $opt{mode} ne 'legacy') {
      return $opt{is_dynamodb} ? 4 : 3;
    }
    return $service->max_attempts;
  }

  sub before_request {
    my ($self, $context) = @_;
    my $service = $context->service;
    my $mode = _resolve_retry_mode();
    my $new_retries = Paws::API::Retry::new_retries_enabled();
    my $is_dynamodb = _is_dynamodb($service);
    my $max_attempts = $self->_resolve_max_attempts(
      $service,
      new_retries => $new_retries,
      mode        => $mode,
      is_dynamodb => $is_dynamodb,
    );

    my %new_retry_args;
    if ($new_retries && $mode ne 'legacy') {
      $new_retry_args{new_retries}           = 1;
      $new_retry_args{transient_base_delay}  = $is_dynamodb ? 0.025 : 0.05;
      $new_retry_args{throttling_base_delay} = 1;
    }

    my $tracker = Paws::API::Retry->new(
      ($mode eq 'legacy' ? (%{ $service->retry }) : ()),
      mode        => $mode,
      max_tries   => $max_attempts,
      retry_rules => $service->retriables,
      %new_retry_args,
    );
    $context->stash->{retry_tracker} = $tracker;
    $context->stash->{retry_mode} = $mode;
    $context->stash->{new_retries} = $new_retries;
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

1;
