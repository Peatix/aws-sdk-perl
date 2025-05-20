
package Paws::ChimeSDKMediaPipelines::CreateMediaConcatenationPipelineResponse;
  use Moose;
  has MediaConcatenationPipeline => (is => 'ro', isa => 'Paws::ChimeSDKMediaPipelines::MediaConcatenationPipeline');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMediaPipelines::CreateMediaConcatenationPipelineResponse

=head1 ATTRIBUTES


=head2 MediaConcatenationPipeline => L<Paws::ChimeSDKMediaPipelines::MediaConcatenationPipeline>

A media concatenation pipeline object, the ID, source type,
C<MediaPipelineARN>, and sink of a media concatenation pipeline object.


=head2 _request_id => Str


=cut

