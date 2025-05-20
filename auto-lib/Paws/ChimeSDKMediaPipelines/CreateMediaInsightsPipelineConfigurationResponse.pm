
package Paws::ChimeSDKMediaPipelines::CreateMediaInsightsPipelineConfigurationResponse;
  use Moose;
  has MediaInsightsPipelineConfiguration => (is => 'ro', isa => 'Paws::ChimeSDKMediaPipelines::MediaInsightsPipelineConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMediaPipelines::CreateMediaInsightsPipelineConfigurationResponse

=head1 ATTRIBUTES


=head2 MediaInsightsPipelineConfiguration => L<Paws::ChimeSDKMediaPipelines::MediaInsightsPipelineConfiguration>

The configuration settings for the media insights pipeline.


=head2 _request_id => Str


=cut

