
package Paws::BCMPricingCalculator::BatchCreateBillScenarioUsageModificationResponse;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::BCMPricingCalculator::BatchCreateBillScenarioUsageModificationError]', traits => ['NameInRequest'], request_name => 'errors' );
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::BCMPricingCalculator::BatchCreateBillScenarioUsageModificationItem]', traits => ['NameInRequest'], request_name => 'items' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::BCMPricingCalculator::BatchCreateBillScenarioUsageModificationResponse

=head1 ATTRIBUTES


=head2 Errors => ArrayRef[L<Paws::BCMPricingCalculator::BatchCreateBillScenarioUsageModificationError>]

Returns the list of errors reason and the usage item keys that cannot
be created in the Bill Scenario.


=head2 Items => ArrayRef[L<Paws::BCMPricingCalculator::BatchCreateBillScenarioUsageModificationItem>]

Returns the list of successful usage line items that were created for
the Bill Scenario.


=head2 _request_id => Str


=cut

1;