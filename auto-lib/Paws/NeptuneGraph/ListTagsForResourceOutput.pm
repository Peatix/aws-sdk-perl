
package Paws::NeptuneGraph::ListTagsForResourceOutput;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::NeptuneGraph::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NeptuneGraph::ListTagsForResourceOutput

=head1 ATTRIBUTES


=head2 Tags => L<Paws::NeptuneGraph::TagMap>

The list of metadata tags associated with the resource.


=head2 _request_id => Str


=cut

