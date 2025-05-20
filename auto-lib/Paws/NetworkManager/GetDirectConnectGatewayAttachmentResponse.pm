
package Paws::NetworkManager::GetDirectConnectGatewayAttachmentResponse;
  use Moose;
  has DirectConnectGatewayAttachment => (is => 'ro', isa => 'Paws::NetworkManager::DirectConnectGatewayAttachment');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::GetDirectConnectGatewayAttachmentResponse

=head1 ATTRIBUTES


=head2 DirectConnectGatewayAttachment => L<Paws::NetworkManager::DirectConnectGatewayAttachment>

Shows details about the Direct Connect gateway attachment.


=head2 _request_id => Str


=cut

