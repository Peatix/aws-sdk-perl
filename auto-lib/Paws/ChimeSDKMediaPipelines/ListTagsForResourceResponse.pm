
package Paws::ChimeSDKMediaPipelines::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKMediaPipelines::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMediaPipelines::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[L<Paws::ChimeSDKMediaPipelines::Tag>]

The tags associated with the specified media pipeline.


=head2 _request_id => Str


=cut

