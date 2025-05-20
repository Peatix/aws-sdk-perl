
package Paws::PinpointSMSVoiceV2::CreateRegistration;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has RegistrationType => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::PinpointSMSVoiceV2::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRegistration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointSMSVoiceV2::CreateRegistrationResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::CreateRegistration - Arguments for method CreateRegistration on L<Paws::PinpointSMSVoiceV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRegistration on the
L<Amazon Pinpoint SMS Voice V2|Paws::PinpointSMSVoiceV2> service. Use the attributes of this class
as arguments to method CreateRegistration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRegistration.

=head1 SYNOPSIS

    my $sms-voice = Paws->service('PinpointSMSVoiceV2');
    my $CreateRegistrationResult = $sms -voice->CreateRegistration(
      RegistrationType => 'MyRegistrationType',
      ClientToken      => 'MyClientToken',        # OPTIONAL
      Tags             => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $AdditionalAttributes = $CreateRegistrationResult->AdditionalAttributes;
    my $CreatedTimestamp     = $CreateRegistrationResult->CreatedTimestamp;
    my $CurrentVersionNumber = $CreateRegistrationResult->CurrentVersionNumber;
    my $RegistrationArn      = $CreateRegistrationResult->RegistrationArn;
    my $RegistrationId       = $CreateRegistrationResult->RegistrationId;
    my $RegistrationStatus   = $CreateRegistrationResult->RegistrationStatus;
    my $RegistrationType     = $CreateRegistrationResult->RegistrationType;
    my $Tags                 = $CreateRegistrationResult->Tags;

    # Returns a L<Paws::PinpointSMSVoiceV2::CreateRegistrationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms-voice/CreateRegistration>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If you don't specify a client token, a
randomly generated token is used for the request to ensure idempotency.



=head2 B<REQUIRED> RegistrationType => Str

The type of registration form to create. The list of
B<RegistrationTypes> can be found using the
DescribeRegistrationTypeDefinitions action.



=head2 Tags => ArrayRef[L<Paws::PinpointSMSVoiceV2::Tag>]

An array of tags (key and value pairs) to associate with the
registration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRegistration in L<Paws::PinpointSMSVoiceV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

