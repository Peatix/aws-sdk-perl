
package Paws::BCMPricingCalculator::UpdateBillEstimate;
  use Moose;
  has ExpiresAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'expiresAt' );
  has Identifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'identifier' , required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateBillEstimate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BCMPricingCalculator::UpdateBillEstimateResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BCMPricingCalculator::UpdateBillEstimate - Arguments for method UpdateBillEstimate on L<Paws::BCMPricingCalculator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateBillEstimate on the
L<AWS Billing and Cost Management Pricing Calculator|Paws::BCMPricingCalculator> service. Use the attributes of this class
as arguments to method UpdateBillEstimate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateBillEstimate.

=head1 SYNOPSIS

    my $bcm-pricing-calculator = Paws->service('BCMPricingCalculator');
    my $UpdateBillEstimateResponse =
      $bcm -pricing-calculator->UpdateBillEstimate(
      Identifier => 'MyResourceId',
      ExpiresAt  => '1970-01-01T01:00:00',    # OPTIONAL
      Name       => 'MyBillEstimateName',     # OPTIONAL
      );

    # Results:
    my $BillInterval   = $UpdateBillEstimateResponse->BillInterval;
    my $CostSummary    = $UpdateBillEstimateResponse->CostSummary;
    my $CreatedAt      = $UpdateBillEstimateResponse->CreatedAt;
    my $ExpiresAt      = $UpdateBillEstimateResponse->ExpiresAt;
    my $FailureMessage = $UpdateBillEstimateResponse->FailureMessage;
    my $Id             = $UpdateBillEstimateResponse->Id;
    my $Name           = $UpdateBillEstimateResponse->Name;
    my $Status         = $UpdateBillEstimateResponse->Status;

   # Returns a L<Paws::BCMPricingCalculator::UpdateBillEstimateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator/UpdateBillEstimate>

=head1 ATTRIBUTES


=head2 ExpiresAt => Str

The new expiration date for the bill estimate.



=head2 B<REQUIRED> Identifier => Str

The unique identifier of the bill estimate to update.



=head2 Name => Str

The new name for the bill estimate.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateBillEstimate in L<Paws::BCMPricingCalculator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

