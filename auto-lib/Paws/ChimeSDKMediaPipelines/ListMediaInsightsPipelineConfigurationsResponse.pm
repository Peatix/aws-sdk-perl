
package Paws::ChimeSDKMediaPipelines::ListMediaInsightsPipelineConfigurationsResponse;
  use Moose;
  has MediaInsightsPipelineConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKMediaPipelines::MediaInsightsPipelineConfigurationSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMediaPipelines::ListMediaInsightsPipelineConfigurationsResponse

=head1 ATTRIBUTES


=head2 MediaInsightsPipelineConfigurations => ArrayRef[L<Paws::ChimeSDKMediaPipelines::MediaInsightsPipelineConfigurationSummary>]

The requested list of media insights pipeline configurations.


=head2 NextToken => Str

The token used to return the next page of results.


=head2 _request_id => Str


=cut

