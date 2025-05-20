
package Paws::BCMPricingCalculator::DeleteWorkloadEstimate;
  use Moose;
  has Identifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'identifier' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteWorkloadEstimate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BCMPricingCalculator::DeleteWorkloadEstimateResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BCMPricingCalculator::DeleteWorkloadEstimate - Arguments for method DeleteWorkloadEstimate on L<Paws::BCMPricingCalculator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteWorkloadEstimate on the
L<AWS Billing and Cost Management Pricing Calculator|Paws::BCMPricingCalculator> service. Use the attributes of this class
as arguments to method DeleteWorkloadEstimate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteWorkloadEstimate.

=head1 SYNOPSIS

    my $bcm-pricing-calculator = Paws->service('BCMPricingCalculator');
    my $DeleteWorkloadEstimateResponse =
      $bcm -pricing-calculator->DeleteWorkloadEstimate(
      Identifier => 'MyResourceId',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator/DeleteWorkloadEstimate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Identifier => Str

The unique identifier of the workload estimate to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteWorkloadEstimate in L<Paws::BCMPricingCalculator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

