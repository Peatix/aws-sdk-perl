
package Paws::ChimeSDKVoice::GetVoiceConnectorResponse;
  use Moose;
  has VoiceConnector => (is => 'ro', isa => 'Paws::ChimeSDKVoice::VoiceConnector');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::GetVoiceConnectorResponse

=head1 ATTRIBUTES


=head2 VoiceConnector => L<Paws::ChimeSDKVoice::VoiceConnector>

The Voice Connector details.


=head2 _request_id => Str


=cut

