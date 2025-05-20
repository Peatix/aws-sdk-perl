
package Paws::ChimeSDKMediaPipelines::GetMediaCapturePipelineResponse;
  use Moose;
  has MediaCapturePipeline => (is => 'ro', isa => 'Paws::ChimeSDKMediaPipelines::MediaCapturePipeline');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMediaPipelines::GetMediaCapturePipelineResponse

=head1 ATTRIBUTES


=head2 MediaCapturePipeline => L<Paws::ChimeSDKMediaPipelines::MediaCapturePipeline>

The media pipeline object.


=head2 _request_id => Str


=cut

