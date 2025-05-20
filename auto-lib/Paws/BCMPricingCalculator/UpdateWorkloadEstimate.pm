
package Paws::BCMPricingCalculator::UpdateWorkloadEstimate;
  use Moose;
  has ExpiresAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'expiresAt' );
  has Identifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'identifier' , required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateWorkloadEstimate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BCMPricingCalculator::UpdateWorkloadEstimateResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BCMPricingCalculator::UpdateWorkloadEstimate - Arguments for method UpdateWorkloadEstimate on L<Paws::BCMPricingCalculator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateWorkloadEstimate on the
L<AWS Billing and Cost Management Pricing Calculator|Paws::BCMPricingCalculator> service. Use the attributes of this class
as arguments to method UpdateWorkloadEstimate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateWorkloadEstimate.

=head1 SYNOPSIS

    my $bcm-pricing-calculator = Paws->service('BCMPricingCalculator');
    my $UpdateWorkloadEstimateResponse =
      $bcm -pricing-calculator->UpdateWorkloadEstimate(
      Identifier => 'MyResourceId',
      ExpiresAt  => '1970-01-01T01:00:00',       # OPTIONAL
      Name       => 'MyWorkloadEstimateName',    # OPTIONAL
      );

    # Results:
    my $CostCurrency   = $UpdateWorkloadEstimateResponse->CostCurrency;
    my $CreatedAt      = $UpdateWorkloadEstimateResponse->CreatedAt;
    my $ExpiresAt      = $UpdateWorkloadEstimateResponse->ExpiresAt;
    my $FailureMessage = $UpdateWorkloadEstimateResponse->FailureMessage;
    my $Id             = $UpdateWorkloadEstimateResponse->Id;
    my $Name           = $UpdateWorkloadEstimateResponse->Name;
    my $RateTimestamp  = $UpdateWorkloadEstimateResponse->RateTimestamp;
    my $RateType       = $UpdateWorkloadEstimateResponse->RateType;
    my $Status         = $UpdateWorkloadEstimateResponse->Status;
    my $TotalCost      = $UpdateWorkloadEstimateResponse->TotalCost;

# Returns a L<Paws::BCMPricingCalculator::UpdateWorkloadEstimateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator/UpdateWorkloadEstimate>

=head1 ATTRIBUTES


=head2 ExpiresAt => Str

The new expiration date for the workload estimate.



=head2 B<REQUIRED> Identifier => Str

The unique identifier of the workload estimate to update.



=head2 Name => Str

The new name for the workload estimate.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateWorkloadEstimate in L<Paws::BCMPricingCalculator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

