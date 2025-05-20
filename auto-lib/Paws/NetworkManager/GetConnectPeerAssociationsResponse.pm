
package Paws::NetworkManager::GetConnectPeerAssociationsResponse;
  use Moose;
  has ConnectPeerAssociations => (is => 'ro', isa => 'ArrayRef[Paws::NetworkManager::ConnectPeerAssociation]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::GetConnectPeerAssociationsResponse

=head1 ATTRIBUTES


=head2 ConnectPeerAssociations => ArrayRef[L<Paws::NetworkManager::ConnectPeerAssociation>]

Displays a list of Connect peer associations.


=head2 NextToken => Str

The token for the next page of results.


=head2 _request_id => Str


=cut

