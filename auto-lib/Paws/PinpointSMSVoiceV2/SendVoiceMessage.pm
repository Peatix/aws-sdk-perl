
package Paws::PinpointSMSVoiceV2::SendVoiceMessage;
  use Moose;
  has ConfigurationSetName => (is => 'ro', isa => 'Str');
  has Context => (is => 'ro', isa => 'Paws::PinpointSMSVoiceV2::ContextMap');
  has DestinationPhoneNumber => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has MaxPricePerMinute => (is => 'ro', isa => 'Str');
  has MessageBody => (is => 'ro', isa => 'Str');
  has MessageBodyTextType => (is => 'ro', isa => 'Str');
  has MessageFeedbackEnabled => (is => 'ro', isa => 'Bool');
  has OriginationIdentity => (is => 'ro', isa => 'Str', required => 1);
  has ProtectConfigurationId => (is => 'ro', isa => 'Str');
  has TimeToLive => (is => 'ro', isa => 'Int');
  has VoiceId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SendVoiceMessage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointSMSVoiceV2::SendVoiceMessageResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::SendVoiceMessage - Arguments for method SendVoiceMessage on L<Paws::PinpointSMSVoiceV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SendVoiceMessage on the
L<Amazon Pinpoint SMS Voice V2|Paws::PinpointSMSVoiceV2> service. Use the attributes of this class
as arguments to method SendVoiceMessage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SendVoiceMessage.

=head1 SYNOPSIS

    my $sms-voice = Paws->service('PinpointSMSVoiceV2');
    my $SendVoiceMessageResult = $sms -voice->SendVoiceMessage(
      DestinationPhoneNumber => 'MyPhoneNumber',
      OriginationIdentity    => 'MyVoiceMessageOriginationIdentity',
      ConfigurationSetName   => 'MyConfigurationSetNameOrArn',        # OPTIONAL
      Context                => {
        'MyContextKey' =>
          'MyContextValue',    # key: min: 1, max: 100, value: min: 1, max: 800
      },    # OPTIONAL
      DryRun                 => 1,                                  # OPTIONAL
      MaxPricePerMinute      => 'MyMaxPrice',                       # OPTIONAL
      MessageBody            => 'MyVoiceMessageBody',               # OPTIONAL
      MessageBodyTextType    => 'TEXT',                             # OPTIONAL
      MessageFeedbackEnabled => 1,                                  # OPTIONAL
      ProtectConfigurationId => 'MyProtectConfigurationIdOrArn',    # OPTIONAL
      TimeToLive             => 1,                                  # OPTIONAL
      VoiceId                => 'AMY',                              # OPTIONAL
    );

    # Results:
    my $MessageId = $SendVoiceMessageResult->MessageId;

    # Returns a L<Paws::PinpointSMSVoiceV2::SendVoiceMessageResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms-voice/SendVoiceMessage>

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



=head2 MaxPricePerMinute => Str

The maximum amount to spend per voice message, in US dollars.



=head2 MessageBody => Str

The text to convert to a voice message.



=head2 MessageBodyTextType => Str

Specifies if the MessageBody field contains text or speech synthesis
markup language (SSML)
(https://docs.aws.amazon.com/polly/latest/dg/what-is.html).

=over

=item *

TEXT: This is the default value. When used the maximum character limit
is 3000.

=item *

SSML: When used the maximum character limit is 6000 including SSML
tagging.

=back


Valid values are: C<"TEXT">, C<"SSML">

=head2 MessageFeedbackEnabled => Bool

Set to true to enable message feedback for the message. When a user
receives the message you need to update the message status using
PutMessageFeedback.



=head2 B<REQUIRED> OriginationIdentity => Str

The origination identity to use for the voice call. This can be the
PhoneNumber, PhoneNumberId, PhoneNumberArn, PoolId, or PoolArn.

If you are using a shared AWS End User Messaging SMS and Voice resource
then you must use the full Amazon Resource Name(ARN).



=head2 ProtectConfigurationId => Str

The unique identifier for the protect configuration.



=head2 TimeToLive => Int

How long the voice message is valid for. By default this is 72 hours.



=head2 VoiceId => Str

The voice for the Amazon Polly
(https://docs.aws.amazon.com/polly/latest/dg/what-is.html) service to
use. By default this is set to "MATTHEW".

Valid values are: C<"AMY">, C<"ASTRID">, C<"BIANCA">, C<"BRIAN">, C<"CAMILA">, C<"CARLA">, C<"CARMEN">, C<"CELINE">, C<"CHANTAL">, C<"CONCHITA">, C<"CRISTIANO">, C<"DORA">, C<"EMMA">, C<"ENRIQUE">, C<"EWA">, C<"FILIZ">, C<"GERAINT">, C<"GIORGIO">, C<"GWYNETH">, C<"HANS">, C<"INES">, C<"IVY">, C<"JACEK">, C<"JAN">, C<"JOANNA">, C<"JOEY">, C<"JUSTIN">, C<"KARL">, C<"KENDRA">, C<"KIMBERLY">, C<"LEA">, C<"LIV">, C<"LOTTE">, C<"LUCIA">, C<"LUPE">, C<"MADS">, C<"MAJA">, C<"MARLENE">, C<"MATHIEU">, C<"MATTHEW">, C<"MAXIM">, C<"MIA">, C<"MIGUEL">, C<"MIZUKI">, C<"NAJA">, C<"NICOLE">, C<"PENELOPE">, C<"RAVEENA">, C<"RICARDO">, C<"RUBEN">, C<"RUSSELL">, C<"SALLI">, C<"SEOYEON">, C<"TAKUMI">, C<"TATYANA">, C<"VICKI">, C<"VITORIA">, C<"ZEINA">, C<"ZHIYU">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SendVoiceMessage in L<Paws::PinpointSMSVoiceV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

