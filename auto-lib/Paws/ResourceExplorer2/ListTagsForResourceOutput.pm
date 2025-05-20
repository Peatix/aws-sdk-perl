
package Paws::ResourceExplorer2::ListTagsForResourceOutput;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::ResourceExplorer2::TagMap');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceExplorer2::ListTagsForResourceOutput

=head1 ATTRIBUTES


=head2 Tags => L<Paws::ResourceExplorer2::TagMap>

The tag key and value pairs that you want to attach to the specified
view or index.


=head2 _request_id => Str


=cut

