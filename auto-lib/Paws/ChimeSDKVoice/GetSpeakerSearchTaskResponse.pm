
package Paws::ChimeSDKVoice::GetSpeakerSearchTaskResponse;
  use Moose;
  has SpeakerSearchTask => (is => 'ro', isa => 'Paws::ChimeSDKVoice::SpeakerSearchTask');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::GetSpeakerSearchTaskResponse

=head1 ATTRIBUTES


=head2 SpeakerSearchTask => L<Paws::ChimeSDKVoice::SpeakerSearchTask>

The details of the speaker search task.


=head2 _request_id => Str


=cut

