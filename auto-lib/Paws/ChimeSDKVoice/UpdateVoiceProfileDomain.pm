
package Paws::ChimeSDKVoice::UpdateVoiceProfileDomain;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has VoiceProfileDomainId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'VoiceProfileDomainId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateVoiceProfileDomain');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/voice-profile-domains/{VoiceProfileDomainId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKVoice::UpdateVoiceProfileDomainResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::UpdateVoiceProfileDomain - Arguments for method UpdateVoiceProfileDomain on L<Paws::ChimeSDKVoice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateVoiceProfileDomain on the
L<Amazon Chime SDK Voice|Paws::ChimeSDKVoice> service. Use the attributes of this class
as arguments to method UpdateVoiceProfileDomain.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateVoiceProfileDomain.

=head1 SYNOPSIS

    my $voice-chime = Paws->service('ChimeSDKVoice');
    my $UpdateVoiceProfileDomainResponse =
      $voice -chime->UpdateVoiceProfileDomain(
      VoiceProfileDomainId => 'MyNonEmptyString256',
      Description          => 'MyVoiceProfileDomainDescription',    # OPTIONAL
      Name                 => 'MyVoiceProfileDomainName',           # OPTIONAL
      );

    # Results:
    my $VoiceProfileDomain =
      $UpdateVoiceProfileDomainResponse->VoiceProfileDomain;

    # Returns a L<Paws::ChimeSDKVoice::UpdateVoiceProfileDomainResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/voice-chime/UpdateVoiceProfileDomain>

=head1 ATTRIBUTES


=head2 Description => Str

The description of the voice profile domain.



=head2 Name => Str

The name of the voice profile domain.



=head2 B<REQUIRED> VoiceProfileDomainId => Str

The domain ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateVoiceProfileDomain in L<Paws::ChimeSDKVoice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

