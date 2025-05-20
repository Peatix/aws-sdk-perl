
package Paws::LocationService::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::LocationService::TagMap');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::LocationService::TagMap>

Tags that have been applied to the specified resource. Tags are mapped
from the tag key to the tag value: C<"TagKey" : "TagValue">.

=over

=item *

Format example: C<{"tag1" : "value1", "tag2" : "value2"}>

=back



=head2 _request_id => Str


=cut

