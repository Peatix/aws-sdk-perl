
package Paws::BCMPricingCalculator::CreateBillScenario;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has Tags => (is => 'ro', isa => 'Paws::BCMPricingCalculator::Tags', traits => ['NameInRequest'], request_name => 'tags' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateBillScenario');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BCMPricingCalculator::CreateBillScenarioResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BCMPricingCalculator::CreateBillScenario - Arguments for method CreateBillScenario on L<Paws::BCMPricingCalculator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateBillScenario on the
L<AWS Billing and Cost Management Pricing Calculator|Paws::BCMPricingCalculator> service. Use the attributes of this class
as arguments to method CreateBillScenario.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateBillScenario.

=head1 SYNOPSIS

    my $bcm-pricing-calculator = Paws->service('BCMPricingCalculator');
    my $CreateBillScenarioResponse =
      $bcm -pricing-calculator->CreateBillScenario(
      Name        => 'MyBillScenarioName',
      ClientToken => 'MyClientToken',        # OPTIONAL
      Tags        => {
        'MyResourceTagKey' =>
          'MyResourceTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      );

    # Results:
    my $BillInterval   = $CreateBillScenarioResponse->BillInterval;
    my $CreatedAt      = $CreateBillScenarioResponse->CreatedAt;
    my $ExpiresAt      = $CreateBillScenarioResponse->ExpiresAt;
    my $FailureMessage = $CreateBillScenarioResponse->FailureMessage;
    my $Id             = $CreateBillScenarioResponse->Id;
    my $Name           = $CreateBillScenarioResponse->Name;
    my $Status         = $CreateBillScenarioResponse->Status;

   # Returns a L<Paws::BCMPricingCalculator::CreateBillScenarioResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator/CreateBillScenario>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier to ensure idempotency of the
request.



=head2 B<REQUIRED> Name => Str

A descriptive name for the bill scenario.



=head2 Tags => L<Paws::BCMPricingCalculator::Tags>

The tags to apply to the bill scenario.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateBillScenario in L<Paws::BCMPricingCalculator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

