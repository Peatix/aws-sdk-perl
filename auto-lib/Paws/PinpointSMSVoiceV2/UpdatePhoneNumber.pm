
package Paws::PinpointSMSVoiceV2::UpdatePhoneNumber;
  use Moose;
  has DeletionProtectionEnabled => (is => 'ro', isa => 'Bool');
  has OptOutListName => (is => 'ro', isa => 'Str');
  has PhoneNumberId => (is => 'ro', isa => 'Str', required => 1);
  has SelfManagedOptOutsEnabled => (is => 'ro', isa => 'Bool');
  has TwoWayChannelArn => (is => 'ro', isa => 'Str');
  has TwoWayChannelRole => (is => 'ro', isa => 'Str');
  has TwoWayEnabled => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdatePhoneNumber');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointSMSVoiceV2::UpdatePhoneNumberResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::UpdatePhoneNumber - Arguments for method UpdatePhoneNumber on L<Paws::PinpointSMSVoiceV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdatePhoneNumber on the
L<Amazon Pinpoint SMS Voice V2|Paws::PinpointSMSVoiceV2> service. Use the attributes of this class
as arguments to method UpdatePhoneNumber.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdatePhoneNumber.

=head1 SYNOPSIS

    my $sms-voice = Paws->service('PinpointSMSVoiceV2');
    my $UpdatePhoneNumberResult = $sms -voice->UpdatePhoneNumber(
      PhoneNumberId             => 'MyPhoneNumberIdOrArn',
      DeletionProtectionEnabled => 1,                          # OPTIONAL
      OptOutListName            => 'MyOptOutListNameOrArn',    # OPTIONAL
      SelfManagedOptOutsEnabled => 1,                          # OPTIONAL
      TwoWayChannelArn          => 'MyTwoWayChannelArn',       # OPTIONAL
      TwoWayChannelRole         => 'MyIamRoleArn',             # OPTIONAL
      TwoWayEnabled             => 1,                          # OPTIONAL
    );

    # Results:
    my $CreatedTimestamp = $UpdatePhoneNumberResult->CreatedTimestamp;
    my $DeletionProtectionEnabled =
      $UpdatePhoneNumberResult->DeletionProtectionEnabled;
    my $IsoCountryCode      = $UpdatePhoneNumberResult->IsoCountryCode;
    my $MessageType         = $UpdatePhoneNumberResult->MessageType;
    my $MonthlyLeasingPrice = $UpdatePhoneNumberResult->MonthlyLeasingPrice;
    my $NumberCapabilities  = $UpdatePhoneNumberResult->NumberCapabilities;
    my $NumberType          = $UpdatePhoneNumberResult->NumberType;
    my $OptOutListName      = $UpdatePhoneNumberResult->OptOutListName;
    my $PhoneNumber         = $UpdatePhoneNumberResult->PhoneNumber;
    my $PhoneNumberArn      = $UpdatePhoneNumberResult->PhoneNumberArn;
    my $PhoneNumberId       = $UpdatePhoneNumberResult->PhoneNumberId;
    my $RegistrationId      = $UpdatePhoneNumberResult->RegistrationId;
    my $SelfManagedOptOutsEnabled =
      $UpdatePhoneNumberResult->SelfManagedOptOutsEnabled;
    my $Status            = $UpdatePhoneNumberResult->Status;
    my $TwoWayChannelArn  = $UpdatePhoneNumberResult->TwoWayChannelArn;
    my $TwoWayChannelRole = $UpdatePhoneNumberResult->TwoWayChannelRole;
    my $TwoWayEnabled     = $UpdatePhoneNumberResult->TwoWayEnabled;

    # Returns a L<Paws::PinpointSMSVoiceV2::UpdatePhoneNumberResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms-voice/UpdatePhoneNumber>

=head1 ATTRIBUTES


=head2 DeletionProtectionEnabled => Bool

By default this is set to false. When set to true the phone number
can't be deleted.



=head2 OptOutListName => Str

The OptOutList to add the phone number to. Valid values for this field
can be either the OutOutListName or OutOutListArn.



=head2 B<REQUIRED> PhoneNumberId => Str

The unique identifier of the phone number. Valid values for this field
can be either the PhoneNumberId or PhoneNumberArn.

If you are using a shared AWS End User Messaging SMS and Voice resource
then you must use the full Amazon Resource Name(ARN).



=head2 SelfManagedOptOutsEnabled => Bool

By default this is set to false. When an end recipient sends a message
that begins with HELP or STOP to one of your dedicated numbers, AWS End
User Messaging SMS and Voice automatically replies with a customizable
message and adds the end recipient to the OptOutList. When set to true
you're responsible for responding to HELP and STOP requests. You're
also responsible for tracking and honoring opt-out requests.



=head2 TwoWayChannelArn => Str

The Amazon Resource Name (ARN) of the two way channel.



=head2 TwoWayChannelRole => Str

An optional IAM Role Arn for a service to assume, to be able to post
inbound SMS messages.



=head2 TwoWayEnabled => Bool

By default this is set to false. When set to true you can receive
incoming text messages from your end recipients.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdatePhoneNumber in L<Paws::PinpointSMSVoiceV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

