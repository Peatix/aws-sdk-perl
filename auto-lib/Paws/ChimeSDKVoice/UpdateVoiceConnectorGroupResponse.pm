
package Paws::ChimeSDKVoice::UpdateVoiceConnectorGroupResponse;
  use Moose;
  has VoiceConnectorGroup => (is => 'ro', isa => 'Paws::ChimeSDKVoice::VoiceConnectorGroup');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::UpdateVoiceConnectorGroupResponse

=head1 ATTRIBUTES


=head2 VoiceConnectorGroup => L<Paws::ChimeSDKVoice::VoiceConnectorGroup>

The updated Voice Connector group.


=head2 _request_id => Str


=cut

