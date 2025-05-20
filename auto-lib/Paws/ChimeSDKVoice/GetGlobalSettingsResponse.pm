
package Paws::ChimeSDKVoice::GetGlobalSettingsResponse;
  use Moose;
  has VoiceConnector => (is => 'ro', isa => 'Paws::ChimeSDKVoice::VoiceConnectorSettings');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::GetGlobalSettingsResponse

=head1 ATTRIBUTES


=head2 VoiceConnector => L<Paws::ChimeSDKVoice::VoiceConnectorSettings>

The Voice Connector settings.


=head2 _request_id => Str


=cut

