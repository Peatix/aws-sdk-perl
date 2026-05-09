package Paws::Net::DebugCaller;
  # A pluggable debug-recorder caller. Wraps another caller, intercepts
  # the request/response cycle, and writes a single YAML file capturing
  # everything a maintainer needs to reproduce a serialisation fault
  # offline.
  #
  # Typical use: a 400 from AWS where the SDK marshalling looks
  # suspicious. Swap the default caller for a DebugCaller, re-run the
  # call, and the YAML file has the prepared request and the raw
  # response side-by-side.
  #
  # The wrapped caller still does the real HTTP work; DebugCaller is a
  # transparent recorder around it. See docs/debug-capture.md for the
  # YAML shape, privacy considerations, and the limitations called out
  # below.
  #
  # Limitations:
  #   - The wrapped caller must expose `send_request` and
  #     `caller_to_response` (i.e. compose Paws::Net::RetryCallerRole).
  #     The standard transports (Caller, LWPCaller, FurlCaller,
  #     MockCaller) all qualify. Specialised callers like
  #     MojoAsyncCaller (which overrides do_call to return a Future)
  #     and TestGivenResponse (which inlines the response building)
  #     cannot be wrapped.
  #   - The captured request comes from a fresh
  #     `prepare_request_for_call` invocation, not the exact bytes
  #     emitted by the wrapped caller. The body and most headers are
  #     identical; the timestamp and SigV4 signature differ because
  #     both depend on the wall-clock at the moment of preparation.
  #     This is acceptable for debugging serialisation faults (which
  #     are about wire shape, not signature accuracy) and lets
  #     DebugCaller stay a pure wrapper rather than reaching into
  #     each transport's internals. The Authorization header is
  #     redacted in the YAML anyway.
  #   - On retry, send_request is invoked once per attempt and the YAML
  #     is overwritten each time; the file reflects the LAST attempt.

  use Moose;
  use Carp qw(croak);
  use Encode ();
  use MIME::Base64 qw(encode_base64);
  use POSIX qw(strftime);
  use Time::HiRes qw(gettimeofday tv_interval);
  use YAML qw(DumpFile);
  use Paws;
  use Paws::Net::APIResponse;

  with 'Paws::Net::RetryCallerRole', 'Paws::Net::CallerRole';

  has wrapped => (
    is       => 'ro',
    does     => 'Paws::Net::CallerRole',
    required => 1,
  );

  # capture_path is read in this order at every do_call:
  #   1. $ENV{PAWS_DEBUG_CAPTURE_PATH}
  #   2. the explicit constructor argument
  #   3. an auto-generated filename in the current directory.
  # The lazy default seeds the attribute from the env var so that
  # `->capture_path` (introspection) reflects the same value that
  # `_resolve_path` will use, but `_resolve_path` re-reads $ENV at
  # call time so a late-set env var still wins.
  has capture_path => (
    is      => 'ro',
    isa     => 'Maybe[Str]',
    lazy    => 1,
    default => sub { $ENV{PAWS_DEBUG_CAPTURE_PATH} },
  );

  # Cap on string length included in the YAML for arguments and
  # request/response bodies. Anything longer is truncated and a note
  # records the original byte length. 1 KiB is a balance between
  # "enough to see the wire shape" and "the YAML stays readable".
  has body_byte_limit => (
    is      => 'ro',
    isa     => 'Int',
    default => 1024,
  );

  # Header names that get redacted to '<REDACTED>' on the request
  # side. Authorization carries the SigV4 signature; anything matching
  # /token/i (X-Amz-Security-Token, X-Amz-Session-Token, etc.) carries
  # session credentials and is redacted regardless of this list.
  # Response headers are NOT redacted because they're informational
  # from AWS.
  has redacted_request_headers => (
    is      => 'ro',
    isa     => 'ArrayRef[Str]',
    default => sub { [ 'Authorization' ] },
  );

  sub send_request {
    my ($self, $service, $call_object) = @_;

    croak "Paws::Net::DebugCaller requires the wrapped caller to expose 'send_request' "
        . "(i.e. compose Paws::Net::RetryCallerRole). Got: " . ref($self->wrapped)
      unless $self->wrapped->can('send_request');

    # Re-prepare for capture. See package POD for why this is a fresh
    # prepare rather than peeking at what the wrapped caller actually
    # sent over the wire.
    my $request = $service->prepare_request_for_call($call_object);

    my $start    = [gettimeofday];
    my $response = $self->wrapped->send_request($service, $call_object);
    my $duration = tv_interval($start);

    my $record = $self->_build_record(
      service     => $service,
      call_object => $call_object,
      request     => $request,
      response    => $response,
      duration    => $duration,
    );

    my $path = $self->_resolve_path($service, $call_object);
    $self->_dump_yaml($path, $record);

    return $response;
  }

  sub caller_to_response {
    my ($self, $service, $call_object, $response) = @_;

    croak "Paws::Net::DebugCaller requires the wrapped caller to expose 'caller_to_response'. "
        . "Got: " . ref($self->wrapped)
      unless $self->wrapped->can('caller_to_response');

    return $self->wrapped->caller_to_response($service, $call_object, $response);
  }

  sub _build_record {
    my ($self, %args) = @_;
    my $service     = $args{service};
    my $call_object = $args{call_object};
    my $request     = $args{request};
    my $response    = $args{response};
    my $duration    = $args{duration};

    my $is_error = ($response->status >= 400) ? 1 : 0;

    my $arguments = $self->_sanitise_arguments(Paws->to_hash($call_object));

    return {
      operation   => sprintf('%s / %s', $service->service, $call_object->_api_call),
      outcome     => $is_error ? 'error' : 'success',
      timestamp   => strftime('%Y-%m-%dT%H:%M:%SZ', gmtime),
      duration_ms => $duration * 1000,
      arguments   => $arguments,
      request     => {
        method     => $request->method,
        url        => $request->url,
        uri        => $request->uri,
        parameters => $request->parameters,
        headers    => $self->_redact_headers($request->header_hash),
        body       => $self->_render_body($request->content),
      },
      response    => {
        status  => $response->status,
        headers => $self->_normalise_response_headers($response->headers),
        body    => $self->_render_body($response->content),
      },
      metadata    => $self->_build_metadata($service),
    };
  }

  sub _build_metadata {
    my ($self, $service) = @_;

    my $meta = {
      sdk_version    => $Paws::VERSION,
      perl_version   => sprintf('%vd', $^V),
      service_class  => ref($service),
      caller_class   => ref($self->wrapped),
    };

    # Optional attributes — guarded with `can` because synthetic test
    # services don't always implement every accessor. eval guards are
    # a defensive belt: if something throws (e.g. an endpoint resolver
    # blowing up because no region is set) we still want the YAML.
    if ($service->can('region')) {
      my $region = eval { $service->region };
      $meta->{region} = $region if defined $region;
    }
    if ($service->can('signing_name')) {
      my $signing = eval { $service->signing_name };
      $meta->{signing_name} = $signing if defined $signing;
    }
    if ($service->can('version')) {
      my $api_version = eval { $service->version };
      $meta->{api_version} = $api_version if defined $api_version;
    }
    if ($service->can('endpoint')) {
      my $endpoint = eval { $service->endpoint };
      $meta->{endpoint} = "$endpoint" if defined $endpoint;
    }

    return $meta;
  }

  sub _redact_headers {
    my ($self, $headers) = @_;

    my %redact = map { lc($_) => 1 } @{ $self->redacted_request_headers };
    my $out = {};
    for my $name (sort keys %$headers) {
      if ($redact{ lc $name } || $name =~ /token/i) {
        $out->{$name} = '<REDACTED>';
      } else {
        $out->{$name} = $headers->{$name};
      }
    }
    return $out;
  }

  sub _normalise_response_headers {
    my ($self, $headers) = @_;
    # APIResponse headers is a HashRef; copy to avoid mutating the
    # live response object that we hand back to the caller chain.
    return { %{ $headers // {} } };
  }

  sub _sanitise_arguments {
    my ($self, $value) = @_;
    return undef if not defined $value;

    my $ref = ref($value);
    if ($ref eq 'HASH') {
      return { map { ($_ => $self->_sanitise_arguments($value->{$_})) } keys %$value };
    }
    elsif ($ref eq 'ARRAY') {
      return [ map { $self->_sanitise_arguments($_) } @$value ];
    }
    elsif ($ref eq '' || $ref eq 'SCALAR') {
      my $string = ($ref eq 'SCALAR') ? $$value : $value;
      return $string if not defined $string;
      # Pure-printable, in-budget strings pass through verbatim.
      # Anything else goes through the body renderer so a multi-MiB
      # binary upload doesn't blow up the YAML.
      return $string
        if $string !~ /[^\x20-\x7E\t\n\r]/
        && length($string) <= $self->body_byte_limit;
      return $self->_render_body($string);
    }
    else {
      # Boolean refs (\0, \1) and other ref types — stringify rather
      # than recurse into them, so the YAML stays serialisable.
      return "$value";
    }
  }

  sub _render_body {
    my ($self, $bytes) = @_;
    return undef if not defined $bytes;
    return ''    if $bytes eq '';

    my $original_length = length($bytes);
    my $cap             = $self->body_byte_limit;
    my $truncated       = ($original_length > $cap) ? 1 : 0;
    my $sample          = $truncated ? substr($bytes, 0, $cap) : $bytes;

    # UTF-8 decode is the cheap "is this text?" test. If it
    # round-trips and contains no NUL, treat as text; otherwise
    # base64-encode so the YAML stays valid.
    my $is_binary = ($sample =~ /\x00/) || !$self->_is_utf8_text($sample);

    if ($is_binary) {
      return {
        encoding        => 'base64',
        original_length => $original_length,
        truncated       => $truncated,
        base64          => encode_base64($sample, ''),
      };
    }

    # Verbatim text path: short, in-budget, valid-UTF-8 strings stay
    # as plain scalars so the YAML reads naturally.
    return $sample if !$truncated;

    return {
      encoding        => 'utf-8',
      original_length => $original_length,
      truncated       => $truncated,
      text            => $sample,
    };
  }

  sub _is_utf8_text {
    my ($self, $bytes) = @_;
    my $decoded = eval { Encode::decode('utf-8', $bytes, Encode::FB_CROAK()) };
    return $@ ? 0 : 1;
  }

  sub _resolve_path {
    my ($self, $service, $call_object) = @_;

    # Env var wins. capture_path constructor arg is the fallback.
    # If neither is set, generate a name per call so multiple
    # operations on the same service instance don't clobber each
    # other when the caller didn't pin a path.
    my $path = $ENV{PAWS_DEBUG_CAPTURE_PATH} // $self->capture_path;
    return $path if defined $path;

    my $service_name = $service->service;
    my $operation    = $call_object->_api_call;
    my $stamp        = strftime('%Y%m%dT%H%M%SZ', gmtime);
    return sprintf('paws-debug-%s-%s-%s.yaml', $stamp, $service_name, $operation);
  }

  sub _dump_yaml {
    my ($self, $path, $record) = @_;
    DumpFile($path, $record);
    return;
  }

  no Moose;
  __PACKAGE__->meta->make_immutable;
1;

=head1 NAME

Paws::Net::DebugCaller - Record the full request/response cycle of an AWS
operation into a YAML file for offline debugging.

=head1 SYNOPSIS

  use Paws;
  use Paws::Net::Caller;
  use Paws::Net::DebugCaller;

  my $debug = Paws::Net::DebugCaller->new(
    wrapped      => Paws::Net::Caller->new,
    capture_path => '/tmp/s3-debug.yaml',   # optional; env var wins
  );

  my $s3 = Paws->service('S3', caller => $debug);
  $s3->PutObject(Bucket => 'foo', Key => 'bar.txt', Body => 'hi');

  # /tmp/s3-debug.yaml now contains the prepared request, the raw
  # AWS response, and metadata for reproducing the call.

=head1 DESCRIPTION

C<Paws::Net::DebugCaller> wraps an existing C<Paws::Net::CallerRole>
implementation. The wrapped caller still performs the real HTTP work;
DebugCaller is a transparent recorder around it.

The intended use is debugging serialisation faults: a 400-class error
from AWS where you want to see exactly what bytes the SDK sent and
exactly what AWS returned, so you can reproduce the fault and write
a regression test.

See F<docs/debug-capture.md> in the repository for the YAML shape,
privacy considerations, and a worked example of turning a captured
YAML into a fixture-based regression test.

=head1 ATTRIBUTES

=over

=item wrapped (required, does Paws::Net::CallerRole)

The underlying caller that does the real HTTP work. Must expose
C<send_request> and C<caller_to_response>; the standard
C<Paws::Net::Caller>, C<Paws::Net::LWPCaller>,
C<Paws::Net::FurlCaller>, and C<Paws::Net::MockCaller> do.

=item capture_path (Maybe[Str])

Path to write the YAML record to. The C<PAWS_DEBUG_CAPTURE_PATH>
environment variable wins if set. If neither is set, a unique
filename of the form
C<paws-debug-E<lt>UTC-stampE<gt>-E<lt>serviceE<gt>-E<lt>operationE<gt>.yaml>
is generated in the current directory per call.

When C<capture_path> IS set, each invocation OVERWRITES the file
(last call wins). This is intentional - the file is a debug
artefact, not a log.

=item body_byte_limit (Int, default 1024)

String values longer than this many bytes are truncated in the YAML
and the original length is recorded alongside.

=item redacted_request_headers (ArrayRef[Str], default ['Authorization'])

Header names that get rewritten to C<E<lt>REDACTEDE<gt>> on the
request side. Headers whose name matches C</token/i> are also
redacted regardless of this list. Response headers are NOT redacted.

=back

=cut
