
package Paws::PinpointSMSVoiceV2::SendDestinationNumberVerificationCode;
  use Moose;
  has ConfigurationSetName => (is => 'ro', isa => 'Str');
  has Context => (is => 'ro', isa => 'Paws::PinpointSMSVoiceV2::ContextMap');
  has DestinationCountryParameters => (is => 'ro', isa => 'Paws::PinpointSMSVoiceV2::DestinationCountryParameters');
  has LanguageCode => (is => 'ro', isa => 'Str');
  has OriginationIdentity => (is => 'ro', isa => 'Str');
  has VerificationChannel => (is => 'ro', isa => 'Str', required => 1);
  has VerifiedDestinationNumberId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SendDestinationNumberVerificationCode');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointSMSVoiceV2::SendDestinationNumberVerificationCodeResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::SendDestinationNumberVerificationCode - Arguments for method SendDestinationNumberVerificationCode on L<Paws::PinpointSMSVoiceV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SendDestinationNumberVerificationCode on the
L<Amazon Pinpoint SMS Voice V2|Paws::PinpointSMSVoiceV2> service. Use the attributes of this class
as arguments to method SendDestinationNumberVerificationCode.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SendDestinationNumberVerificationCode.

=head1 SYNOPSIS

    my $sms-voice = Paws->service('PinpointSMSVoiceV2');
    my $SendDestinationNumberVerificationCodeResult =
      $sms -voice->SendDestinationNumberVerificationCode(
      VerificationChannel         => 'TEXT',
      VerifiedDestinationNumberId => 'MyVerifiedDestinationNumberIdOrArn',
      ConfigurationSetName        => 'MyConfigurationSetNameOrArn',   # OPTIONAL
      Context                     => {
        'MyContextKey' =>
          'MyContextValue',    # key: min: 1, max: 100, value: min: 1, max: 800
      },    # OPTIONAL
      DestinationCountryParameters => {
        'IN_TEMPLATE_ID' => 'MyDestinationCountryParameterValue'
        ,    # key: values: IN_TEMPLATE_ID, IN_ENTITY_ID, value: min: 1, max: 64
      },    # OPTIONAL
      LanguageCode        => 'DE_DE',                  # OPTIONAL
      OriginationIdentity =>
        'MyVerificationMessageOriginationIdentity',    # OPTIONAL
      );

    # Results:
    my $MessageId = $SendDestinationNumberVerificationCodeResult->MessageId;

# Returns a L<Paws::PinpointSMSVoiceV2::SendDestinationNumberVerificationCodeResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms-voice/SendDestinationNumberVerificationCode>

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



=head2 LanguageCode => Str

Choose the language to use for the message.

Valid values are: C<"DE_DE">, C<"EN_GB">, C<"EN_US">, C<"ES_419">, C<"ES_ES">, C<"FR_CA">, C<"FR_FR">, C<"IT_IT">, C<"JA_JP">, C<"KO_KR">, C<"PT_BR">, C<"ZH_CN">, C<"ZH_TW">

=head2 OriginationIdentity => Str

The origination identity of the message. This can be either the
PhoneNumber, PhoneNumberId, PhoneNumberArn, SenderId, SenderIdArn,
PoolId, or PoolArn.

If you are using a shared AWS End User Messaging SMS and Voice resource
then you must use the full Amazon Resource Name(ARN).



=head2 B<REQUIRED> VerificationChannel => Str

Choose to send the verification code as an SMS or voice message.

Valid values are: C<"TEXT">, C<"VOICE">

=head2 B<REQUIRED> VerifiedDestinationNumberId => Str

The unique identifier for the verified destination phone number.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SendDestinationNumberVerificationCode in L<Paws::PinpointSMSVoiceV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

