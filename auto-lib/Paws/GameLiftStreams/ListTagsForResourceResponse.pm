
package Paws::GameLiftStreams::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::GameLiftStreams::Tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLiftStreams::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::GameLiftStreams::Tags>

A collection of tags that have been assigned to the specified resource.


=head2 _request_id => Str


=cut

