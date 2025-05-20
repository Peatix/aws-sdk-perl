
package Paws::ChimeSDKVoice::StartVoiceToneAnalysisTaskResponse;
  use Moose;
  has VoiceToneAnalysisTask => (is => 'ro', isa => 'Paws::ChimeSDKVoice::VoiceToneAnalysisTask');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::StartVoiceToneAnalysisTaskResponse

=head1 ATTRIBUTES


=head2 VoiceToneAnalysisTask => L<Paws::ChimeSDKVoice::VoiceToneAnalysisTask>

The details of the voice tone analysis task.


=head2 _request_id => Str


=cut

