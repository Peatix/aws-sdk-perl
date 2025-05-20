
package Paws::ChimeSDKMediaPipelines::CreateMediaLiveConnectorPipelineResponse;
  use Moose;
  has MediaLiveConnectorPipeline => (is => 'ro', isa => 'Paws::ChimeSDKMediaPipelines::MediaLiveConnectorPipeline');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMediaPipelines::CreateMediaLiveConnectorPipelineResponse

=head1 ATTRIBUTES


=head2 MediaLiveConnectorPipeline => L<Paws::ChimeSDKMediaPipelines::MediaLiveConnectorPipeline>

The new media live connector pipeline.


=head2 _request_id => Str


=cut

