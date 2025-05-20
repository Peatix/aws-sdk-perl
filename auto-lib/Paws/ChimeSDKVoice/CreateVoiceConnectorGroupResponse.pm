
package Paws::ChimeSDKVoice::CreateVoiceConnectorGroupResponse;
  use Moose;
  has VoiceConnectorGroup => (is => 'ro', isa => 'Paws::ChimeSDKVoice::VoiceConnectorGroup');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::CreateVoiceConnectorGroupResponse

=head1 ATTRIBUTES


=head2 VoiceConnectorGroup => L<Paws::ChimeSDKVoice::VoiceConnectorGroup>

The details of the Voice Connector group.


=head2 _request_id => Str


=cut

