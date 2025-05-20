
package Paws::DocDBElastic::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::DocDBElastic::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDBElastic::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::DocDBElastic::TagMap>

The list of tags for the specified elastic cluster resource.


=head2 _request_id => Str


=cut

