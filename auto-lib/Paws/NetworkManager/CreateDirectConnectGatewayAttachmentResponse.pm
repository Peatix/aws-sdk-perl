
package Paws::NetworkManager::CreateDirectConnectGatewayAttachmentResponse;
  use Moose;
  has DirectConnectGatewayAttachment => (is => 'ro', isa => 'Paws::NetworkManager::DirectConnectGatewayAttachment');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::CreateDirectConnectGatewayAttachmentResponse

=head1 ATTRIBUTES


=head2 DirectConnectGatewayAttachment => L<Paws::NetworkManager::DirectConnectGatewayAttachment>

Describes the details of a C<CreateDirectConnectGatewayAttachment>
request.


=head2 _request_id => Str


=cut

