
package Paws::ChimeSDKVoice::CreateVoiceProfileResponse;
  use Moose;
  has VoiceProfile => (is => 'ro', isa => 'Paws::ChimeSDKVoice::VoiceProfile');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::CreateVoiceProfileResponse

=head1 ATTRIBUTES


=head2 VoiceProfile => L<Paws::ChimeSDKVoice::VoiceProfile>

The requested voice profile.


=head2 _request_id => Str


=cut

