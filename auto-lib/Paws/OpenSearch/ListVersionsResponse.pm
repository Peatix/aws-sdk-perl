
package Paws::OpenSearch::ListVersionsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Versions => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::ListVersionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

When C<nextToken> is returned, there are more results available. The
value of C<nextToken> is a unique pagination token for each page. Send
the request again using the returned token to retrieve the next page.


=head2 Versions => ArrayRef[Str|Undef]

A list of all versions of OpenSearch and Elasticsearch that Amazon
OpenSearch Service supports.


=head2 _request_id => Str


=cut

