
package Paws::ConnectParticipant::GetAttachmentResponse;
  use Moose;
  has AttachmentSizeInBytes => (is => 'ro', isa => 'Int', required => 1);
  has Url => (is => 'ro', isa => 'Str');
  has UrlExpiry => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectParticipant::GetAttachmentResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AttachmentSizeInBytes => Int

The size of the attachment in bytes.


=head2 Url => Str

This is the pre-signed URL that can be used for uploading the file to
Amazon S3 when used in response to StartAttachmentUpload
(https://docs.aws.amazon.com/connect-participant/latest/APIReference/API_StartAttachmentUpload.html).


=head2 UrlExpiry => Str

The expiration time of the URL in ISO timestamp. It's specified in ISO
8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For example,
2019-11-08T02:41:28.172Z.


=head2 _request_id => Str


=cut

