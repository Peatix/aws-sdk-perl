
package Paws::NetworkManager::GetTransitGatewayPeeringResponse;
  use Moose;
  has TransitGatewayPeering => (is => 'ro', isa => 'Paws::NetworkManager::TransitGatewayPeering');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::GetTransitGatewayPeeringResponse

=head1 ATTRIBUTES


=head2 TransitGatewayPeering => L<Paws::NetworkManager::TransitGatewayPeering>

Returns information about a transit gateway peering.


=head2 _request_id => Str


=cut

