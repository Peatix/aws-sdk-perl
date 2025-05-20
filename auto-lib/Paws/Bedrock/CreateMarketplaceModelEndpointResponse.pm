
package Paws::Bedrock::CreateMarketplaceModelEndpointResponse;
  use Moose;
  has MarketplaceModelEndpoint => (is => 'ro', isa => 'Paws::Bedrock::MarketplaceModelEndpoint', traits => ['NameInRequest'], request_name => 'marketplaceModelEndpoint', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::CreateMarketplaceModelEndpointResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> MarketplaceModelEndpoint => L<Paws::Bedrock::MarketplaceModelEndpoint>

Details about the created endpoint.


=head2 _request_id => Str


=cut

