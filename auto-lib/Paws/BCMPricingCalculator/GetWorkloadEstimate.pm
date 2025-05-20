
package Paws::BCMPricingCalculator::GetWorkloadEstimate;
  use Moose;
  has Identifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'identifier' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetWorkloadEstimate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BCMPricingCalculator::GetWorkloadEstimateResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BCMPricingCalculator::GetWorkloadEstimate - Arguments for method GetWorkloadEstimate on L<Paws::BCMPricingCalculator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetWorkloadEstimate on the
L<AWS Billing and Cost Management Pricing Calculator|Paws::BCMPricingCalculator> service. Use the attributes of this class
as arguments to method GetWorkloadEstimate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetWorkloadEstimate.

=head1 SYNOPSIS

    my $bcm-pricing-calculator = Paws->service('BCMPricingCalculator');
    my $GetWorkloadEstimateResponse =
      $bcm -pricing-calculator->GetWorkloadEstimate(
      Identifier => 'MyResourceId',

      );

    # Results:
    my $CostCurrency   = $GetWorkloadEstimateResponse->CostCurrency;
    my $CreatedAt      = $GetWorkloadEstimateResponse->CreatedAt;
    my $ExpiresAt      = $GetWorkloadEstimateResponse->ExpiresAt;
    my $FailureMessage = $GetWorkloadEstimateResponse->FailureMessage;
    my $Id             = $GetWorkloadEstimateResponse->Id;
    my $Name           = $GetWorkloadEstimateResponse->Name;
    my $RateTimestamp  = $GetWorkloadEstimateResponse->RateTimestamp;
    my $RateType       = $GetWorkloadEstimateResponse->RateType;
    my $Status         = $GetWorkloadEstimateResponse->Status;
    my $TotalCost      = $GetWorkloadEstimateResponse->TotalCost;

  # Returns a L<Paws::BCMPricingCalculator::GetWorkloadEstimateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator/GetWorkloadEstimate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Identifier => Str

The unique identifier of the workload estimate to retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetWorkloadEstimate in L<Paws::BCMPricingCalculator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

