
package Paws::BCMPricingCalculator::BatchUpdateWorkloadEstimateUsageResponse;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::BCMPricingCalculator::BatchUpdateWorkloadEstimateUsageError]', traits => ['NameInRequest'], request_name => 'errors' );
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::BCMPricingCalculator::WorkloadEstimateUsageItem]', traits => ['NameInRequest'], request_name => 'items' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::BCMPricingCalculator::BatchUpdateWorkloadEstimateUsageResponse

=head1 ATTRIBUTES


=head2 Errors => ArrayRef[L<Paws::BCMPricingCalculator::BatchUpdateWorkloadEstimateUsageError>]

Returns the list of error reasons and usage line item IDs that could
not be updated for the Workload estimate.


=head2 Items => ArrayRef[L<Paws::BCMPricingCalculator::WorkloadEstimateUsageItem>]

Returns the list of successful usage line items that were updated for a
Workload estimate.


=head2 _request_id => Str


=cut

1;