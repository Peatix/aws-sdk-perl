package Paws::Net::FurlCaller;
  # This caller uses Furl
  use Moose;
  with 'Paws::Net::RetryCallerRole', 'Paws::Net::CallerRole';
  use Furl;
  use Paws::Net::APIResponse;

  has debug              => ( is => 'rw', required => 0, default => sub { 0 } );
  has ua => (is => 'rw', required => 1, lazy => 1,
    default     => sub {
        my $ua = Furl->new(
          timeout => 60,
          agent => 'AWS Perl SDK ' . $Paws::VERSION,
        );
        return $ua;
    }
  );

  sub send_request {
    my ($self, $service, $call_object, %params) = @_;
    my $requestObj = $service->prepare_request_for_call($call_object); 

    my $headers = $requestObj->header_hash;
    # HTTP::Tiny derives the Host header from the URL. It's an error to set it.
    delete $headers->{Host};

    my $method = uc $requestObj->method;

    my %req_opts = (
      url     => $requestObj->url,
      headers => [ %$headers ],
      method  => $method,
    );

    if ($requestObj->is_streaming_body) {
      my $fh = $requestObj->stream_body;
      my $chunk_size = 65536;
      $req_opts{content} = sub {
        my $buf;
        my $n = read($fh, $buf, $chunk_size);
        return $buf if $n;
        return '';
      };
    } elsif (defined $requestObj->content) {
      $req_opts{content} = $requestObj->content;
    }

    if (my $cb = $params{response_callback}) {
      $req_opts{write_code} = $cb;
    }

    my $response = $self->ua->request(%req_opts);

    return Paws::Net::APIResponse->new(
      status  => $response->code,
      content => $response->content,
      headers => { $response->headers->flatten },
    );
  }

  sub caller_to_response {
    my ($self, $service, $call_object, $response) = @_;
 
    if ($response->status == 500 and $response->has_header('x-internal-response')) {
      return Paws::Exception->new(message => $response->content, code => 'ConnectionError', request_id => '');
    } else {
      return $service->response_to_object->process($call_object, $response);
    }
  }
1;
