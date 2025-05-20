
package Paws::ChimeSDKMeetings::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKMeetings::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMeetings::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[L<Paws::ChimeSDKMeetings::Tag>]

The tags requested for the specified resource.


=head2 _request_id => Str


=cut

