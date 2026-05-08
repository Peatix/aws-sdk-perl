
package Paws::OpenSearch::DescribeInboundConnectionsResponse;
  use Moose;
  has Connections => (is => 'ro', isa => 'ArrayRef[Paws::OpenSearch::InboundConnection]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::DescribeInboundConnectionsResponse

=head1 ATTRIBUTES


=head2 Connections => ArrayRef[L<Paws::OpenSearch::InboundConnection>]

List of inbound connections.


=head2 NextToken => Str

When C<nextToken> is returned, there are more results available. The
value of C<nextToken> is a unique pagination token for each page. Send
the request again using the returned token to retrieve the next page.


=head2 _request_id => Str


=cut

