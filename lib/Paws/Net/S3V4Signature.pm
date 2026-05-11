package Paws::Net::S3V4Signature;
  # DEPRECATED. This role is a copy-paste of Paws::Net::V4Signature
  # written before the differences between S3 and S3V4 signing were
  # understood; we have since established that V4Signature (with the
  # explicit X-Amz-Content-Sha256 header added in the same stack as
  # this deprecation marker) covers S3's needs end-to-end.
  #
  # No package in lib/, t/, share/, script/, builder-lib/ or
  # templates/ consumes Paws::Net::S3V4Signature, and the
  # materialiser maps every service's signature_version => 'v4' to
  # Paws::Net::V4Signature directly. Deletion is scheduled in a
  # follow-up PR after one release of advance notice.
  use Moose::Role;
  use Net::Amazon::Signature::V4;
  #requires 'region';
  requires 'service';
  use POSIX qw(strftime);

  sub BUILD {
    my $self = shift;

    # These calls are here so that when you construct
    # the object the endpoint information and the _region_for_signature
    # are calculated during construction. This is to avoid the fact that 
    # these attributes are lazy (because they depend on other attributes) 
    # and they don't get used until the first method is called, so if
    # they are incorrect, they don't throw until the first method is called.
    # It's much better to have them throw when $paws->service('...') is called
    # as this is the point where the user had specified "incorrect" information,
    # instead of the problem happening in the first method call.
    $self->endpoint;
    $self->_region_for_signature;
  }

  sub sign {
    my ($self, $request, $creds) = @_;

    $creds ||= $self->credentials->refresh;

    $request->header( Date => $request->header('X-Amz-Date') // strftime( '%Y%m%dT%H%M%SZ', gmtime ) );
    $request->header(
        'Host' => $self->endpoint->default_port == $self->endpoint->port
        ? $self->endpoint->host
        : $self->endpoint->host_port);
    if ($creds->session_token) {
      $request->header( 'X-Amz-Security-Token' => $creds->session_token );
    }

    my $name = $self->can('signing_name') ? $self->signing_name : $self->service;
    my $sig = Net::Amazon::Signature::V4->new( $creds->access_key, $creds->secret_key, $self->_region_for_signature, $name );
    $sig->sign( $request );
  }
1;
