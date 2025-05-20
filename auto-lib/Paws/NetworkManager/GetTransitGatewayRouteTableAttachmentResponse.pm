
package Paws::NetworkManager::GetTransitGatewayRouteTableAttachmentResponse;
  use Moose;
  has TransitGatewayRouteTableAttachment => (is => 'ro', isa => 'Paws::NetworkManager::TransitGatewayRouteTableAttachment');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::GetTransitGatewayRouteTableAttachmentResponse

=head1 ATTRIBUTES


=head2 TransitGatewayRouteTableAttachment => L<Paws::NetworkManager::TransitGatewayRouteTableAttachment>

Returns information about the transit gateway route table attachment.


=head2 _request_id => Str


=cut

