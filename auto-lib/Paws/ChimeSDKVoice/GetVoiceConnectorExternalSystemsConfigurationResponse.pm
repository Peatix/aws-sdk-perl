
package Paws::ChimeSDKVoice::GetVoiceConnectorExternalSystemsConfigurationResponse;
  use Moose;
  has ExternalSystemsConfiguration => (is => 'ro', isa => 'Paws::ChimeSDKVoice::ExternalSystemsConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::GetVoiceConnectorExternalSystemsConfigurationResponse

=head1 ATTRIBUTES


=head2 ExternalSystemsConfiguration => L<Paws::ChimeSDKVoice::ExternalSystemsConfiguration>

An object that contains information about an external systems
configuration for a Voice Connector.


=head2 _request_id => Str


=cut

