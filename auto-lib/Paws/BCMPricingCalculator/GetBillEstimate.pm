
package Paws::BCMPricingCalculator::GetBillEstimate;
  use Moose;
  has Identifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'identifier' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetBillEstimate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BCMPricingCalculator::GetBillEstimateResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BCMPricingCalculator::GetBillEstimate - Arguments for method GetBillEstimate on L<Paws::BCMPricingCalculator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetBillEstimate on the
L<AWS Billing and Cost Management Pricing Calculator|Paws::BCMPricingCalculator> service. Use the attributes of this class
as arguments to method GetBillEstimate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetBillEstimate.

=head1 SYNOPSIS

    my $bcm-pricing-calculator = Paws->service('BCMPricingCalculator');
    my $GetBillEstimateResponse = $bcm -pricing-calculator->GetBillEstimate(
      Identifier => 'MyResourceId',

    );

    # Results:
    my $BillInterval   = $GetBillEstimateResponse->BillInterval;
    my $CostSummary    = $GetBillEstimateResponse->CostSummary;
    my $CreatedAt      = $GetBillEstimateResponse->CreatedAt;
    my $ExpiresAt      = $GetBillEstimateResponse->ExpiresAt;
    my $FailureMessage = $GetBillEstimateResponse->FailureMessage;
    my $Id             = $GetBillEstimateResponse->Id;
    my $Name           = $GetBillEstimateResponse->Name;
    my $Status         = $GetBillEstimateResponse->Status;

    # Returns a L<Paws::BCMPricingCalculator::GetBillEstimateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator/GetBillEstimate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Identifier => Str

The unique identifier of the bill estimate to retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetBillEstimate in L<Paws::BCMPricingCalculator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

