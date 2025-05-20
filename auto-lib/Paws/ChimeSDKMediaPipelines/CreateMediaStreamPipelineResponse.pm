
package Paws::ChimeSDKMediaPipelines::CreateMediaStreamPipelineResponse;
  use Moose;
  has MediaStreamPipeline => (is => 'ro', isa => 'Paws::ChimeSDKMediaPipelines::MediaStreamPipeline');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMediaPipelines::CreateMediaStreamPipelineResponse

=head1 ATTRIBUTES


=head2 MediaStreamPipeline => L<Paws::ChimeSDKMediaPipelines::MediaStreamPipeline>

The requested media pipeline.


=head2 _request_id => Str


=cut

