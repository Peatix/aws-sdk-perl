
package Paws::NetworkManager::CreateTransitGatewayRouteTableAttachmentResponse;
  use Moose;
  has TransitGatewayRouteTableAttachment => (is => 'ro', isa => 'Paws::NetworkManager::TransitGatewayRouteTableAttachment');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::CreateTransitGatewayRouteTableAttachmentResponse

=head1 ATTRIBUTES


=head2 TransitGatewayRouteTableAttachment => L<Paws::NetworkManager::TransitGatewayRouteTableAttachment>

The route table associated with the create transit gateway route table
attachment request.


=head2 _request_id => Str


=cut

