
package Paws::AppStream::DescribeAppBlockBuildersResult;
  use Moose;
  has AppBlockBuilders => (is => 'ro', isa => 'ArrayRef[Paws::AppStream::AppBlockBuilder]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::DescribeAppBlockBuildersResult

=head1 ATTRIBUTES


=head2 AppBlockBuilders => ArrayRef[L<Paws::AppStream::AppBlockBuilder>]

The list that describes one or more app block builders.


=head2 NextToken => Str

The pagination token used to retrieve the next page of results for this
operation.


=head2 _request_id => Str


=cut

1;