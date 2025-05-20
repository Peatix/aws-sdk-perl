
package Paws::ChimeSDKVoice::PutVoiceConnectorExternalSystemsConfiguration;
  use Moose;
  has ContactCenterSystemTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SessionBorderControllerTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has VoiceConnectorId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'voiceConnectorId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutVoiceConnectorExternalSystemsConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/voice-connectors/{voiceConnectorId}/external-systems-configuration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKVoice::PutVoiceConnectorExternalSystemsConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::PutVoiceConnectorExternalSystemsConfiguration - Arguments for method PutVoiceConnectorExternalSystemsConfiguration on L<Paws::ChimeSDKVoice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutVoiceConnectorExternalSystemsConfiguration on the
L<Amazon Chime SDK Voice|Paws::ChimeSDKVoice> service. Use the attributes of this class
as arguments to method PutVoiceConnectorExternalSystemsConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutVoiceConnectorExternalSystemsConfiguration.

=head1 SYNOPSIS

    my $voice-chime = Paws->service('ChimeSDKVoice');
    my $PutVoiceConnectorExternalSystemsConfigurationResponse =
      $voice -chime->PutVoiceConnectorExternalSystemsConfiguration(
      VoiceConnectorId         => 'MyNonEmptyString128',
      ContactCenterSystemTypes => [
        'GENESYS_ENGAGE_ON_PREMISES',
        ... # values: GENESYS_ENGAGE_ON_PREMISES, AVAYA_AURA_CALL_CENTER_ELITE, AVAYA_AURA_CONTACT_CENTER, CISCO_UNIFIED_CONTACT_CENTER_ENTERPRISE
      ],    # OPTIONAL
      SessionBorderControllerTypes => [
        'RIBBON_SBC',
        ... # values: RIBBON_SBC, ORACLE_ACME_PACKET_SBC, AVAYA_SBCE, CISCO_UNIFIED_BORDER_ELEMENT, AUDIOCODES_MEDIANT_SBC
      ],    # OPTIONAL
      );

    # Results:
    my $ExternalSystemsConfiguration =
      $PutVoiceConnectorExternalSystemsConfigurationResponse
      ->ExternalSystemsConfiguration;

# Returns a L<Paws::ChimeSDKVoice::PutVoiceConnectorExternalSystemsConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/voice-chime/PutVoiceConnectorExternalSystemsConfiguration>

=head1 ATTRIBUTES


=head2 ContactCenterSystemTypes => ArrayRef[Str|Undef]

The contact center system to use.



=head2 SessionBorderControllerTypes => ArrayRef[Str|Undef]

The session border controllers to use.



=head2 B<REQUIRED> VoiceConnectorId => Str

The ID of the Voice Connector for which to add the external system
configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutVoiceConnectorExternalSystemsConfiguration in L<Paws::ChimeSDKVoice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

