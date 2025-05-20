
package Paws::ChimeSDKMediaPipelines::ListMediaPipelinesResponse;
  use Moose;
  has MediaPipelines => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKMediaPipelines::MediaPipelineSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMediaPipelines::ListMediaPipelinesResponse

=head1 ATTRIBUTES


=head2 MediaPipelines => ArrayRef[L<Paws::ChimeSDKMediaPipelines::MediaPipelineSummary>]

The media pipeline objects in the list.


=head2 NextToken => Str

The token used to retrieve the next page of results.


=head2 _request_id => Str


=cut

