
package Paws::AppStream::DescribeAppBlocksResult;
  use Moose;
  has AppBlocks => (is => 'ro', isa => 'ArrayRef[Paws::AppStream::AppBlock]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::DescribeAppBlocksResult

=head1 ATTRIBUTES


=head2 AppBlocks => ArrayRef[L<Paws::AppStream::AppBlock>]

The app blocks in the list.


=head2 NextToken => Str

The pagination token used to retrieve the next page of results for this
operation.


=head2 _request_id => Str


=cut

1;