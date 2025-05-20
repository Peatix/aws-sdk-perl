
package Paws::PinpointSMSVoiceV2::DeleteRegistrationAttachment;
  use Moose;
  has RegistrationAttachmentId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteRegistrationAttachment');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointSMSVoiceV2::DeleteRegistrationAttachmentResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::DeleteRegistrationAttachment - Arguments for method DeleteRegistrationAttachment on L<Paws::PinpointSMSVoiceV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteRegistrationAttachment on the
L<Amazon Pinpoint SMS Voice V2|Paws::PinpointSMSVoiceV2> service. Use the attributes of this class
as arguments to method DeleteRegistrationAttachment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteRegistrationAttachment.

=head1 SYNOPSIS

    my $sms-voice = Paws->service('PinpointSMSVoiceV2');
    my $DeleteRegistrationAttachmentResult =
      $sms -voice->DeleteRegistrationAttachment(
      RegistrationAttachmentId => 'MyRegistrationAttachmentIdOrArn',

      );

    # Results:
    my $AttachmentStatus =
      $DeleteRegistrationAttachmentResult->AttachmentStatus;
    my $AttachmentUploadErrorReason =
      $DeleteRegistrationAttachmentResult->AttachmentUploadErrorReason;
    my $CreatedTimestamp =
      $DeleteRegistrationAttachmentResult->CreatedTimestamp;
    my $RegistrationAttachmentArn =
      $DeleteRegistrationAttachmentResult->RegistrationAttachmentArn;
    my $RegistrationAttachmentId =
      $DeleteRegistrationAttachmentResult->RegistrationAttachmentId;

# Returns a L<Paws::PinpointSMSVoiceV2::DeleteRegistrationAttachmentResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms-voice/DeleteRegistrationAttachment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RegistrationAttachmentId => Str

The unique identifier for the registration attachment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteRegistrationAttachment in L<Paws::PinpointSMSVoiceV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

