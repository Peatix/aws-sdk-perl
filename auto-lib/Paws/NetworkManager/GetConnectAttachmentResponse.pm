
package Paws::NetworkManager::GetConnectAttachmentResponse;
  use Moose;
  has ConnectAttachment => (is => 'ro', isa => 'Paws::NetworkManager::ConnectAttachment');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::GetConnectAttachmentResponse

=head1 ATTRIBUTES


=head2 ConnectAttachment => L<Paws::NetworkManager::ConnectAttachment>

Details about the Connect attachment.


=head2 _request_id => Str


=cut

