
package Paws::BCMPricingCalculator::BatchDeleteWorkloadEstimateUsageResponse;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::BCMPricingCalculator::BatchDeleteWorkloadEstimateUsageError]', traits => ['NameInRequest'], request_name => 'errors' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::BCMPricingCalculator::BatchDeleteWorkloadEstimateUsageResponse

=head1 ATTRIBUTES


=head2 Errors => ArrayRef[L<Paws::BCMPricingCalculator::BatchDeleteWorkloadEstimateUsageError>]

Returns the list of errors reason and the usage item keys that cannot
be deleted from the Workload estimate.


=head2 _request_id => Str


=cut

1;