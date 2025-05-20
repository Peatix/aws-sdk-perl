
package Paws::ChimeSDKMediaPipelines::ListMediaPipelineKinesisVideoStreamPoolsResponse;
  use Moose;
  has KinesisVideoStreamPools => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKMediaPipelines::KinesisVideoStreamPoolSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMediaPipelines::ListMediaPipelineKinesisVideoStreamPoolsResponse

=head1 ATTRIBUTES


=head2 KinesisVideoStreamPools => ArrayRef[L<Paws::ChimeSDKMediaPipelines::KinesisVideoStreamPoolSummary>]

The list of video stream pools.


=head2 NextToken => Str

The token used to return the next page of results.


=head2 _request_id => Str


=cut

