
package Paws::ChimeSDKMessaging::GetMessagingSessionEndpointResponse;
  use Moose;
  has Endpoint => (is => 'ro', isa => 'Paws::ChimeSDKMessaging::MessagingSessionEndpoint');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMessaging::GetMessagingSessionEndpointResponse

=head1 ATTRIBUTES


=head2 Endpoint => L<Paws::ChimeSDKMessaging::MessagingSessionEndpoint>

The endpoint returned in the response.


=head2 _request_id => Str


=cut

