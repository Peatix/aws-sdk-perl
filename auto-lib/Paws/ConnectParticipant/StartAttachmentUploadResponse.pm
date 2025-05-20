
package Paws::ConnectParticipant::StartAttachmentUploadResponse;
  use Moose;
  has AttachmentId => (is => 'ro', isa => 'Str');
  has UploadMetadata => (is => 'ro', isa => 'Paws::ConnectParticipant::UploadMetadata');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectParticipant::StartAttachmentUploadResponse

=head1 ATTRIBUTES


=head2 AttachmentId => Str

A unique identifier for the attachment.


=head2 UploadMetadata => L<Paws::ConnectParticipant::UploadMetadata>

The headers to be provided while uploading the file to the URL.


=head2 _request_id => Str


=cut

