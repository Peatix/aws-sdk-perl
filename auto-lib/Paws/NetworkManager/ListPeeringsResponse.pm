
package Paws::NetworkManager::ListPeeringsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Peerings => (is => 'ro', isa => 'ArrayRef[Paws::NetworkManager::Peering]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::ListPeeringsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next page of results.


=head2 Peerings => ArrayRef[L<Paws::NetworkManager::Peering>]

Lists the transit gateway peerings for the C<ListPeerings> request.


=head2 _request_id => Str


=cut

