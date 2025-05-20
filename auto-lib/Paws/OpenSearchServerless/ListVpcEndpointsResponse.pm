
package Paws::OpenSearchServerless::ListVpcEndpointsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has VpcEndpointSummaries => (is => 'ro', isa => 'ArrayRef[Paws::OpenSearchServerless::VpcEndpointSummary]', traits => ['NameInRequest'], request_name => 'vpcEndpointSummaries' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearchServerless::ListVpcEndpointsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

When C<nextToken> is returned, there are more results available. The
value of C<nextToken> is a unique pagination token for each page. Make
the call again using the returned token to retrieve the next page.


=head2 VpcEndpointSummaries => ArrayRef[L<Paws::OpenSearchServerless::VpcEndpointSummary>]

Details about each VPC endpoint, including the name and current status.


=head2 _request_id => Str


=cut

1;