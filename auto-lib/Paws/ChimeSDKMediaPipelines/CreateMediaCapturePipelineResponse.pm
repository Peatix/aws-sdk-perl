
package Paws::ChimeSDKMediaPipelines::CreateMediaCapturePipelineResponse;
  use Moose;
  has MediaCapturePipeline => (is => 'ro', isa => 'Paws::ChimeSDKMediaPipelines::MediaCapturePipeline');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMediaPipelines::CreateMediaCapturePipelineResponse

=head1 ATTRIBUTES


=head2 MediaCapturePipeline => L<Paws::ChimeSDKMediaPipelines::MediaCapturePipeline>

A media pipeline object, the ID, source type, source ARN, sink type,
and sink ARN of a media pipeline object.


=head2 _request_id => Str


=cut

