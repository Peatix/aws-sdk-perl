
package Paws::NetworkManager::UpdateDirectConnectGatewayAttachmentResponse;
  use Moose;
  has DirectConnectGatewayAttachment => (is => 'ro', isa => 'Paws::NetworkManager::DirectConnectGatewayAttachment');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::UpdateDirectConnectGatewayAttachmentResponse

=head1 ATTRIBUTES


=head2 DirectConnectGatewayAttachment => L<Paws::NetworkManager::DirectConnectGatewayAttachment>

Returns details of the Direct Connect gateway attachment with the
updated edge locations.


=head2 _request_id => Str


=cut

