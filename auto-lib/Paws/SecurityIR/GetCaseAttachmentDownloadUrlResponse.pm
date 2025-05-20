
package Paws::SecurityIR::GetCaseAttachmentDownloadUrlResponse;
  use Moose;
  has AttachmentPresignedUrl => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'attachmentPresignedUrl', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityIR::GetCaseAttachmentDownloadUrlResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AttachmentPresignedUrl => Str

Response element providing the Amazon S3 presigned URL to download an
attachment.


=head2 _request_id => Str


=cut

