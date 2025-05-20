
package Paws::Textract::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::Textract::TagMap');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Textract::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::Textract::TagMap>

A set of tags (key-value pairs) that are part of the requested
resource.


=head2 _request_id => Str


=cut

1;