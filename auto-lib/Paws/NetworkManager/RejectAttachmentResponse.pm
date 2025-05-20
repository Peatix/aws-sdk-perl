
package Paws::NetworkManager::RejectAttachmentResponse;
  use Moose;
  has Attachment => (is => 'ro', isa => 'Paws::NetworkManager::Attachment');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::RejectAttachmentResponse

=head1 ATTRIBUTES


=head2 Attachment => L<Paws::NetworkManager::Attachment>

Describes the rejected attachment request.


=head2 _request_id => Str


=cut

