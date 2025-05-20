
package Paws::BCMPricingCalculator::BatchUpdateBillScenarioCommitmentModificationResponse;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::BCMPricingCalculator::BatchUpdateBillScenarioCommitmentModificationError]', traits => ['NameInRequest'], request_name => 'errors' );
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::BCMPricingCalculator::BillScenarioCommitmentModificationItem]', traits => ['NameInRequest'], request_name => 'items' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::BCMPricingCalculator::BatchUpdateBillScenarioCommitmentModificationResponse

=head1 ATTRIBUTES


=head2 Errors => ArrayRef[L<Paws::BCMPricingCalculator::BatchUpdateBillScenarioCommitmentModificationError>]

Returns the list of error reasons and commitment line item IDs that
could not be updated for the Bill Scenario.


=head2 Items => ArrayRef[L<Paws::BCMPricingCalculator::BillScenarioCommitmentModificationItem>]

Returns the list of successful commitment line items that were updated
for a Bill Scenario.


=head2 _request_id => Str


=cut

1;