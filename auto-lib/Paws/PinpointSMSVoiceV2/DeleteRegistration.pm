
package Paws::PinpointSMSVoiceV2::DeleteRegistration;
  use Moose;
  has RegistrationId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteRegistration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointSMSVoiceV2::DeleteRegistrationResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::DeleteRegistration - Arguments for method DeleteRegistration on L<Paws::PinpointSMSVoiceV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteRegistration on the
L<Amazon Pinpoint SMS Voice V2|Paws::PinpointSMSVoiceV2> service. Use the attributes of this class
as arguments to method DeleteRegistration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteRegistration.

=head1 SYNOPSIS

    my $sms-voice = Paws->service('PinpointSMSVoiceV2');
    my $DeleteRegistrationResult = $sms -voice->DeleteRegistration(
      RegistrationId => 'MyRegistrationIdOrArn',

    );

    # Results:
    my $AdditionalAttributes = $DeleteRegistrationResult->AdditionalAttributes;
    my $ApprovedVersionNumber =
      $DeleteRegistrationResult->ApprovedVersionNumber;
    my $CreatedTimestamp     = $DeleteRegistrationResult->CreatedTimestamp;
    my $CurrentVersionNumber = $DeleteRegistrationResult->CurrentVersionNumber;
    my $LatestDeniedVersionNumber =
      $DeleteRegistrationResult->LatestDeniedVersionNumber;
    my $RegistrationArn    = $DeleteRegistrationResult->RegistrationArn;
    my $RegistrationId     = $DeleteRegistrationResult->RegistrationId;
    my $RegistrationStatus = $DeleteRegistrationResult->RegistrationStatus;
    my $RegistrationType   = $DeleteRegistrationResult->RegistrationType;

    # Returns a L<Paws::PinpointSMSVoiceV2::DeleteRegistrationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms-voice/DeleteRegistration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RegistrationId => Str

The unique identifier for the registration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteRegistration in L<Paws::PinpointSMSVoiceV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

