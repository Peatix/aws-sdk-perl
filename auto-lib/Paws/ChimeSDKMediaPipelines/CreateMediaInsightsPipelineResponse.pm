
package Paws::ChimeSDKMediaPipelines::CreateMediaInsightsPipelineResponse;
  use Moose;
  has MediaInsightsPipeline => (is => 'ro', isa => 'Paws::ChimeSDKMediaPipelines::MediaInsightsPipeline', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMediaPipelines::CreateMediaInsightsPipelineResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> MediaInsightsPipeline => L<Paws::ChimeSDKMediaPipelines::MediaInsightsPipeline>

The media insights pipeline object.


=head2 _request_id => Str


=cut

