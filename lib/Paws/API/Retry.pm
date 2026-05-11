package Paws::API::Retry;
  use Moose;
  use MooseX::ClassAttribute;
  use Paws::Exception;
  use POSIX qw(HUGE_VAL);
  use List::Util qw(min);

  class_has default_rules => (is => 'ro', isa => 'ArrayRef', default => sub { [
    # bad_gateway
    sub { defined $_[0]->http_status and $_[0]->http_status == 502 },
    # gateway_timeout
    sub { defined $_[0]->http_status and $_[0]->http_status == 504 },
    # general_server_error
    sub { defined $_[0]->http_status and $_[0]->http_status == 500 },
    # general_socket_errors
    sub { $_[0]->code eq 'ConnectionError' },
    # limit_exceeded
    sub { defined $_[0]->http_status and $_[0]->http_status == 509 },
    # request_throttled_exception
    sub { defined $_[0]->http_status and $_[0]->http_status == 400 and $_[0]->code eq "RequestThrottledException" },
    # service_unavailable
    sub { defined $_[0]->http_status and $_[0]->http_status == 503 },
    # throttled_exception
    sub { defined $_[0]->http_status and $_[0]->http_status == 400 and $_[0]->code eq "ThrottledException" },
    # throttling
    sub { defined $_[0]->http_status and $_[0]->http_status == 400 and $_[0]->code eq "Throttling" },
    # throttling_exception
    sub { defined $_[0]->http_status and $_[0]->http_status == 400 and $_[0]->code eq "ThrottlingException" },
    # throughput_exceeded
    sub { defined $_[0]->http_status and $_[0]->http_status == 400 and $_[0]->code eq "ProvisionedThroughputExceededException" },
    # too_many_requests
    sub { defined $_[0]->http_status and $_[0]->http_status == 429 },
  ] });

  my %TRANSIENT_ERROR_CODES = map { $_ => 1 } qw(
    RequestTimeout
    RequestTimeoutException
    PriorRequestNotComplete
    ConnectionError
    HTTPClientError
    IDPCommunicationError
  );

  my %TRANSIENT_HTTP_CODES = map { $_ => 1 } (408, 500, 502, 503, 504);

  my %THROTTLING_ERROR_CODES = map { $_ => 1 } qw(
    Throttling
    ThrottlingException
    ThrottledException
    RequestThrottledException
    TooManyRequestsException
    ProvisionedThroughputExceededException
    TransactionInProgressException
    RequestLimitExceeded
    BandwidthLimitExceeded
    LimitExceededException
    RequestThrottled
    SlowDown
    EC2ThrottledException
  );

  my %THROTTLING_HTTP_CODES = map { $_ => 1 } (429, 509);

  use constant STANDARD_BASE_DELAY  => 1;
  use constant STANDARD_MAX_BACKOFF => 20;

  has mode => (is => 'ro', isa => 'Str', default => 'legacy');
  has max_tries => (is => 'ro', required => 1);
  has type => (is => 'ro', default => 'exponential');

  has tries => (is => 'rw', default => 0);

  has retry_rules => (is => 'ro', required => 1);

  has error_for_die => (is => 'rw');
  has operation_result => (is => 'rw');

  has generator => (is => 'ro');

  around BUILDARGS => sub {
    my ($orig, $class, %args) = @_;

    my $mode = $args{ mode } // 'legacy';

    if ($mode eq 'legacy') {
      if ($args{ type } eq 'exponential') {
        $args{ generator } = sub {
          my $self = shift;
          (2 ** ($self->tries - 2)) + (rand(1) / 2);
        };
      } else {
        die "Don't know how to make a retry type of $args{ type }";
      }
    } else {
      $args{ type } //= 'exponential';
      $args{ generator } = sub {
        my $self = shift;
        my $retry_count = $self->tries - 1;
        my $max_delay = min(STANDARD_MAX_BACKOFF, STANDARD_BASE_DELAY * (2 ** $retry_count));
        return rand($max_delay);
      };
    }

    return $class->$orig(%args);
  };

  sub should_retry {
    my $self = shift;
    my $res = $self->operation_result;

    if ($self->result_is_exception and $self->_still_has_retries and $self->exception_is_retriable){
      return 1;
    }
    return 0;
  }

  sub exception_is_retriable {
    my $self = shift;

    if ($self->mode ne 'legacy') {
      return $self->is_transient_error || $self->is_throttling_error;
    }

    foreach my $rule (@{ Paws::API::Retry->default_rules }, @{ $self->retry_rules }){
      return 1 if ($rule->($self->operation_result));
    }
    return 0;
  }

  sub classify_error {
    my $self = shift;
    my $res = $self->operation_result;
    return undef unless ref($res) eq 'Paws::Exception';

    return 'throttling' if $self->_matches_throttling($res);
    return 'transient'  if $self->_matches_transient($res);
    return undef;
  }

  sub is_transient_error {
    my $self = shift;
    my $res = $self->operation_result;
    return 0 unless ref($res) eq 'Paws::Exception';
    return $self->_matches_transient($res);
  }

  sub is_throttling_error {
    my $self = shift;
    my $res = $self->operation_result;
    return 0 unless ref($res) eq 'Paws::Exception';
    return $self->_matches_throttling($res);
  }

  sub _matches_transient {
    my ($self, $res) = @_;
    return 1 if $TRANSIENT_ERROR_CODES{ $res->code };
    return 1 if defined $res->http_status && $TRANSIENT_HTTP_CODES{ $res->http_status };
    return 0;
  }

  sub _matches_throttling {
    my ($self, $res) = @_;
    return 1 if $THROTTLING_ERROR_CODES{ $res->code };
    return 1 if defined $res->http_status && $THROTTLING_HTTP_CODES{ $res->http_status };
    return 0;
  }

  sub result_is_exception {
    my $self = shift;

    die "Don't have an operation_result set yet" if (not defined $self->operation_result);

    return 0 if (not ref($self->operation_result));                  # Scalar results
    return 1 if (ref($self->operation_result) eq 'Paws::Exception'); # Exceptions
    return 0;                                                        # Rest of objects
  }

  sub one_more_try {
    my $self = shift;
    $self->tries($self->tries + 1);
  }

  sub sleep_time {
    my $self = shift;
    return $self->generator->($self);
  }

  sub _still_has_retries {
    my $self = shift;
    $self->tries < $self->max_tries;
  }

  sub _is_retriable {
    my $self = shift;
    # TODO: evaluate if the error is retriable depending on class definition
    return 1;
  }

  __PACKAGE__->meta->make_immutable;

1;
