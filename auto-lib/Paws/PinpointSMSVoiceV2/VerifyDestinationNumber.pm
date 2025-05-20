
package Paws::PinpointSMSVoiceV2::VerifyDestinationNumber;
  use Moose;
  has VerificationCode => (is => 'ro', isa => 'Str', required => 1);
  has VerifiedDestinationNumberId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'VerifyDestinationNumber');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointSMSVoiceV2::VerifyDestinationNumberResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::VerifyDestinationNumber - Arguments for method VerifyDestinationNumber on L<Paws::PinpointSMSVoiceV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method VerifyDestinationNumber on the
L<Amazon Pinpoint SMS Voice V2|Paws::PinpointSMSVoiceV2> service. Use the attributes of this class
as arguments to method VerifyDestinationNumber.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to VerifyDestinationNumber.

=head1 SYNOPSIS

    my $sms-voice = Paws->service('PinpointSMSVoiceV2');
    my $VerifyDestinationNumberResult = $sms -voice->VerifyDestinationNumber(
      VerificationCode            => 'MyVerificationCode',
      VerifiedDestinationNumberId => 'MyVerifiedDestinationNumberIdOrArn',

    );

    # Results:
    my $CreatedTimestamp = $VerifyDestinationNumberResult->CreatedTimestamp;
    my $DestinationPhoneNumber =
      $VerifyDestinationNumberResult->DestinationPhoneNumber;
    my $Status = $VerifyDestinationNumberResult->Status;
    my $VerifiedDestinationNumberArn =
      $VerifyDestinationNumberResult->VerifiedDestinationNumberArn;
    my $VerifiedDestinationNumberId =
      $VerifyDestinationNumberResult->VerifiedDestinationNumberId;

  # Returns a L<Paws::PinpointSMSVoiceV2::VerifyDestinationNumberResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms-voice/VerifyDestinationNumber>

=head1 ATTRIBUTES


=head2 B<REQUIRED> VerificationCode => Str

The verification code that was received by the verified destination
phone number.



=head2 B<REQUIRED> VerifiedDestinationNumberId => Str

The unique identifier for the verififed destination phone number.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method VerifyDestinationNumber in L<Paws::PinpointSMSVoiceV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

