# This file has been modified from the original upstream distribution
# by Peatix, Inc. See the git log for this file for details of changes.

package Paws::Net::V4Signature;
  use Moose::Role;
  use Digest::SHA qw(sha256_hex);
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

    # AWS Signature V4 requires the SHA-256 of the request payload
    # to be included in the canonical request string and surfaced
    # as the X-Amz-Content-Sha256 header for several services (S3
    # always, Glacier, and others that may add it in future
    # protocol revisions). Modern Net::Amazon::Signature::V4
    # populates this header internally before signing, but the
    # behaviour is not documented as part of its public contract;
    # set it explicitly so the canonicalisation does not depend on
    # upstream's internals. The header is harmless for services
    # that don't require it (AWS ignores it on those endpoints).
    if (!defined $request->header('X-Amz-Content-Sha256')) {
      $request->header(
        'X-Amz-Content-Sha256' => sha256_hex($request->content // ''),
      );
    }

    my $name = $self->can('signing_name') ? $self->signing_name : $self->service;
    my $sig = Net::Amazon::Signature::V4->new( $creds->access_key, $creds->secret_key, $self->_region_for_signature, $name );
    $sig->sign( $request );
  }
1;
