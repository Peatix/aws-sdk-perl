
package Paws::BCMPricingCalculator::BatchDeleteBillScenarioUsageModification;
  use Moose;
  has BillScenarioId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'billScenarioId' , required => 1);
  has Ids => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'ids' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchDeleteBillScenarioUsageModification');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BCMPricingCalculator::BatchDeleteBillScenarioUsageModificationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BCMPricingCalculator::BatchDeleteBillScenarioUsageModification - Arguments for method BatchDeleteBillScenarioUsageModification on L<Paws::BCMPricingCalculator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchDeleteBillScenarioUsageModification on the
L<AWS Billing and Cost Management Pricing Calculator|Paws::BCMPricingCalculator> service. Use the attributes of this class
as arguments to method BatchDeleteBillScenarioUsageModification.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchDeleteBillScenarioUsageModification.

=head1 SYNOPSIS

    my $bcm-pricing-calculator = Paws->service('BCMPricingCalculator');
    my $BatchDeleteBillScenarioUsageModificationResponse =
      $bcm -pricing-calculator->BatchDeleteBillScenarioUsageModification(
      BillScenarioId => 'MyResourceId',
      Ids            => [
        'MyResourceId', ...    # min: 36, max: 36
      ],

      );

    # Results:
    my $Errors = $BatchDeleteBillScenarioUsageModificationResponse->Errors;

# Returns a L<Paws::BCMPricingCalculator::BatchDeleteBillScenarioUsageModificationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator/BatchDeleteBillScenarioUsageModification>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BillScenarioId => Str

The ID of the Bill Scenario for which you want to delete the modeled
usage.



=head2 B<REQUIRED> Ids => ArrayRef[Str|Undef]

List of usage that you want to delete from the Bill Scenario.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchDeleteBillScenarioUsageModification in L<Paws::BCMPricingCalculator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

