
package Paws::NetworkManager::DisassociateConnectPeerResponse;
  use Moose;
  has ConnectPeerAssociation => (is => 'ro', isa => 'Paws::NetworkManager::ConnectPeerAssociation');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::DisassociateConnectPeerResponse

=head1 ATTRIBUTES


=head2 ConnectPeerAssociation => L<Paws::NetworkManager::ConnectPeerAssociation>

Describes the Connect peer association.


=head2 _request_id => Str


=cut

