
package Paws::BCMPricingCalculator::BatchUpdateWorkloadEstimateUsage;
  use Moose;
  has Usage => (is => 'ro', isa => 'ArrayRef[Paws::BCMPricingCalculator::BatchUpdateWorkloadEstimateUsageEntry]', traits => ['NameInRequest'], request_name => 'usage' , required => 1);
  has WorkloadEstimateId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workloadEstimateId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchUpdateWorkloadEstimateUsage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BCMPricingCalculator::BatchUpdateWorkloadEstimateUsageResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BCMPricingCalculator::BatchUpdateWorkloadEstimateUsage - Arguments for method BatchUpdateWorkloadEstimateUsage on L<Paws::BCMPricingCalculator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchUpdateWorkloadEstimateUsage on the
L<AWS Billing and Cost Management Pricing Calculator|Paws::BCMPricingCalculator> service. Use the attributes of this class
as arguments to method BatchUpdateWorkloadEstimateUsage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchUpdateWorkloadEstimateUsage.

=head1 SYNOPSIS

    my $bcm-pricing-calculator = Paws->service('BCMPricingCalculator');
    my $BatchUpdateWorkloadEstimateUsageResponse =
      $bcm -pricing-calculator->BatchUpdateWorkloadEstimateUsage(
      Usage => [
        {
          Id     => 'MyResourceId',    # min: 36, max: 36
          Amount => 1,                 # OPTIONAL
          Group  => 'MyUsageGroup',    # max: 30; OPTIONAL
        },
        ...
      ],
      WorkloadEstimateId => 'MyResourceId',

      );

    # Results:
    my $Errors = $BatchUpdateWorkloadEstimateUsageResponse->Errors;
    my $Items  = $BatchUpdateWorkloadEstimateUsageResponse->Items;

# Returns a L<Paws::BCMPricingCalculator::BatchUpdateWorkloadEstimateUsageResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator/BatchUpdateWorkloadEstimateUsage>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Usage => ArrayRef[L<Paws::BCMPricingCalculator::BatchUpdateWorkloadEstimateUsageEntry>]

List of usage line amounts and usage group that you want to update in a
Workload estimate identified by the usage ID.



=head2 B<REQUIRED> WorkloadEstimateId => Str

The ID of the Workload estimate for which you want to modify the usage
lines.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchUpdateWorkloadEstimateUsage in L<Paws::BCMPricingCalculator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

