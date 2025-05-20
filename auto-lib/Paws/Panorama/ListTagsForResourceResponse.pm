
package Paws::Panorama::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::Panorama::TagMap');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Panorama::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::Panorama::TagMap>

A list of tags.


=head2 _request_id => Str


=cut

