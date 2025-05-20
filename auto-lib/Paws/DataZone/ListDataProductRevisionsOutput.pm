
package Paws::DataZone::ListDataProductRevisionsOutput;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::DataProductRevision]', traits => ['NameInRequest'], request_name => 'items', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::ListDataProductRevisionsOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Items => ArrayRef[L<Paws::DataZone::DataProductRevision>]

The results of the C<ListDataProductRevisions> action.


=head2 NextToken => Str

When the number of data product revisions is greater than the default
value for the C<MaxResults> parameter, or if you explicitly specify a
value for C<MaxResults> that is less than the number of data product
revisions, the response includes a pagination token named C<NextToken>.
You can specify this C<NextToken> value in a subsequent call to
C<ListDataProductRevisions> to list the next set of data product
revisions.


=head2 _request_id => Str


=cut

