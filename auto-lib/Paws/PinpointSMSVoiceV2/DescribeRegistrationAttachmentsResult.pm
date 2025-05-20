
package Paws::PinpointSMSVoiceV2::DescribeRegistrationAttachmentsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has RegistrationAttachments => (is => 'ro', isa => 'ArrayRef[Paws::PinpointSMSVoiceV2::RegistrationAttachmentsInformation]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::DescribeRegistrationAttachmentsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to be used for the next set of paginated results. You don't
need to supply a value for this field in the initial request.


=head2 B<REQUIRED> RegistrationAttachments => ArrayRef[L<Paws::PinpointSMSVoiceV2::RegistrationAttachmentsInformation>]

An array of B<RegistrationAttachments> objects that contain the details
for the requested registration attachments.


=head2 _request_id => Str


=cut

1;