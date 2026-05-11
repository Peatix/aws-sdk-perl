package Paws::Net::Interceptor::Log;
  use Moose;
  use Time::HiRes qw(gettimeofday tv_interval);

  with 'Paws::Net::Interceptor';

  has log_handle => (
    is      => 'ro',
    default => sub { \*STDERR },
  );

  has _stash_key => (
    is      => 'ro',
    isa     => 'Str',
    default => '_interceptor_log',
  );

  sub before_request {
    my ($self, $context) = @_;

    my $service   = $self->_service_name($context);
    my $operation = $self->_operation_name($context);

    $self->_log('debug', "service=$service op=$operation phase=before_request");
    return;
  }

  sub before_attempt {
    my ($self, $context) = @_;

    $context->stash->{ $self->_stash_key }{attempt_start} = [gettimeofday];
    return;
  }

  sub after_attempt {
    my ($self, $context) = @_;

    my $stash      = $context->stash->{ $self->_stash_key } // {};
    my $start      = $stash->{attempt_start};
    my $latency_ms = defined $start ? int(tv_interval($start) * 1000) : -1;
    my $attempt    = $context->attempt;

    my $service   = $self->_service_name($context);
    my $operation = $self->_operation_name($context);

    my $status     = $self->_extract_status($context);
    my $request_id = $self->_extract_request_id($context);

    if ($context->result_is_exception) {
      my $error = $context->result->code;
      if ($context->should_retry) {
        $self->_log('warn',
          "service=$service op=$operation attempt=$attempt"
          . " request_id=$request_id latency_ms=$latency_ms"
          . " status=$status error=$error retry=true"
        );
      } else {
        $self->_log('error',
          "service=$service op=$operation attempt=$attempt"
          . " request_id=$request_id latency_ms=$latency_ms"
          . " status=$status error=$error retry=false"
        );
      }
    } else {
      $self->_log('info',
        "service=$service op=$operation attempt=$attempt"
        . " request_id=$request_id latency_ms=$latency_ms"
        . " status=$status"
      );
    }

    return;
  }

  sub after_request {
    my ($self, $context) = @_;

    my $service   = $self->_service_name($context);
    my $operation = $self->_operation_name($context);
    my $attempts  = $context->attempt;

    if ($context->result_is_exception) {
      my $error = $context->result->code;
      $self->_log('error',
        "service=$service op=$operation phase=after_request"
        . " total_attempts=$attempts outcome=error error=$error"
      );
    } else {
      $self->_log('info',
        "service=$service op=$operation phase=after_request"
        . " total_attempts=$attempts outcome=success"
      );
    }

    return;
  }

  sub on_error {
    my ($self, $context) = @_;

    my $service   = $self->_service_name($context);
    my $operation = $self->_operation_name($context);
    my $error     = $context->result->code;
    my $message   = $context->result->message;

    $self->_log('error',
      "service=$service op=$operation phase=on_error"
      . " error=$error message=\"$message\""
    );

    return;
  }

  sub _log {
    my ($self, $level, $message) = @_;
    my $fh = $self->log_handle;
    print $fh "level=$level $message\n";
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

  sub _extract_request_id {
    my ($self, $context) = @_;
    my $result = $context->result;
    return '' unless defined $result;

    if (ref($result) eq 'Paws::Exception') {
      return $result->request_id // '';
    }
    if (ref($result) && $result->can('_request_id')) {
      return eval { $result->_request_id } // '';
    }
    return '';
  }

  no Moose;
  __PACKAGE__->meta->make_immutable;
1;

=head1 NAME

Paws::Net::Interceptor::Log - Structured key=value logging for AWS API calls

=head1 SYNOPSIS

  use Paws::Net::Interceptor::Log;

  my $logger = Paws::Net::Interceptor::Log->new(
    log_handle => \*STDERR,   # default
  );
  $caller->register_interceptor($logger);

=head1 DESCRIPTION

Emits structured C<key=value> log lines for each AWS API call and
attempt. Logs at info level for successes, warn for retries, and
error for failures.

Consumes the C<Paws::Net::Interceptor> role and uses the
C<InterceptorContext> stash for per-attempt timing.

=head1 LOG FIELDS

  level       - debug, info, warn, error
  service     - AWS service name
  op          - API operation
  attempt     - current attempt number
  request_id  - AWS request ID
  latency_ms  - attempt latency in milliseconds
  status      - HTTP status code
  error       - error code (if applicable)

=cut
