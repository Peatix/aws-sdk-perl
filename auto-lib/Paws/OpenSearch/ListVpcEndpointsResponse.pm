
package Paws::OpenSearch::ListVpcEndpointsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', required => 1);
  has VpcEndpointSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::OpenSearch::VpcEndpointSummary]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::ListVpcEndpointsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> NextToken => Str

When C<nextToken> is returned, there are more results available. The
value of C<nextToken> is a unique pagination token for each page. Send
the request again using the returned token to retrieve the next page.


=head2 B<REQUIRED> VpcEndpointSummaryList => ArrayRef[L<Paws::OpenSearch::VpcEndpointSummary>]

Information about each endpoint.


=head2 _request_id => Str


=cut

