
package Paws::PinpointSMSVoiceV2::RequestPhoneNumber;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has DeletionProtectionEnabled => (is => 'ro', isa => 'Bool');
  has IsoCountryCode => (is => 'ro', isa => 'Str', required => 1);
  has MessageType => (is => 'ro', isa => 'Str', required => 1);
  has NumberCapabilities => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has NumberType => (is => 'ro', isa => 'Str', required => 1);
  has OptOutListName => (is => 'ro', isa => 'Str');
  has PoolId => (is => 'ro', isa => 'Str');
  has RegistrationId => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::PinpointSMSVoiceV2::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RequestPhoneNumber');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointSMSVoiceV2::RequestPhoneNumberResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::RequestPhoneNumber - Arguments for method RequestPhoneNumber on L<Paws::PinpointSMSVoiceV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RequestPhoneNumber on the
L<Amazon Pinpoint SMS Voice V2|Paws::PinpointSMSVoiceV2> service. Use the attributes of this class
as arguments to method RequestPhoneNumber.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RequestPhoneNumber.

=head1 SYNOPSIS

    my $sms-voice = Paws->service('PinpointSMSVoiceV2');
    my $RequestPhoneNumberResult = $sms -voice->RequestPhoneNumber(
      IsoCountryCode     => 'MyIsoCountryCode',
      MessageType        => 'TRANSACTIONAL',
      NumberCapabilities => [
        'SMS', ...    # values: SMS, VOICE, MMS
      ],
      NumberType                => 'LONG_CODE',
      ClientToken               => 'MyClientToken',            # OPTIONAL
      DeletionProtectionEnabled => 1,                          # OPTIONAL
      OptOutListName            => 'MyOptOutListNameOrArn',    # OPTIONAL
      PoolId                    => 'MyPoolIdOrArn',            # OPTIONAL
      RegistrationId            => 'MyRegistrationIdOrArn',    # OPTIONAL
      Tags                      => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $CreatedTimestamp = $RequestPhoneNumberResult->CreatedTimestamp;
    my $DeletionProtectionEnabled =
      $RequestPhoneNumberResult->DeletionProtectionEnabled;
    my $IsoCountryCode      = $RequestPhoneNumberResult->IsoCountryCode;
    my $MessageType         = $RequestPhoneNumberResult->MessageType;
    my $MonthlyLeasingPrice = $RequestPhoneNumberResult->MonthlyLeasingPrice;
    my $NumberCapabilities  = $RequestPhoneNumberResult->NumberCapabilities;
    my $NumberType          = $RequestPhoneNumberResult->NumberType;
    my $OptOutListName      = $RequestPhoneNumberResult->OptOutListName;
    my $PhoneNumber         = $RequestPhoneNumberResult->PhoneNumber;
    my $PhoneNumberArn      = $RequestPhoneNumberResult->PhoneNumberArn;
    my $PhoneNumberId       = $RequestPhoneNumberResult->PhoneNumberId;
    my $PoolId              = $RequestPhoneNumberResult->PoolId;
    my $RegistrationId      = $RequestPhoneNumberResult->RegistrationId;
    my $SelfManagedOptOutsEnabled =
      $RequestPhoneNumberResult->SelfManagedOptOutsEnabled;
    my $Status            = $RequestPhoneNumberResult->Status;
    my $Tags              = $RequestPhoneNumberResult->Tags;
    my $TwoWayChannelArn  = $RequestPhoneNumberResult->TwoWayChannelArn;
    my $TwoWayChannelRole = $RequestPhoneNumberResult->TwoWayChannelRole;
    my $TwoWayEnabled     = $RequestPhoneNumberResult->TwoWayEnabled;

    # Returns a L<Paws::PinpointSMSVoiceV2::RequestPhoneNumberResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms-voice/RequestPhoneNumber>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If you don't specify a client token, a
randomly generated token is used for the request to ensure idempotency.



=head2 DeletionProtectionEnabled => Bool

By default this is set to false. When set to true the phone number
can't be deleted.



=head2 B<REQUIRED> IsoCountryCode => Str

The two-character code, in ISO 3166-1 alpha-2 format, for the country
or region.



=head2 B<REQUIRED> MessageType => Str

The type of message. Valid values are C<TRANSACTIONAL> for messages
that are critical or time-sensitive and C<PROMOTIONAL> for messages
that aren't critical or time-sensitive.

Valid values are: C<"TRANSACTIONAL">, C<"PROMOTIONAL">

=head2 B<REQUIRED> NumberCapabilities => ArrayRef[Str|Undef]

Indicates if the phone number will be used for text messages, voice
messages, or both.



=head2 B<REQUIRED> NumberType => Str

The type of phone number to request.

When you request a C<SIMULATOR> phone number, you must set
B<MessageType> as C<TRANSACTIONAL>.

Valid values are: C<"LONG_CODE">, C<"TOLL_FREE">, C<"TEN_DLC">, C<"SIMULATOR">

=head2 OptOutListName => Str

The name of the OptOutList to associate with the phone number. You can
use the OptOutListName or OptOutListArn.

If you are using a shared AWS End User Messaging SMS and Voice resource
then you must use the full Amazon Resource Name(ARN).



=head2 PoolId => Str

The pool to associated with the phone number. You can use the PoolId or
PoolArn.

If you are using a shared AWS End User Messaging SMS and Voice resource
then you must use the full Amazon Resource Name(ARN).



=head2 RegistrationId => Str

Use this field to attach your phone number for an external registration
process.



=head2 Tags => ArrayRef[L<Paws::PinpointSMSVoiceV2::Tag>]

An array of tags (key and value pairs) associate with the requested
phone number.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RequestPhoneNumber in L<Paws::PinpointSMSVoiceV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

