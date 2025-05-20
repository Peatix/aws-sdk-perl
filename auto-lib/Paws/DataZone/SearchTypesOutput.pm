
package Paws::DataZone::SearchTypesOutput;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::SearchTypesResultItem]', traits => ['NameInRequest'], request_name => 'items');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has TotalMatchCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'totalMatchCount');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::SearchTypesOutput

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::DataZone::SearchTypesResultItem>]

The results of the C<SearchTypes> action.


=head2 NextToken => Str

When the number of results is greater than the default value for the
C<MaxResults> parameter, or if you explicitly specify a value for
C<MaxResults> that is less than the number of results, the response
includes a pagination token named C<NextToken>. You can specify this
C<NextToken> value in a subsequent call to C<SearchTypes> to list the
next set of results.


=head2 TotalMatchCount => Int

Total number of search results.


=head2 _request_id => Str


=cut

