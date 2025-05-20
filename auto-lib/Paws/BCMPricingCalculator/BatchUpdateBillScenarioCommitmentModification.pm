
package Paws::BCMPricingCalculator::BatchUpdateBillScenarioCommitmentModification;
  use Moose;
  has BillScenarioId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'billScenarioId' , required => 1);
  has CommitmentModifications => (is => 'ro', isa => 'ArrayRef[Paws::BCMPricingCalculator::BatchUpdateBillScenarioCommitmentModificationEntry]', traits => ['NameInRequest'], request_name => 'commitmentModifications' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchUpdateBillScenarioCommitmentModification');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BCMPricingCalculator::BatchUpdateBillScenarioCommitmentModificationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BCMPricingCalculator::BatchUpdateBillScenarioCommitmentModification - Arguments for method BatchUpdateBillScenarioCommitmentModification on L<Paws::BCMPricingCalculator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchUpdateBillScenarioCommitmentModification on the
L<AWS Billing and Cost Management Pricing Calculator|Paws::BCMPricingCalculator> service. Use the attributes of this class
as arguments to method BatchUpdateBillScenarioCommitmentModification.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchUpdateBillScenarioCommitmentModification.

=head1 SYNOPSIS

    my $bcm-pricing-calculator = Paws->service('BCMPricingCalculator');
    my $BatchUpdateBillScenarioCommitmentModificationResponse =
      $bcm -pricing-calculator->BatchUpdateBillScenarioCommitmentModification(
      BillScenarioId          => 'MyResourceId',
      CommitmentModifications => [
        {
          Id    => 'MyResourceId',    # min: 36, max: 36
          Group => 'MyUsageGroup',    # max: 30; OPTIONAL
        },
        ...
      ],

      );

    # Results:
    my $Errors = $BatchUpdateBillScenarioCommitmentModificationResponse->Errors;
    my $Items  = $BatchUpdateBillScenarioCommitmentModificationResponse->Items;

# Returns a L<Paws::BCMPricingCalculator::BatchUpdateBillScenarioCommitmentModificationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator/BatchUpdateBillScenarioCommitmentModification>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BillScenarioId => Str

The ID of the Bill Scenario for which you want to modify the commitment
group of a modeled commitment.



=head2 B<REQUIRED> CommitmentModifications => ArrayRef[L<Paws::BCMPricingCalculator::BatchUpdateBillScenarioCommitmentModificationEntry>]

List of commitments that you want to update in a Bill Scenario.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchUpdateBillScenarioCommitmentModification in L<Paws::BCMPricingCalculator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

