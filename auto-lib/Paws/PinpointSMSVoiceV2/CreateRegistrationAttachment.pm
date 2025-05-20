
package Paws::PinpointSMSVoiceV2::CreateRegistrationAttachment;
  use Moose;
  has AttachmentBody => (is => 'ro', isa => 'Str');
  has AttachmentUrl => (is => 'ro', isa => 'Str');
  has ClientToken => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::PinpointSMSVoiceV2::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRegistrationAttachment');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointSMSVoiceV2::CreateRegistrationAttachmentResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::CreateRegistrationAttachment - Arguments for method CreateRegistrationAttachment on L<Paws::PinpointSMSVoiceV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRegistrationAttachment on the
L<Amazon Pinpoint SMS Voice V2|Paws::PinpointSMSVoiceV2> service. Use the attributes of this class
as arguments to method CreateRegistrationAttachment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRegistrationAttachment.

=head1 SYNOPSIS

    my $sms-voice = Paws->service('PinpointSMSVoiceV2');
    my $CreateRegistrationAttachmentResult =
      $sms -voice->CreateRegistrationAttachment(
      AttachmentBody => 'BlobAttachmentBody',    # OPTIONAL
      AttachmentUrl  => 'MyAttachmentUrl',       # OPTIONAL
      ClientToken    => 'MyClientToken',         # OPTIONAL
      Tags           => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $AttachmentStatus =
      $CreateRegistrationAttachmentResult->AttachmentStatus;
    my $CreatedTimestamp =
      $CreateRegistrationAttachmentResult->CreatedTimestamp;
    my $RegistrationAttachmentArn =
      $CreateRegistrationAttachmentResult->RegistrationAttachmentArn;
    my $RegistrationAttachmentId =
      $CreateRegistrationAttachmentResult->RegistrationAttachmentId;
    my $Tags = $CreateRegistrationAttachmentResult->Tags;

# Returns a L<Paws::PinpointSMSVoiceV2::CreateRegistrationAttachmentResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms-voice/CreateRegistrationAttachment>

=head1 ATTRIBUTES


=head2 AttachmentBody => Str

The registration file to upload. The maximum file size is 500KB and
valid file extensions are PDF, JPEG and PNG.



=head2 AttachmentUrl => Str

Registration files have to be stored in an Amazon S3 bucket. The URI to
use when sending is in the format C<s3://BucketName/FileName>.



=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If you don't specify a client token, a
randomly generated token is used for the request to ensure idempotency.



=head2 Tags => ArrayRef[L<Paws::PinpointSMSVoiceV2::Tag>]

An array of tags (key and value pairs) to associate with the
registration attachment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRegistrationAttachment in L<Paws::PinpointSMSVoiceV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

