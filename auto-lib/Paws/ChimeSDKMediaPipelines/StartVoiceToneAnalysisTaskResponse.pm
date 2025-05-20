
package Paws::ChimeSDKMediaPipelines::StartVoiceToneAnalysisTaskResponse;
  use Moose;
  has VoiceToneAnalysisTask => (is => 'ro', isa => 'Paws::ChimeSDKMediaPipelines::VoiceToneAnalysisTask');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMediaPipelines::StartVoiceToneAnalysisTaskResponse

=head1 ATTRIBUTES


=head2 VoiceToneAnalysisTask => L<Paws::ChimeSDKMediaPipelines::VoiceToneAnalysisTask>

The details of the voice tone analysis task.


=head2 _request_id => Str


=cut

