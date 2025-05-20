
package Paws::ChimeSDKMediaPipelines::ListMediaCapturePipelinesResponse;
  use Moose;
  has MediaCapturePipelines => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKMediaPipelines::MediaCapturePipelineSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMediaPipelines::ListMediaCapturePipelinesResponse

=head1 ATTRIBUTES


=head2 MediaCapturePipelines => ArrayRef[L<Paws::ChimeSDKMediaPipelines::MediaCapturePipelineSummary>]

The media pipeline objects in the list.


=head2 NextToken => Str

The token used to retrieve the next page of results.


=head2 _request_id => Str


=cut

