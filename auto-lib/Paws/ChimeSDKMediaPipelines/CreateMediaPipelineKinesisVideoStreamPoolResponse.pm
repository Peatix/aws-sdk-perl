
package Paws::ChimeSDKMediaPipelines::CreateMediaPipelineKinesisVideoStreamPoolResponse;
  use Moose;
  has KinesisVideoStreamPoolConfiguration => (is => 'ro', isa => 'Paws::ChimeSDKMediaPipelines::KinesisVideoStreamPoolConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMediaPipelines::CreateMediaPipelineKinesisVideoStreamPoolResponse

=head1 ATTRIBUTES


=head2 KinesisVideoStreamPoolConfiguration => L<Paws::ChimeSDKMediaPipelines::KinesisVideoStreamPoolConfiguration>

The configuration for applying the streams to the pool.


=head2 _request_id => Str


=cut

