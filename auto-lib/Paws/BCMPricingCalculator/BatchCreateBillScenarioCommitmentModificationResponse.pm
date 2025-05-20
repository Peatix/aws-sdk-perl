
package Paws::BCMPricingCalculator::BatchCreateBillScenarioCommitmentModificationResponse;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::BCMPricingCalculator::BatchCreateBillScenarioCommitmentModificationError]', traits => ['NameInRequest'], request_name => 'errors' );
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::BCMPricingCalculator::BatchCreateBillScenarioCommitmentModificationItem]', traits => ['NameInRequest'], request_name => 'items' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::BCMPricingCalculator::BatchCreateBillScenarioCommitmentModificationResponse

=head1 ATTRIBUTES


=head2 Errors => ArrayRef[L<Paws::BCMPricingCalculator::BatchCreateBillScenarioCommitmentModificationError>]

Returns the list of errors reason and the commitment item keys that
cannot be created in the Bill Scenario.


=head2 Items => ArrayRef[L<Paws::BCMPricingCalculator::BatchCreateBillScenarioCommitmentModificationItem>]

Returns the list of successful commitment line items that were created
for the Bill Scenario.


=head2 _request_id => Str


=cut

1;