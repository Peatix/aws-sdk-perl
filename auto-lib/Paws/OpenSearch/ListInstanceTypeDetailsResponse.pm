
package Paws::OpenSearch::ListInstanceTypeDetailsResponse;
  use Moose;
  has InstanceTypeDetails => (is => 'ro', isa => 'ArrayRef[Paws::OpenSearch::InstanceTypeDetails]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::ListInstanceTypeDetailsResponse

=head1 ATTRIBUTES


=head2 InstanceTypeDetails => ArrayRef[L<Paws::OpenSearch::InstanceTypeDetails>]

Lists all supported instance types and features for the given
OpenSearch or Elasticsearch version.


=head2 NextToken => Str

When C<nextToken> is returned, there are more results available. The
value of C<nextToken> is a unique pagination token for each page. Send
the request again using the returned token to retrieve the next page.


=head2 _request_id => Str


=cut

