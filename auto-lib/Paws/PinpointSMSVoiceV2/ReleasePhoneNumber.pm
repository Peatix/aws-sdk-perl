
package Paws::PinpointSMSVoiceV2::ReleasePhoneNumber;
  use Moose;
  has PhoneNumberId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ReleasePhoneNumber');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointSMSVoiceV2::ReleasePhoneNumberResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::ReleasePhoneNumber - Arguments for method ReleasePhoneNumber on L<Paws::PinpointSMSVoiceV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ReleasePhoneNumber on the
L<Amazon Pinpoint SMS Voice V2|Paws::PinpointSMSVoiceV2> service. Use the attributes of this class
as arguments to method ReleasePhoneNumber.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ReleasePhoneNumber.

=head1 SYNOPSIS

    my $sms-voice = Paws->service('PinpointSMSVoiceV2');
    my $ReleasePhoneNumberResult = $sms -voice->ReleasePhoneNumber(
      PhoneNumberId => 'MyPhoneNumberIdOrArn',

    );

    # Results:
    my $CreatedTimestamp    = $ReleasePhoneNumberResult->CreatedTimestamp;
    my $IsoCountryCode      = $ReleasePhoneNumberResult->IsoCountryCode;
    my $MessageType         = $ReleasePhoneNumberResult->MessageType;
    my $MonthlyLeasingPrice = $ReleasePhoneNumberResult->MonthlyLeasingPrice;
    my $NumberCapabilities  = $ReleasePhoneNumberResult->NumberCapabilities;
    my $NumberType          = $ReleasePhoneNumberResult->NumberType;
    my $OptOutListName      = $ReleasePhoneNumberResult->OptOutListName;
    my $PhoneNumber         = $ReleasePhoneNumberResult->PhoneNumber;
    my $PhoneNumberArn      = $ReleasePhoneNumberResult->PhoneNumberArn;
    my $PhoneNumberId       = $ReleasePhoneNumberResult->PhoneNumberId;
    my $RegistrationId      = $ReleasePhoneNumberResult->RegistrationId;
    my $SelfManagedOptOutsEnabled =
      $ReleasePhoneNumberResult->SelfManagedOptOutsEnabled;
    my $Status            = $ReleasePhoneNumberResult->Status;
    my $TwoWayChannelArn  = $ReleasePhoneNumberResult->TwoWayChannelArn;
    my $TwoWayChannelRole = $ReleasePhoneNumberResult->TwoWayChannelRole;
    my $TwoWayEnabled     = $ReleasePhoneNumberResult->TwoWayEnabled;

    # Returns a L<Paws::PinpointSMSVoiceV2::ReleasePhoneNumberResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms-voice/ReleasePhoneNumber>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PhoneNumberId => Str

The PhoneNumberId or PhoneNumberArn of the phone number to release. You
can use DescribePhoneNumbers to get the values for PhoneNumberId and
PhoneNumberArn.

If you are using a shared AWS End User Messaging SMS and Voice resource
then you must use the full Amazon Resource Name(ARN).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ReleasePhoneNumber in L<Paws::PinpointSMSVoiceV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

