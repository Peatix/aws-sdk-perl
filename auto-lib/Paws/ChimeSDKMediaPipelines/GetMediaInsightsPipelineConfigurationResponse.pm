
package Paws::ChimeSDKMediaPipelines::GetMediaInsightsPipelineConfigurationResponse;
  use Moose;
  has MediaInsightsPipelineConfiguration => (is => 'ro', isa => 'Paws::ChimeSDKMediaPipelines::MediaInsightsPipelineConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMediaPipelines::GetMediaInsightsPipelineConfigurationResponse

=head1 ATTRIBUTES


=head2 MediaInsightsPipelineConfiguration => L<Paws::ChimeSDKMediaPipelines::MediaInsightsPipelineConfiguration>

The requested media insights pipeline configuration.


=head2 _request_id => Str


=cut

