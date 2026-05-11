package Paws::Net::APIRequest;
  use Moose;
  use HTTP::Headers;
  use URI;
  use Scalar::Util qw(blessed openhandle);

  has parameters => (is => 'rw', isa => 'HashRef', default => sub { {} });
  has headers    => (is => 'rw', isa => 'HTTP::Headers', default => sub { HTTP::Headers->new });
  has content    => (is => 'rw', isa => 'Str|Undef', default => '');
  has method     => (is => 'rw', isa => 'Str');
  has uri        => (is => 'rw', isa => 'Str');
  has url        => (is => 'rw', isa => 'Str');

  has stream_body => (is => 'rw', predicate => 'has_stream_body');

  sub is_streaming_body {
    my ($self) = @_;
    return 0 unless $self->has_stream_body;
    my $body = $self->stream_body;
    return 1 if ref($body) eq 'GLOB';
    return 1 if openhandle($body);
    return 1 if blessed($body) && $body->isa('IO::Handle');
    return 0;
  }

  sub header {
    my ($self, $header, $value) = @_;
    $self->headers->header($header, $value) if (defined $value);
    return $self->headers->header($header);
  }

   sub header_hash {
     my $self = shift;
     my $headers = {};
     $self->headers->scan(sub { $headers->{ $_[0] } = $_[1] });
     return $headers;
   }
1;
