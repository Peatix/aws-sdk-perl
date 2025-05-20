
package Paws::NetworkManager::ListCoreNetworkPolicyVersionsResponse;
  use Moose;
  has CoreNetworkPolicyVersions => (is => 'ro', isa => 'ArrayRef[Paws::NetworkManager::CoreNetworkPolicyVersion]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::ListCoreNetworkPolicyVersionsResponse

=head1 ATTRIBUTES


=head2 CoreNetworkPolicyVersions => ArrayRef[L<Paws::NetworkManager::CoreNetworkPolicyVersion>]

Describes core network policy versions.


=head2 NextToken => Str

The token for the next page of results.


=head2 _request_id => Str


=cut

