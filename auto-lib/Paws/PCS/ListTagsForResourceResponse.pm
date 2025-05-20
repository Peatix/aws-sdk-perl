
package Paws::PCS::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::PCS::ResponseTagMap', traits => ['NameInRequest'], request_name => 'tags' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PCS::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::PCS::ResponseTagMap>

1 or more tags added to the resource. Each tag consists of a tag key
and tag value. The tag value is optional and can be an empty string.


=head2 _request_id => Str


=cut

1;