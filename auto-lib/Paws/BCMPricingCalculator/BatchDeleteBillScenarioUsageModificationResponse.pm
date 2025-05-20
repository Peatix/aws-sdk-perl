
package Paws::BCMPricingCalculator::BatchDeleteBillScenarioUsageModificationResponse;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::BCMPricingCalculator::BatchDeleteBillScenarioUsageModificationError]', traits => ['NameInRequest'], request_name => 'errors' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::BCMPricingCalculator::BatchDeleteBillScenarioUsageModificationResponse

=head1 ATTRIBUTES


=head2 Errors => ArrayRef[L<Paws::BCMPricingCalculator::BatchDeleteBillScenarioUsageModificationError>]

Returns the list of errors reason and the usage item keys that cannot
be deleted from the Bill Scenario.


=head2 _request_id => Str


=cut

1;