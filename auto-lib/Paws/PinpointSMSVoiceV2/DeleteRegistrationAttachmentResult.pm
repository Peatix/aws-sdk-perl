
package Paws::PinpointSMSVoiceV2::DeleteRegistrationAttachmentResult;
  use Moose;
  has AttachmentStatus => (is => 'ro', isa => 'Str', required => 1);
  has AttachmentUploadErrorReason => (is => 'ro', isa => 'Str');
  has CreatedTimestamp => (is => 'ro', isa => 'Str', required => 1);
  has RegistrationAttachmentArn => (is => 'ro', isa => 'Str', required => 1);
  has RegistrationAttachmentId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::DeleteRegistrationAttachmentResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> AttachmentStatus => Str

The status of the registration attachment.

=over

=item *

C<UPLOAD_IN_PROGRESS> The attachment is being uploaded.

=item *

C<UPLOAD_COMPLETE> The attachment has been uploaded.

=item *

C<UPLOAD_FAILED> The attachment failed to uploaded.

=item *

C<DELETED> The attachment has been deleted..

=back


Valid values are: C<"UPLOAD_IN_PROGRESS">, C<"UPLOAD_COMPLETE">, C<"UPLOAD_FAILED">, C<"DELETED">
=head2 AttachmentUploadErrorReason => Str

The error message if the upload failed.

Valid values are: C<"INTERNAL_ERROR">
=head2 B<REQUIRED> CreatedTimestamp => Str

The time when the registration attachment was created, in UNIX epoch
time (https://www.epochconverter.com/) format.


=head2 B<REQUIRED> RegistrationAttachmentArn => Str

The Amazon Resource Name (ARN) for the registration attachment.


=head2 B<REQUIRED> RegistrationAttachmentId => Str

The unique identifier for the registration attachment.


=head2 _request_id => Str


=cut

1;