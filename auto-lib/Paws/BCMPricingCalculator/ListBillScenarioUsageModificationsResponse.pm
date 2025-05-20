
package Paws::BCMPricingCalculator::ListBillScenarioUsageModificationsResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::BCMPricingCalculator::BillScenarioUsageModificationItem]', traits => ['NameInRequest'], request_name => 'items' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::BCMPricingCalculator::ListBillScenarioUsageModificationsResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::BCMPricingCalculator::BillScenarioUsageModificationItem>]

The list of usage modifications associated with the bill scenario.


=head2 NextToken => Str

A token to retrieve the next page of results, if any.


=head2 _request_id => Str


=cut

1;