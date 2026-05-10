package Paws::Net::Caller;
  use Moose;
  with 'Paws::Net::RetryCallerRole', 'Paws::Net::CallerRole';
  use Paws::Net::APIResponse;

  has debug              => ( is => 'rw', required => 0, default => sub { 0 } );
  has ua => (is => 'rw', required => 1, lazy => 1,
    default     => sub {
        use HTTP::Tiny;
        HTTP::Tiny->new(
          agent => 'AWS Perl SDK ' . $Paws::VERSION,
          timeout => 60,
        );
    }
  );

  sub send_request {
    my ($self, $service, $call_object, %params) = @_;
    my $requestObj = $service->prepare_request_for_call($call_object); 
    my $headers    = $requestObj->header_hash;

    # HTTP::Tiny derives the Host header from the URL. It's an error to set it.
    delete $headers->{Host}; 

    my %options = (headers => $headers);

    if ($requestObj->is_streaming_body) {
      my $fh = $requestObj->stream_body;
      my $chunk_size = 65536;
      $options{content} = sub {
        my $buf;
        my $n = read($fh, $buf, $chunk_size);
        return $buf if $n;
        return '';
      };
    } elsif (defined $requestObj->content) {
      $options{content} = $requestObj->content;
    }

    if (my $cb = $params{response_callback}) {
      $options{data_callback} = $cb;
    }

    my $response = $self->ua->request(
      $requestObj->method,
      $requestObj->url,
      \%options,
    );
    return Paws::Net::APIResponse->new(
      status  => $response->{status},
      content => $response->{content},
      headers => $response->{headers}
    );
  }

  sub caller_to_response {
    my ($self, $service, $call_object, $response) = @_;

    if ($response->status == 599){
      return Paws::Exception->new(message => $response->content, code => 'ConnectionError', request_id => '');
    } else {
      return $service->response_to_object->process($call_object, $response);
    }
  }
1;
