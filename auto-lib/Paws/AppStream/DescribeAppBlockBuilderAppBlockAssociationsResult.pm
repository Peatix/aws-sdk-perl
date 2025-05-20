
package Paws::AppStream::DescribeAppBlockBuilderAppBlockAssociationsResult;
  use Moose;
  has AppBlockBuilderAppBlockAssociations => (is => 'ro', isa => 'ArrayRef[Paws::AppStream::AppBlockBuilderAppBlockAssociation]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::DescribeAppBlockBuilderAppBlockAssociationsResult

=head1 ATTRIBUTES


=head2 AppBlockBuilderAppBlockAssociations => ArrayRef[L<Paws::AppStream::AppBlockBuilderAppBlockAssociation>]

This list of app block builders associated with app blocks.


=head2 NextToken => Str

The pagination token used to retrieve the next page of results for this
operation.


=head2 _request_id => Str


=cut

1;