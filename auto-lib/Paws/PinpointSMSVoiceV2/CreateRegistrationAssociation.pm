
package Paws::PinpointSMSVoiceV2::CreateRegistrationAssociation;
  use Moose;
  has RegistrationId => (is => 'ro', isa => 'Str', required => 1);
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRegistrationAssociation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointSMSVoiceV2::CreateRegistrationAssociationResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::CreateRegistrationAssociation - Arguments for method CreateRegistrationAssociation on L<Paws::PinpointSMSVoiceV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRegistrationAssociation on the
L<Amazon Pinpoint SMS Voice V2|Paws::PinpointSMSVoiceV2> service. Use the attributes of this class
as arguments to method CreateRegistrationAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRegistrationAssociation.

=head1 SYNOPSIS

    my $sms-voice = Paws->service('PinpointSMSVoiceV2');
    my $CreateRegistrationAssociationResult =
      $sms -voice->CreateRegistrationAssociation(
      RegistrationId => 'MyRegistrationIdOrArn',
      ResourceId     => 'MyResourceIdOrArn',

      );

    # Results:
    my $IsoCountryCode  = $CreateRegistrationAssociationResult->IsoCountryCode;
    my $PhoneNumber     = $CreateRegistrationAssociationResult->PhoneNumber;
    my $RegistrationArn = $CreateRegistrationAssociationResult->RegistrationArn;
    my $RegistrationId  = $CreateRegistrationAssociationResult->RegistrationId;
    my $RegistrationType =
      $CreateRegistrationAssociationResult->RegistrationType;
    my $ResourceArn  = $CreateRegistrationAssociationResult->ResourceArn;
    my $ResourceId   = $CreateRegistrationAssociationResult->ResourceId;
    my $ResourceType = $CreateRegistrationAssociationResult->ResourceType;

# Returns a L<Paws::PinpointSMSVoiceV2::CreateRegistrationAssociationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms-voice/CreateRegistrationAssociation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RegistrationId => Str

The unique identifier for the registration.



=head2 B<REQUIRED> ResourceId => Str

The unique identifier for the origination identity. For example this
could be a B<PhoneNumberId> or B<SenderId>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRegistrationAssociation in L<Paws::PinpointSMSVoiceV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

