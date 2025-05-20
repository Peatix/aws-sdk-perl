
package Paws::Bedrock::ListMarketplaceModelEndpointsResponse;
  use Moose;
  has MarketplaceModelEndpoints => (is => 'ro', isa => 'ArrayRef[Paws::Bedrock::MarketplaceModelEndpointSummary]', traits => ['NameInRequest'], request_name => 'marketplaceModelEndpoints');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::ListMarketplaceModelEndpointsResponse

=head1 ATTRIBUTES


=head2 MarketplaceModelEndpoints => ArrayRef[L<Paws::Bedrock::MarketplaceModelEndpointSummary>]

An array of endpoint summaries.


=head2 NextToken => Str

The token for the next set of results. Use this token to get the next
set of results.


=head2 _request_id => Str


=cut

