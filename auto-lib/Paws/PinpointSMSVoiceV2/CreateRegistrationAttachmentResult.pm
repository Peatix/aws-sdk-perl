
package Paws::PinpointSMSVoiceV2::CreateRegistrationAttachmentResult;
  use Moose;
  has AttachmentStatus => (is => 'ro', isa => 'Str', required => 1);
  has CreatedTimestamp => (is => 'ro', isa => 'Str', required => 1);
  has RegistrationAttachmentArn => (is => 'ro', isa => 'Str', required => 1);
  has RegistrationAttachmentId => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::PinpointSMSVoiceV2::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::CreateRegistrationAttachmentResult

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
=head2 B<REQUIRED> CreatedTimestamp => Str

The time when the registration attachment was created, in UNIX epoch
time (https://www.epochconverter.com/) format.


=head2 B<REQUIRED> RegistrationAttachmentArn => Str

The Amazon Resource Name (ARN) for the registration attachment.


=head2 B<REQUIRED> RegistrationAttachmentId => Str

The unique identifier for the registration attachment.


=head2 Tags => ArrayRef[L<Paws::PinpointSMSVoiceV2::Tag>]

An array of tags (key and value pairs) to associate with the
registration attachment.


=head2 _request_id => Str


=cut

1;