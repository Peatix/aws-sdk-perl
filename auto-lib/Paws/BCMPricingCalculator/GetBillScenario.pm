
package Paws::BCMPricingCalculator::GetBillScenario;
  use Moose;
  has Identifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'identifier' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetBillScenario');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BCMPricingCalculator::GetBillScenarioResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BCMPricingCalculator::GetBillScenario - Arguments for method GetBillScenario on L<Paws::BCMPricingCalculator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetBillScenario on the
L<AWS Billing and Cost Management Pricing Calculator|Paws::BCMPricingCalculator> service. Use the attributes of this class
as arguments to method GetBillScenario.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetBillScenario.

=head1 SYNOPSIS

    my $bcm-pricing-calculator = Paws->service('BCMPricingCalculator');
    my $GetBillScenarioResponse = $bcm -pricing-calculator->GetBillScenario(
      Identifier => 'MyResourceId',

    );

    # Results:
    my $BillInterval   = $GetBillScenarioResponse->BillInterval;
    my $CreatedAt      = $GetBillScenarioResponse->CreatedAt;
    my $ExpiresAt      = $GetBillScenarioResponse->ExpiresAt;
    my $FailureMessage = $GetBillScenarioResponse->FailureMessage;
    my $Id             = $GetBillScenarioResponse->Id;
    my $Name           = $GetBillScenarioResponse->Name;
    my $Status         = $GetBillScenarioResponse->Status;

    # Returns a L<Paws::BCMPricingCalculator::GetBillScenarioResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator/GetBillScenario>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Identifier => Str

The unique identifier of the bill scenario to retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetBillScenario in L<Paws::BCMPricingCalculator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

