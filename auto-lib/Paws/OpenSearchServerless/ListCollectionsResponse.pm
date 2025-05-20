
package Paws::OpenSearchServerless::ListCollectionsResponse;
  use Moose;
  has CollectionSummaries => (is => 'ro', isa => 'ArrayRef[Paws::OpenSearchServerless::CollectionSummary]', traits => ['NameInRequest'], request_name => 'collectionSummaries' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearchServerless::ListCollectionsResponse

=head1 ATTRIBUTES


=head2 CollectionSummaries => ArrayRef[L<Paws::OpenSearchServerless::CollectionSummary>]

Details about each collection.


=head2 NextToken => Str

When C<nextToken> is returned, there are more results available. The
value of C<nextToken> is a unique pagination token for each page. Make
the call again using the returned token to retrieve the next page.


=head2 _request_id => Str


=cut

1;