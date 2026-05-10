package Paws::Net::Interceptor::XRay;
  use Moose;

  with 'Paws::Net::Interceptor';

  has _xray_available => (
    is      => 'ro',
    isa     => 'Bool',
    lazy    => 1,
    builder => '_check_xray',
  );

  has _stash_key => (
    is      => 'ro',
    isa     => 'Str',
    default => '_interceptor_xray',
  );

  sub _check_xray {
    my $ok = eval { require AWS::XRay; 1 };
    if (!$ok) {
      warn "Paws::Net::Interceptor::XRay: AWS::XRay not installed;"
         . " X-Ray tracing disabled. Install AWS::XRay from CPAN"
         . " to enable.\n";
    }
    return $ok ? 1 : 0;
  }

  sub before_request {
    my ($self, $context) = @_;
    return unless $self->_xray_available;

    require Time::HiRes;
    $context->stash->{ $self->_stash_key }{start_time} = Time::HiRes::time();
    return;
  }

  sub after_request {
    my ($self, $context) = @_;
    return unless $self->_xray_available;

    my $stash      = $context->stash->{ $self->_stash_key } // {};
    my $start_time = $stash->{start_time};
    my $end_time   = Time::HiRes::time();

    my $service   = $self->_service_name($context);
    my $operation = $self->_operation_name($context);
    my $name      = "${service}::${operation}";

    my $is_error = $context->result_is_exception;
    my $status   = $self->_extract_status($context);
    my $is_fault = $is_error && defined $status && $status >= 500;
    my $is_throttle = $is_error && defined $status && $status == 429;

    AWS::XRay::capture($name, sub {
      my $segment = shift;

      $segment->{start_time} = $start_time if defined $start_time;
      $segment->{end_time}   = $end_time;

      $segment->{aws} = {
        operation  => $operation,
        region     => $self->_region($context),
        request_id => $self->_extract_request_id($context),
      };

      $segment->{http} = {
        request => {
          method => $self->_extract_method($context),
          url    => $self->_extract_url($context),
        },
        response => {
          status => $status,
        },
      };

      $segment->{annotations} = {
        service   => $service,
        operation => $operation,
        attempts  => $context->attempt,
      };

      $segment->{error}    = $is_error && !$is_fault ? 1 : 0;
      $segment->{fault}    = $is_fault    ? 1 : 0;
      $segment->{throttle} = $is_throttle ? 1 : 0;

      if ($is_error) {
        $segment->{cause} = {
          exceptions => [{
            message => $context->result->message,
            type    => $context->result->code,
          }],
        };
      }
    });

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

  sub _region {
    my ($self, $context) = @_;
    my $svc = $context->service;
    return (defined $svc && $svc->can('region'))
      ? eval { $svc->region } // 'unknown'
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

  sub _extract_method {
    my ($self, $context) = @_;
    my $svc  = $context->service;
    my $call = $context->call_object;
    my $req  = eval { $svc->prepare_request_for_call($call) };
    return '' unless $req;
    return eval { $req->method } // '';
  }

  sub _extract_url {
    my ($self, $context) = @_;
    my $svc  = $context->service;
    my $call = $context->call_object;
    my $req  = eval { $svc->prepare_request_for_call($call) };
    return '' unless $req;
    return eval { $req->url } // '';
  }

  no Moose;
  __PACKAGE__->meta->make_immutable;
1;

=head1 NAME

Paws::Net::Interceptor::XRay - AWS X-Ray subsegment tracing for Paws API calls

=head1 SYNOPSIS

  use Paws::Net::Interceptor::XRay;

  my $xray = Paws::Net::Interceptor::XRay->new;
  $caller->register_interceptor($xray);

=head1 DESCRIPTION

Creates an AWS X-Ray subsegment for each AWS API call using the
C<AWS::XRay> CPAN module.  The subsegment includes:

=over

=item * Name: C<Service::Operation> (e.g. "S3::PutObject")

=item * AWS namespace annotations (service, operation, region, request_id)

=item * HTTP request/response metadata (method, url, status_code)

=item * Error/fault/throttle flags on failures

=back

C<AWS::XRay> is an optional dependency.  If not installed, a warning
is emitted once and tracing is silently disabled.

=head1 SEE ALSO

L<AWS::XRay>, L<Paws::Net::Interceptor>

=cut
