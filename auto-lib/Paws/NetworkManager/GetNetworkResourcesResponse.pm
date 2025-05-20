
package Paws::NetworkManager::GetNetworkResourcesResponse;
  use Moose;
  has NetworkResources => (is => 'ro', isa => 'ArrayRef[Paws::NetworkManager::NetworkResource]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::GetNetworkResourcesResponse

=head1 ATTRIBUTES


=head2 NetworkResources => ArrayRef[L<Paws::NetworkManager::NetworkResource>]

The network resources.


=head2 NextToken => Str

The token for the next page of results.


=head2 _request_id => Str


=cut

