
package Paws::Pricing::ListPriceListsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has PriceLists => (is => 'ro', isa => 'ArrayRef[Paws::Pricing::PriceList]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Pricing::ListPriceListsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token that indicates the next set of results to
retrieve.


=head2 PriceLists => ArrayRef[L<Paws::Pricing::PriceList>]

The type of price list references that match your request.


=head2 _request_id => Str


=cut

1;