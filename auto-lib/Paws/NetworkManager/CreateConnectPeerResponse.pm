
package Paws::NetworkManager::CreateConnectPeerResponse;
  use Moose;
  has ConnectPeer => (is => 'ro', isa => 'Paws::NetworkManager::ConnectPeer');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::CreateConnectPeerResponse

=head1 ATTRIBUTES


=head2 ConnectPeer => L<Paws::NetworkManager::ConnectPeer>

The response to the request.


=head2 _request_id => Str


=cut

