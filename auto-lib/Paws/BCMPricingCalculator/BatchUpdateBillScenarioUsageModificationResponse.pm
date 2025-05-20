
package Paws::BCMPricingCalculator::BatchUpdateBillScenarioUsageModificationResponse;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::BCMPricingCalculator::BatchUpdateBillScenarioUsageModificationError]', traits => ['NameInRequest'], request_name => 'errors' );
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::BCMPricingCalculator::BillScenarioUsageModificationItem]', traits => ['NameInRequest'], request_name => 'items' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::BCMPricingCalculator::BatchUpdateBillScenarioUsageModificationResponse

=head1 ATTRIBUTES


=head2 Errors => ArrayRef[L<Paws::BCMPricingCalculator::BatchUpdateBillScenarioUsageModificationError>]

Returns the list of error reasons and usage line item IDs that could
not be updated for the Bill Scenario.


=head2 Items => ArrayRef[L<Paws::BCMPricingCalculator::BillScenarioUsageModificationItem>]

Returns the list of successful usage line items that were updated for a
Bill Scenario.


=head2 _request_id => Str


=cut

1;