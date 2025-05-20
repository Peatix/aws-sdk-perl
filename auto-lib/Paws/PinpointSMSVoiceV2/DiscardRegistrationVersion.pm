
package Paws::PinpointSMSVoiceV2::DiscardRegistrationVersion;
  use Moose;
  has RegistrationId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DiscardRegistrationVersion');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointSMSVoiceV2::DiscardRegistrationVersionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::DiscardRegistrationVersion - Arguments for method DiscardRegistrationVersion on L<Paws::PinpointSMSVoiceV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DiscardRegistrationVersion on the
L<Amazon Pinpoint SMS Voice V2|Paws::PinpointSMSVoiceV2> service. Use the attributes of this class
as arguments to method DiscardRegistrationVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DiscardRegistrationVersion.

=head1 SYNOPSIS

    my $sms-voice = Paws->service('PinpointSMSVoiceV2');
    my $DiscardRegistrationVersionResult =
      $sms -voice->DiscardRegistrationVersion(
      RegistrationId => 'MyRegistrationIdOrArn',

      );

    # Results:
    my $RegistrationArn = $DiscardRegistrationVersionResult->RegistrationArn;
    my $RegistrationId  = $DiscardRegistrationVersionResult->RegistrationId;
    my $RegistrationVersionStatus =
      $DiscardRegistrationVersionResult->RegistrationVersionStatus;
    my $RegistrationVersionStatusHistory =
      $DiscardRegistrationVersionResult->RegistrationVersionStatusHistory;
    my $VersionNumber = $DiscardRegistrationVersionResult->VersionNumber;

# Returns a L<Paws::PinpointSMSVoiceV2::DiscardRegistrationVersionResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms-voice/DiscardRegistrationVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RegistrationId => Str

The unique identifier for the registration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DiscardRegistrationVersion in L<Paws::PinpointSMSVoiceV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

