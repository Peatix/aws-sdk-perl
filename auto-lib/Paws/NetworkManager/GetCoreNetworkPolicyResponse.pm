
package Paws::NetworkManager::GetCoreNetworkPolicyResponse;
  use Moose;
  has CoreNetworkPolicy => (is => 'ro', isa => 'Paws::NetworkManager::CoreNetworkPolicy');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::GetCoreNetworkPolicyResponse

=head1 ATTRIBUTES


=head2 CoreNetworkPolicy => L<Paws::NetworkManager::CoreNetworkPolicy>

The details about a core network policy.


=head2 _request_id => Str


=cut

