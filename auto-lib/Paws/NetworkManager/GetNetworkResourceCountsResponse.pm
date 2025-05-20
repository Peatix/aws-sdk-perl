
package Paws::NetworkManager::GetNetworkResourceCountsResponse;
  use Moose;
  has NetworkResourceCounts => (is => 'ro', isa => 'ArrayRef[Paws::NetworkManager::NetworkResourceCount]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::GetNetworkResourceCountsResponse

=head1 ATTRIBUTES


=head2 NetworkResourceCounts => ArrayRef[L<Paws::NetworkManager::NetworkResourceCount>]

The count of resources.


=head2 NextToken => Str

The token for the next page of results.


=head2 _request_id => Str


=cut

