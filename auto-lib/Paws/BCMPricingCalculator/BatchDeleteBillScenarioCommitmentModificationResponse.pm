
package Paws::BCMPricingCalculator::BatchDeleteBillScenarioCommitmentModificationResponse;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::BCMPricingCalculator::BatchDeleteBillScenarioCommitmentModificationError]', traits => ['NameInRequest'], request_name => 'errors' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::BCMPricingCalculator::BatchDeleteBillScenarioCommitmentModificationResponse

=head1 ATTRIBUTES


=head2 Errors => ArrayRef[L<Paws::BCMPricingCalculator::BatchDeleteBillScenarioCommitmentModificationError>]

Returns the list of errors reason and the commitment item keys that
cannot be deleted from the Bill Scenario.


=head2 _request_id => Str


=cut

1;