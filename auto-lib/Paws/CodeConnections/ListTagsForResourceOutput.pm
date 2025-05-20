
package Paws::CodeConnections::ListTagsForResourceOutput;
  use Moose;
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::CodeConnections::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeConnections::ListTagsForResourceOutput

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[L<Paws::CodeConnections::Tag>]

A list of tag key and value pairs associated with the specified
resource.


=head2 _request_id => Str


=cut

1;