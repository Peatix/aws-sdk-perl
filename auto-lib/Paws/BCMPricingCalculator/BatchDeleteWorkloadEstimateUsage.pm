
package Paws::BCMPricingCalculator::BatchDeleteWorkloadEstimateUsage;
  use Moose;
  has Ids => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'ids' , required => 1);
  has WorkloadEstimateId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workloadEstimateId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchDeleteWorkloadEstimateUsage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BCMPricingCalculator::BatchDeleteWorkloadEstimateUsageResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BCMPricingCalculator::BatchDeleteWorkloadEstimateUsage - Arguments for method BatchDeleteWorkloadEstimateUsage on L<Paws::BCMPricingCalculator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchDeleteWorkloadEstimateUsage on the
L<AWS Billing and Cost Management Pricing Calculator|Paws::BCMPricingCalculator> service. Use the attributes of this class
as arguments to method BatchDeleteWorkloadEstimateUsage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchDeleteWorkloadEstimateUsage.

=head1 SYNOPSIS

    my $bcm-pricing-calculator = Paws->service('BCMPricingCalculator');
    my $BatchDeleteWorkloadEstimateUsageResponse =
      $bcm -pricing-calculator->BatchDeleteWorkloadEstimateUsage(
      Ids => [
        'MyResourceId', ...    # min: 36, max: 36
      ],
      WorkloadEstimateId => 'MyResourceId',

      );

    # Results:
    my $Errors = $BatchDeleteWorkloadEstimateUsageResponse->Errors;

# Returns a L<Paws::BCMPricingCalculator::BatchDeleteWorkloadEstimateUsageResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator/BatchDeleteWorkloadEstimateUsage>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Ids => ArrayRef[Str|Undef]

List of usage that you want to delete from the Workload estimate.



=head2 B<REQUIRED> WorkloadEstimateId => Str

The ID of the Workload estimate for which you want to delete the
modeled usage.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchDeleteWorkloadEstimateUsage in L<Paws::BCMPricingCalculator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

