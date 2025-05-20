
package Paws::NetworkManager::DeletePeeringResponse;
  use Moose;
  has Peering => (is => 'ro', isa => 'Paws::NetworkManager::Peering');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::DeletePeeringResponse

=head1 ATTRIBUTES


=head2 Peering => L<Paws::NetworkManager::Peering>

Information about a deleted peering connection.


=head2 _request_id => Str


=cut

