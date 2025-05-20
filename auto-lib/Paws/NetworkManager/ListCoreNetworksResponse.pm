
package Paws::NetworkManager::ListCoreNetworksResponse;
  use Moose;
  has CoreNetworks => (is => 'ro', isa => 'ArrayRef[Paws::NetworkManager::CoreNetworkSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::ListCoreNetworksResponse

=head1 ATTRIBUTES


=head2 CoreNetworks => ArrayRef[L<Paws::NetworkManager::CoreNetworkSummary>]

Describes the list of core networks.


=head2 NextToken => Str

The token for the next page of results.


=head2 _request_id => Str


=cut

