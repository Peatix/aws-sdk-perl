
package Paws::NetworkManager::GetNetworkRoutesResponse;
  use Moose;
  has CoreNetworkSegmentEdge => (is => 'ro', isa => 'Paws::NetworkManager::CoreNetworkSegmentEdgeIdentifier');
  has NetworkRoutes => (is => 'ro', isa => 'ArrayRef[Paws::NetworkManager::NetworkRoute]');
  has RouteTableArn => (is => 'ro', isa => 'Str');
  has RouteTableTimestamp => (is => 'ro', isa => 'Str');
  has RouteTableType => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::GetNetworkRoutesResponse

=head1 ATTRIBUTES


=head2 CoreNetworkSegmentEdge => L<Paws::NetworkManager::CoreNetworkSegmentEdgeIdentifier>

Describes a core network segment edge.


=head2 NetworkRoutes => ArrayRef[L<Paws::NetworkManager::NetworkRoute>]

The network routes.


=head2 RouteTableArn => Str

The ARN of the route table.


=head2 RouteTableTimestamp => Str

The route table creation time.


=head2 RouteTableType => Str

The route table type.

Valid values are: C<"TRANSIT_GATEWAY_ROUTE_TABLE">, C<"CORE_NETWORK_SEGMENT">, C<"NETWORK_FUNCTION_GROUP">
=head2 _request_id => Str


=cut

