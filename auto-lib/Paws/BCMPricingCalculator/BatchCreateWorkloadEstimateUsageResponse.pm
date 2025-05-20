
package Paws::BCMPricingCalculator::BatchCreateWorkloadEstimateUsageResponse;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::BCMPricingCalculator::BatchCreateWorkloadEstimateUsageError]', traits => ['NameInRequest'], request_name => 'errors' );
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::BCMPricingCalculator::BatchCreateWorkloadEstimateUsageItem]', traits => ['NameInRequest'], request_name => 'items' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::BCMPricingCalculator::BatchCreateWorkloadEstimateUsageResponse

=head1 ATTRIBUTES


=head2 Errors => ArrayRef[L<Paws::BCMPricingCalculator::BatchCreateWorkloadEstimateUsageError>]

Returns the list of errors reason and the usage item keys that cannot
be created in the Workload estimate.


=head2 Items => ArrayRef[L<Paws::BCMPricingCalculator::BatchCreateWorkloadEstimateUsageItem>]

Returns the list of successful usage line items that were created for
the Workload estimate.


=head2 _request_id => Str


=cut

1;