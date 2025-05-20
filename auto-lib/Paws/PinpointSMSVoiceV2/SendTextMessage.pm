
package Paws::PinpointSMSVoiceV2::SendTextMessage;
  use Moose;
  has ConfigurationSetName => (is => 'ro', isa => 'Str');
  has Context => (is => 'ro', isa => 'Paws::PinpointSMSVoiceV2::ContextMap');
  has DestinationCountryParameters => (is => 'ro', isa => 'Paws::PinpointSMSVoiceV2::DestinationCountryParameters');
  has DestinationPhoneNumber => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has Keyword => (is => 'ro', isa => 'Str');
  has MaxPrice => (is => 'ro', isa => 'Str');
  has MessageBody => (is => 'ro', isa => 'Str');
  has MessageFeedbackEnabled => (is => 'ro', isa => 'Bool');
  has MessageType => (is => 'ro', isa => 'Str');
  has OriginationIdentity => (is => 'ro', isa => 'Str');
  has ProtectConfigurationId => (is => 'ro', isa => 'Str');
  has TimeToLive => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SendTextMessage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointSMSVoiceV2::SendTextMessageResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::SendTextMessage - Arguments for method SendTextMessage on L<Paws::PinpointSMSVoiceV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SendTextMessage on the
L<Amazon Pinpoint SMS Voice V2|Paws::PinpointSMSVoiceV2> service. Use the attributes of this class
as arguments to method SendTextMessage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SendTextMessage.

=head1 SYNOPSIS

    my $sms-voice = Paws->service('PinpointSMSVoiceV2');
    my $SendTextMessageResult = $sms -voice->SendTextMessage(
      DestinationPhoneNumber => 'MyPhoneNumber',
      ConfigurationSetName   => 'MyConfigurationSetNameOrArn',    # OPTIONAL
      Context                => {
        'MyContextKey' =>
          'MyContextValue',    # key: min: 1, max: 100, value: min: 1, max: 800
      },    # OPTIONAL
      DestinationCountryParameters => {
        'IN_TEMPLATE_ID' => 'MyDestinationCountryParameterValue'
        ,    # key: values: IN_TEMPLATE_ID, IN_ENTITY_ID, value: min: 1, max: 64
      },    # OPTIONAL
      DryRun                 => 1,                                    # OPTIONAL
      Keyword                => 'MyKeyword',                          # OPTIONAL
      MaxPrice               => 'MyMaxPrice',                         # OPTIONAL
      MessageBody            => 'MyTextMessageBody',                  # OPTIONAL
      MessageFeedbackEnabled => 1,                                    # OPTIONAL
      MessageType            => 'TRANSACTIONAL',                      # OPTIONAL
      OriginationIdentity    => 'MyTextMessageOriginationIdentity',   # OPTIONAL
      ProtectConfigurationId => 'MyProtectConfigurationIdOrArn',      # OPTIONAL
      TimeToLive             => 1,                                    # OPTIONAL
    );

    # Results:
    my $MessageId = $SendTextMessageResult->MessageId;

    # Returns a L<Paws::PinpointSMSVoiceV2::SendTextMessageResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms-voice/SendTextMessage>

=head1 ATTRIBUTES


=head2 ConfigurationSetName => Str

The name of the configuration set to use. This can be either the
ConfigurationSetName or ConfigurationSetArn.



=head2 Context => L<Paws::PinpointSMSVoiceV2::ContextMap>

You can specify custom data in this field. If you do, that data is
logged to the event destination.



=head2 DestinationCountryParameters => L<Paws::PinpointSMSVoiceV2::DestinationCountryParameters>

This field is used for any country-specific registration requirements.
Currently, this setting is only used when you send messages to
recipients in India using a sender ID. For more information see Special
requirements for sending SMS messages to recipients in India
(https://docs.aws.amazon.com/pinpoint/latest/userguide/channels-sms-senderid-india.html).

=over

=item *

C<IN_ENTITY_ID> The entity ID or Principal Entity (PE) ID that you
received after completing the sender ID registration process.

=item *

C<IN_TEMPLATE_ID> The template ID that you received after completing
the sender ID registration process.

Make sure that the Template ID that you specify matches your message
template exactly. If your message doesn't match the template that you
provided during the registration process, the mobile carriers might
reject your message.

=back




=head2 B<REQUIRED> DestinationPhoneNumber => Str

The destination phone number in E.164 format.



=head2 DryRun => Bool

When set to true, the message is checked and validated, but isn't sent
to the end recipient. You are not charged for using C<DryRun>.

The Message Parts per Second (MPS) limit when using C<DryRun> is five.
If your origination identity has a lower MPS limit then the lower MPS
limit is used. For more information about MPS limits, see Message Parts
per Second (MPS) limits
(https://docs.aws.amazon.com/sms-voice/latest/userguide/sms-limitations-mps.html)
in the I<AWS End User Messaging SMS User Guide>..



=head2 Keyword => Str

When you register a short code in the US, you must specify a program
name. If you donE<rsquo>t have a US short code, omit this attribute.



=head2 MaxPrice => Str

The maximum amount that you want to spend, in US dollars, per each text
message. If the calculated amount to send the text message is greater
than C<MaxPrice>, the message is not sent and an error is returned.



=head2 MessageBody => Str

The body of the text message.



=head2 MessageFeedbackEnabled => Bool

Set to true to enable message feedback for the message. When a user
receives the message you need to update the message status using
PutMessageFeedback.



=head2 MessageType => Str

The type of message. Valid values are for messages that are critical or
time-sensitive and PROMOTIONAL for messages that aren't critical or
time-sensitive.

Valid values are: C<"TRANSACTIONAL">, C<"PROMOTIONAL">

=head2 OriginationIdentity => Str

The origination identity of the message. This can be either the
PhoneNumber, PhoneNumberId, PhoneNumberArn, SenderId, SenderIdArn,
PoolId, or PoolArn.

If you are using a shared AWS End User Messaging SMS and Voice resource
then you must use the full Amazon Resource Name(ARN).



=head2 ProtectConfigurationId => Str

The unique identifier for the protect configuration.



=head2 TimeToLive => Int

How long the text message is valid for, in seconds. By default this is
72 hours. If the messages isn't handed off before the TTL expires we
stop attempting to hand off the message and return C<TTL_EXPIRED>
event.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SendTextMessage in L<Paws::PinpointSMSVoiceV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

