
package Paws::NetworkManager::GetNetworkResourceRelationshipsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Relationships => (is => 'ro', isa => 'ArrayRef[Paws::NetworkManager::Relationship]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::GetNetworkResourceRelationshipsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next page of results.


=head2 Relationships => ArrayRef[L<Paws::NetworkManager::Relationship>]

The resource relationships.


=head2 _request_id => Str


=cut

