
package Paws::ChimeSDKMediaPipelines::UpdateMediaInsightsPipelineConfigurationResponse;
  use Moose;
  has MediaInsightsPipelineConfiguration => (is => 'ro', isa => 'Paws::ChimeSDKMediaPipelines::MediaInsightsPipelineConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMediaPipelines::UpdateMediaInsightsPipelineConfigurationResponse

=head1 ATTRIBUTES


=head2 MediaInsightsPipelineConfiguration => L<Paws::ChimeSDKMediaPipelines::MediaInsightsPipelineConfiguration>

The updated configuration settings.


=head2 _request_id => Str


=cut

