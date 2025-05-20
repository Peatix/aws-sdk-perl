
package Paws::ChimeSDKVoice::GetVoiceConnectorExternalSystemsConfiguration;
  use Moose;
  has VoiceConnectorId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'voiceConnectorId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetVoiceConnectorExternalSystemsConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/voice-connectors/{voiceConnectorId}/external-systems-configuration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKVoice::GetVoiceConnectorExternalSystemsConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::GetVoiceConnectorExternalSystemsConfiguration - Arguments for method GetVoiceConnectorExternalSystemsConfiguration on L<Paws::ChimeSDKVoice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetVoiceConnectorExternalSystemsConfiguration on the
L<Amazon Chime SDK Voice|Paws::ChimeSDKVoice> service. Use the attributes of this class
as arguments to method GetVoiceConnectorExternalSystemsConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetVoiceConnectorExternalSystemsConfiguration.

=head1 SYNOPSIS

    my $voice-chime = Paws->service('ChimeSDKVoice');
    my $GetVoiceConnectorExternalSystemsConfigurationResponse =
      $voice -chime->GetVoiceConnectorExternalSystemsConfiguration(
      VoiceConnectorId => 'MyNonEmptyString',

      );

    # Results:
    my $ExternalSystemsConfiguration =
      $GetVoiceConnectorExternalSystemsConfigurationResponse
      ->ExternalSystemsConfiguration;

# Returns a L<Paws::ChimeSDKVoice::GetVoiceConnectorExternalSystemsConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/voice-chime/GetVoiceConnectorExternalSystemsConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> VoiceConnectorId => Str

The ID of the Voice Connector for which to return information about the
external system configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetVoiceConnectorExternalSystemsConfiguration in L<Paws::ChimeSDKVoice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

