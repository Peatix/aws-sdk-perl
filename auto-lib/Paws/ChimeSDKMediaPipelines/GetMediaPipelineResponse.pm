
package Paws::ChimeSDKMediaPipelines::GetMediaPipelineResponse;
  use Moose;
  has MediaPipeline => (is => 'ro', isa => 'Paws::ChimeSDKMediaPipelines::MediaPipeline');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMediaPipelines::GetMediaPipelineResponse

=head1 ATTRIBUTES


=head2 MediaPipeline => L<Paws::ChimeSDKMediaPipelines::MediaPipeline>

The media pipeline object.


=head2 _request_id => Str


=cut

