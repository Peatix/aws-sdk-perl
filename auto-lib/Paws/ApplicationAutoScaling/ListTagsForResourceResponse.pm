
package Paws::ApplicationAutoScaling::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::ApplicationAutoScaling::TagMap');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationAutoScaling::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::ApplicationAutoScaling::TagMap>

A list of tags. Each tag consists of a tag key and a tag value.


=head2 _request_id => Str


=cut

1;