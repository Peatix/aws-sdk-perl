
package Paws::Bedrock::GetMarketplaceModelEndpointResponse;
  use Moose;
  has MarketplaceModelEndpoint => (is => 'ro', isa => 'Paws::Bedrock::MarketplaceModelEndpoint', traits => ['NameInRequest'], request_name => 'marketplaceModelEndpoint');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::GetMarketplaceModelEndpointResponse

=head1 ATTRIBUTES


=head2 MarketplaceModelEndpoint => L<Paws::Bedrock::MarketplaceModelEndpoint>

Details about the requested endpoint.


=head2 _request_id => Str


=cut

