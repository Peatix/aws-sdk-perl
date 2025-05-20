
package Paws::SimSpaceWeaver::ListTagsForResourceOutput;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::SimSpaceWeaver::TagMap');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimSpaceWeaver::ListTagsForResourceOutput

=head1 ATTRIBUTES


=head2 Tags => L<Paws::SimSpaceWeaver::TagMap>

The list of tags for the resource.


=head2 _request_id => Str


=cut

