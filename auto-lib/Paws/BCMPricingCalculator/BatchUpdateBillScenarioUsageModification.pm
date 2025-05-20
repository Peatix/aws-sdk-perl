
package Paws::BCMPricingCalculator::BatchUpdateBillScenarioUsageModification;
  use Moose;
  has BillScenarioId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'billScenarioId' , required => 1);
  has UsageModifications => (is => 'ro', isa => 'ArrayRef[Paws::BCMPricingCalculator::BatchUpdateBillScenarioUsageModificationEntry]', traits => ['NameInRequest'], request_name => 'usageModifications' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchUpdateBillScenarioUsageModification');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BCMPricingCalculator::BatchUpdateBillScenarioUsageModificationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BCMPricingCalculator::BatchUpdateBillScenarioUsageModification - Arguments for method BatchUpdateBillScenarioUsageModification on L<Paws::BCMPricingCalculator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchUpdateBillScenarioUsageModification on the
L<AWS Billing and Cost Management Pricing Calculator|Paws::BCMPricingCalculator> service. Use the attributes of this class
as arguments to method BatchUpdateBillScenarioUsageModification.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchUpdateBillScenarioUsageModification.

=head1 SYNOPSIS

    my $bcm-pricing-calculator = Paws->service('BCMPricingCalculator');
    my $BatchUpdateBillScenarioUsageModificationResponse =
      $bcm -pricing-calculator->BatchUpdateBillScenarioUsageModification(
      BillScenarioId     => 'MyResourceId',
      UsageModifications => [
        {
          Id      => 'MyResourceId',    # min: 36, max: 36
          Amounts => [
            {
              Amount    => 1,
              StartHour => '1970-01-01T01:00:00',

            },
            ...
          ],                            # OPTIONAL
          Group => 'MyUsageGroup',      # max: 30; OPTIONAL
        },
        ...
      ],

      );

    # Results:
    my $Errors = $BatchUpdateBillScenarioUsageModificationResponse->Errors;
    my $Items  = $BatchUpdateBillScenarioUsageModificationResponse->Items;

# Returns a L<Paws::BCMPricingCalculator::BatchUpdateBillScenarioUsageModificationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator/BatchUpdateBillScenarioUsageModification>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BillScenarioId => Str

The ID of the Bill Scenario for which you want to modify the usage
lines.



=head2 B<REQUIRED> UsageModifications => ArrayRef[L<Paws::BCMPricingCalculator::BatchUpdateBillScenarioUsageModificationEntry>]

List of usage lines that you want to update in a Bill Scenario
identified by the usage ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchUpdateBillScenarioUsageModification in L<Paws::BCMPricingCalculator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

