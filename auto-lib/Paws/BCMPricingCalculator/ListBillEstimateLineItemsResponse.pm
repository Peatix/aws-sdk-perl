
package Paws::BCMPricingCalculator::ListBillEstimateLineItemsResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::BCMPricingCalculator::BillEstimateLineItemSummary]', traits => ['NameInRequest'], request_name => 'items' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::BCMPricingCalculator::ListBillEstimateLineItemsResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::BCMPricingCalculator::BillEstimateLineItemSummary>]

The list of line items associated with the bill estimate.


=head2 NextToken => Str

A token to retrieve the next page of results, if any.


=head2 _request_id => Str


=cut

1;