package Paws::Net::Interceptor::Metrics;
  use Moose;
  use Time::HiRes qw(gettimeofday tv_interval);

  with 'Paws::Net::Interceptor';

  has callback => (
    is      => 'ro',
    isa     => 'CodeRef',
    default => sub { sub {} },
  );

  has _stash_key => (
    is      => 'ro',
    isa     => 'Str',
    default => '_interceptor_metrics',
  );

  sub before_request {
    my ($self, $context) = @_;

    $context->stash->{ $self->_stash_key }{request_start} = [gettimeofday];
    return;
  }

  sub after_request {
    my ($self, $context) = @_;

    my $stash      = $context->stash->{ $self->_stash_key } // {};
    my $start      = $stash->{request_start};
    my $latency_ms = defined $start ? int(tv_interval($start) * 1000) : -1;

    my $service   = $self->_service_name($context);
    my $operation = $self->_operation_name($context);
    my $status    = $self->_extract_status($context);
    my $attempts  = $context->attempt;

    my $metrics = {
      service       => $service,
      operation     => $operation,
      status        => $status,
      latency_ms    => $latency_ms,
      attempt_count => $attempts,
    };

    if ($context->result_is_exception) {
      $metrics->{error} = $context->result->code;
    }

    eval { $self->callback->($metrics) };
    if ($@) {
      warn "Paws::Net::Interceptor::Metrics callback error: $@\n";
    }

    return;
  }

  sub _service_name {
    my ($self, $context) = @_;
    my $svc = $context->service;
    return (defined $svc && $svc->can('service'))
      ? eval { $svc->service } // 'unknown'
      : 'unknown';
  }

  sub _operation_name {
    my ($self, $context) = @_;
    my $call = $context->call_object;
    return (defined $call && $call->can('_api_call'))
      ? eval { $call->_api_call } // 'unknown'
      : 'unknown';
  }

  sub _extract_status {
    my ($self, $context) = @_;
    if ($context->result_is_exception) {
      return $context->result->http_status // 0;
    }
    if (defined $context->response) {
      return $context->response->status;
    }
    return 0;
  }

  no Moose;
  __PACKAGE__->meta->make_immutable;
1;

=head1 NAME

Paws::Net::Interceptor::Metrics - Per-call metrics emission for Paws API calls

=head1 SYNOPSIS

  use Paws::Net::Interceptor::Metrics;

  my $metrics = Paws::Net::Interceptor::Metrics->new(
    callback => sub {
      my $m = shift;
      # $m is a hashref: { service, operation, status,
      #                     latency_ms, attempt_count, error? }
      send_to_statsd($m);
    },
  );
  $caller->register_interceptor($metrics);

=head1 DESCRIPTION

Emits per-call counters and histograms via a user-provided callback.
Users wire up their own backend (Net::Statsd, Prometheus exporter,
CloudWatch, custom) through the callback.

If no callback is configured the interceptor is a no-op.

=head1 CALLBACK HASHREF

The callback receives a single hashref with these keys:

  service       - AWS service name (e.g. "S3")
  operation     - API operation (e.g. "PutObject")
  status        - HTTP status code (0 if unavailable)
  latency_ms    - total request latency in milliseconds
  attempt_count - number of attempts (including retries)
  error         - error code string (present only on failure)

=head1 SEE ALSO

L<Paws::Net::Interceptor>

=cut
