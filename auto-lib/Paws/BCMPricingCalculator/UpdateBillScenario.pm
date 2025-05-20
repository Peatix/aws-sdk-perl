
package Paws::BCMPricingCalculator::UpdateBillScenario;
  use Moose;
  has ExpiresAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'expiresAt' );
  has Identifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'identifier' , required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateBillScenario');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BCMPricingCalculator::UpdateBillScenarioResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BCMPricingCalculator::UpdateBillScenario - Arguments for method UpdateBillScenario on L<Paws::BCMPricingCalculator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateBillScenario on the
L<AWS Billing and Cost Management Pricing Calculator|Paws::BCMPricingCalculator> service. Use the attributes of this class
as arguments to method UpdateBillScenario.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateBillScenario.

=head1 SYNOPSIS

    my $bcm-pricing-calculator = Paws->service('BCMPricingCalculator');
    my $UpdateBillScenarioResponse =
      $bcm -pricing-calculator->UpdateBillScenario(
      Identifier => 'MyResourceId',
      ExpiresAt  => '1970-01-01T01:00:00',    # OPTIONAL
      Name       => 'MyBillScenarioName',     # OPTIONAL
      );

    # Results:
    my $BillInterval   = $UpdateBillScenarioResponse->BillInterval;
    my $CreatedAt      = $UpdateBillScenarioResponse->CreatedAt;
    my $ExpiresAt      = $UpdateBillScenarioResponse->ExpiresAt;
    my $FailureMessage = $UpdateBillScenarioResponse->FailureMessage;
    my $Id             = $UpdateBillScenarioResponse->Id;
    my $Name           = $UpdateBillScenarioResponse->Name;
    my $Status         = $UpdateBillScenarioResponse->Status;

   # Returns a L<Paws::BCMPricingCalculator::UpdateBillScenarioResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator/UpdateBillScenario>

=head1 ATTRIBUTES


=head2 ExpiresAt => Str

The new expiration date for the bill scenario.



=head2 B<REQUIRED> Identifier => Str

The unique identifier of the bill scenario to update.



=head2 Name => Str

The new name for the bill scenario.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateBillScenario in L<Paws::BCMPricingCalculator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

