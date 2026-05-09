package TestSyntheticHttpCaller;
  # A synthetic-response caller that exposes the full
  # Paws::Net::CallerRole + Paws::Net::RetryCallerRole contract:
  # `send_request` exercises `prepare_request_for_call` (so wrapping
  # callers can inspect the prepared request) and `caller_to_response`
  # converts to the typed result. Used by t/32_debug_caller.t to drive
  # `Paws::Net::DebugCaller` without a real HTTP round-trip.
  #
  # The canned response is sourced from the call object's `response` /
  # `status` attributes (matching the t/lib/TestGivenResponse style),
  # so existing synthetic services (Paws::JsonParamsService etc.) work
  # as drivers without modification.
  use Moose;
  with 'Paws::Net::RetryCallerRole', 'Paws::Net::CallerRole';
  use Paws::Net::APIResponse;

  has canned_status => (
    is      => 'rw',
    isa     => 'Maybe[Int]',
    default => sub { undef },
  );

  has canned_content => (
    is      => 'rw',
    isa     => 'Maybe[Str]',
    default => sub { undef },
  );

  has canned_headers => (
    is      => 'rw',
    isa     => 'HashRef',
    default => sub {
      {
        'x-amzn-requestid' => 'fake-uuid',
        'x-amz-request-id' => 'fake-uuid',
      };
    },
  );

  sub send_request {
    my ($self, $service, $call_object) = @_;

    # Exercise the request preparation path so wrapping callers can
    # capture what would have gone over the wire.
    $service->prepare_request_for_call($call_object);

    my $status = $self->canned_status
              // ($call_object->can('status') ? $call_object->status : 200);
    my $content = $self->canned_content
               // ($call_object->can('response') ? $call_object->response : '');

    return Paws::Net::APIResponse->new(
      status  => $status,
      content => $content,
      headers => { %{ $self->canned_headers } },
    );
  }

  sub caller_to_response {
    my ($self, $service, $call_object, $response) = @_;
    return $service->response_to_object->process($call_object, $response);
  }

  __PACKAGE__->meta->make_immutable;
1;
