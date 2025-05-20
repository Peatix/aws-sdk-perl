
package Paws::ChimeSDKVoice::UpdateVoiceProfileResponse;
  use Moose;
  has VoiceProfile => (is => 'ro', isa => 'Paws::ChimeSDKVoice::VoiceProfile');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::UpdateVoiceProfileResponse

=head1 ATTRIBUTES


=head2 VoiceProfile => L<Paws::ChimeSDKVoice::VoiceProfile>

The updated voice profile settings.


=head2 _request_id => Str


=cut

