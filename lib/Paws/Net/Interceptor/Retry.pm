package Paws::Net::Interceptor::Retry;
  use Moose;
  use Paws::API::Retry;
  with 'Paws::Net::Interceptor';

  sub before_request {
    my ($self, $context) = @_;
    my $service = $context->service;
    my $tracker = Paws::API::Retry->new(
      %{ $service->retry },
      max_tries   => $service->max_attempts,
      retry_rules => $service->retriables,
    );
    $context->stash->{retry_tracker} = $tracker;
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
