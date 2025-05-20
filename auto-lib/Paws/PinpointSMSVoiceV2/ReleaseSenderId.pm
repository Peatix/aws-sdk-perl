
package Paws::PinpointSMSVoiceV2::ReleaseSenderId;
  use Moose;
  has IsoCountryCode => (is => 'ro', isa => 'Str', required => 1);
  has SenderId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ReleaseSenderId');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointSMSVoiceV2::ReleaseSenderIdResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::ReleaseSenderId - Arguments for method ReleaseSenderId on L<Paws::PinpointSMSVoiceV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ReleaseSenderId on the
L<Amazon Pinpoint SMS Voice V2|Paws::PinpointSMSVoiceV2> service. Use the attributes of this class
as arguments to method ReleaseSenderId.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ReleaseSenderId.

=head1 SYNOPSIS

    my $sms-voice = Paws->service('PinpointSMSVoiceV2');
    my $ReleaseSenderIdResult = $sms -voice->ReleaseSenderId(
      IsoCountryCode => 'MyIsoCountryCode',
      SenderId       => 'MySenderIdOrArn',

    );

    # Results:
    my $IsoCountryCode      = $ReleaseSenderIdResult->IsoCountryCode;
    my $MessageTypes        = $ReleaseSenderIdResult->MessageTypes;
    my $MonthlyLeasingPrice = $ReleaseSenderIdResult->MonthlyLeasingPrice;
    my $Registered          = $ReleaseSenderIdResult->Registered;
    my $RegistrationId      = $ReleaseSenderIdResult->RegistrationId;
    my $SenderId            = $ReleaseSenderIdResult->SenderId;
    my $SenderIdArn         = $ReleaseSenderIdResult->SenderIdArn;

    # Returns a L<Paws::PinpointSMSVoiceV2::ReleaseSenderIdResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms-voice/ReleaseSenderId>

=head1 ATTRIBUTES


=head2 B<REQUIRED> IsoCountryCode => Str

The two-character code, in ISO 3166-1 alpha-2 format, for the country
or region.



=head2 B<REQUIRED> SenderId => Str

The sender ID to release.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ReleaseSenderId in L<Paws::PinpointSMSVoiceV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

