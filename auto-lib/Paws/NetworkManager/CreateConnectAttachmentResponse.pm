
package Paws::NetworkManager::CreateConnectAttachmentResponse;
  use Moose;
  has ConnectAttachment => (is => 'ro', isa => 'Paws::NetworkManager::ConnectAttachment');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::CreateConnectAttachmentResponse

=head1 ATTRIBUTES


=head2 ConnectAttachment => L<Paws::NetworkManager::ConnectAttachment>

The response to a Connect attachment request.


=head2 _request_id => Str


=cut

