
package Paws::IoTSecureTunneling::RotateTunnelAccessTokenResponse;
  use Moose;
  has DestinationAccessToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'destinationAccessToken' );
  has SourceAccessToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceAccessToken' );
  has TunnelArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'tunnelArn' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::IoTSecureTunneling::RotateTunnelAccessTokenResponse

=head1 ATTRIBUTES


=head2 DestinationAccessToken => Str

The client access token that the destination local proxy uses to
connect to IoT Secure Tunneling.


=head2 SourceAccessToken => Str

The client access token that the source local proxy uses to connect to
IoT Secure Tunneling.


=head2 TunnelArn => Str

The Amazon Resource Name for the tunnel.


=head2 _request_id => Str


=cut

1;