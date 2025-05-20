
package Paws::NetworkManager::DeleteConnectPeerResponse;
  use Moose;
  has ConnectPeer => (is => 'ro', isa => 'Paws::NetworkManager::ConnectPeer');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::DeleteConnectPeerResponse

=head1 ATTRIBUTES


=head2 ConnectPeer => L<Paws::NetworkManager::ConnectPeer>

Information about the deleted Connect peer.


=head2 _request_id => Str


=cut

