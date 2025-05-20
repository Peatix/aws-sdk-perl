
package Paws::NetworkManager::DeleteAttachmentResponse;
  use Moose;
  has Attachment => (is => 'ro', isa => 'Paws::NetworkManager::Attachment');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::DeleteAttachmentResponse

=head1 ATTRIBUTES


=head2 Attachment => L<Paws::NetworkManager::Attachment>

Information about the deleted attachment.


=head2 _request_id => Str


=cut

