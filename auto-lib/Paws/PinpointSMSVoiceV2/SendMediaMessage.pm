
package Paws::PinpointSMSVoiceV2::SendMediaMessage;
  use Moose;
  has ConfigurationSetName => (is => 'ro', isa => 'Str');
  has Context => (is => 'ro', isa => 'Paws::PinpointSMSVoiceV2::ContextMap');
  has DestinationPhoneNumber => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has MaxPrice => (is => 'ro', isa => 'Str');
  has MediaUrls => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has MessageBody => (is => 'ro', isa => 'Str');
  has MessageFeedbackEnabled => (is => 'ro', isa => 'Bool');
  has OriginationIdentity => (is => 'ro', isa => 'Str', required => 1);
  has ProtectConfigurationId => (is => 'ro', isa => 'Str');
  has TimeToLive => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SendMediaMessage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointSMSVoiceV2::SendMediaMessageResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::SendMediaMessage - Arguments for method SendMediaMessage on L<Paws::PinpointSMSVoiceV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SendMediaMessage on the
L<Amazon Pinpoint SMS Voice V2|Paws::PinpointSMSVoiceV2> service. Use the attributes of this class
as arguments to method SendMediaMessage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SendMediaMessage.

=head1 SYNOPSIS

    my $sms-voice = Paws->service('PinpointSMSVoiceV2');
    my $SendMediaMessageResult = $sms -voice->SendMediaMessage(
      DestinationPhoneNumber => 'MyPhoneNumber',
      OriginationIdentity    => 'MyMediaMessageOriginationIdentity',
      ConfigurationSetName   => 'MyConfigurationSetNameOrArn',        # OPTIONAL
      Context                => {
        'MyContextKey' =>
          'MyContextValue',    # key: min: 1, max: 100, value: min: 1, max: 800
      },    # OPTIONAL
      DryRun    => 1,               # OPTIONAL
      MaxPrice  => 'MyMaxPrice',    # OPTIONAL
      MediaUrls => [
        'MyMediaUrlValue', ...      # min: 1, max: 2048
      ],    # OPTIONAL
      MessageBody            => 'MyTextMessageBody',                # OPTIONAL
      MessageFeedbackEnabled => 1,                                  # OPTIONAL
      ProtectConfigurationId => 'MyProtectConfigurationIdOrArn',    # OPTIONAL
      TimeToLive             => 1,                                  # OPTIONAL
    );

    # Results:
    my $MessageId = $SendMediaMessageResult->MessageId;

    # Returns a L<Paws::PinpointSMSVoiceV2::SendMediaMessageResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms-voice/SendMediaMessage>

=head1 ATTRIBUTES


=head2 ConfigurationSetName => Str

The name of the configuration set to use. This can be either the
ConfigurationSetName or ConfigurationSetArn.



=head2 Context => L<Paws::PinpointSMSVoiceV2::ContextMap>

You can specify custom data in this field. If you do, that data is
logged to the event destination.



=head2 B<REQUIRED> DestinationPhoneNumber => Str

The destination phone number in E.164 format.



=head2 DryRun => Bool

When set to true, the message is checked and validated, but isn't sent
to the end recipient.



=head2 MaxPrice => Str

The maximum amount that you want to spend, in US dollars, per each MMS
message.



=head2 MediaUrls => ArrayRef[Str|Undef]

An array of URLs to each media file to send.

The media files have to be stored in an S3 bucket. Supported media file
formats are listed in MMS file types, size and character limits
(https://docs.aws.amazon.com/sms-voice/latest/userguide/mms-limitations-character.html).
For more information on creating an S3 bucket and managing objects, see
Creating a bucket
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/create-bucket-overview.html),
Uploading objects
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/upload-objects.html)
in the I<Amazon S3 User Guide>, and Setting up an Amazon S3 bucket for
MMS files
(https://docs.aws.amazon.com/sms-voice/latest/userguide/send-mms-message.html#send-mms-message-bucket)
in the I<Amazon Web Services End User Messaging SMS User Guide>.



=head2 MessageBody => Str

The text body of the message.



=head2 MessageFeedbackEnabled => Bool

Set to true to enable message feedback for the message. When a user
receives the message you need to update the message status using
PutMessageFeedback.



=head2 B<REQUIRED> OriginationIdentity => Str

The origination identity of the message. This can be either the
PhoneNumber, PhoneNumberId, PhoneNumberArn, SenderId, SenderIdArn,
PoolId, or PoolArn.

If you are using a shared AWS End User Messaging SMS and Voice resource
then you must use the full Amazon Resource Name(ARN).



=head2 ProtectConfigurationId => Str

The unique identifier of the protect configuration to use.



=head2 TimeToLive => Int

How long the media message is valid for. By default this is 72 hours.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SendMediaMessage in L<Paws::PinpointSMSVoiceV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

