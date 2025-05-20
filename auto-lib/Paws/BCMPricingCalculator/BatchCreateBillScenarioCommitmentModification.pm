
package Paws::BCMPricingCalculator::BatchCreateBillScenarioCommitmentModification;
  use Moose;
  has BillScenarioId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'billScenarioId' , required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken' );
  has CommitmentModifications => (is => 'ro', isa => 'ArrayRef[Paws::BCMPricingCalculator::BatchCreateBillScenarioCommitmentModificationEntry]', traits => ['NameInRequest'], request_name => 'commitmentModifications' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchCreateBillScenarioCommitmentModification');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BCMPricingCalculator::BatchCreateBillScenarioCommitmentModificationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BCMPricingCalculator::BatchCreateBillScenarioCommitmentModification - Arguments for method BatchCreateBillScenarioCommitmentModification on L<Paws::BCMPricingCalculator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchCreateBillScenarioCommitmentModification on the
L<AWS Billing and Cost Management Pricing Calculator|Paws::BCMPricingCalculator> service. Use the attributes of this class
as arguments to method BatchCreateBillScenarioCommitmentModification.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchCreateBillScenarioCommitmentModification.

=head1 SYNOPSIS

    my $bcm-pricing-calculator = Paws->service('BCMPricingCalculator');
    my $BatchCreateBillScenarioCommitmentModificationResponse =
      $bcm -pricing-calculator->BatchCreateBillScenarioCommitmentModification(
      BillScenarioId          => 'MyResourceId',
      CommitmentModifications => [
        {
          CommitmentAction => {
            AddReservedInstanceAction => {
              InstanceCount               => 1,    # min: 1; OPTIONAL
              ReservedInstancesOfferingId =>
                'MyUuid',                          # min: 36, max: 36; OPTIONAL
            },    # OPTIONAL
            AddSavingsPlanAction => {
              Commitment            => 1,   # min: 0.001, max: 1000000; OPTIONAL
              SavingsPlanOfferingId => 'MyUuid',    # min: 36, max: 36; OPTIONAL
            },    # OPTIONAL
            NegateReservedInstanceAction => {
              ReservedInstancesId => 'MyUuid',    # min: 36, max: 36; OPTIONAL
            },    # OPTIONAL
            NegateSavingsPlanAction => {
              SavingsPlanId => 'MyUuid',    # min: 36, max: 36; OPTIONAL
            },    # OPTIONAL
          },
          Key            => 'MyKey',           # max: 10
          UsageAccountId => 'MyAccountId',     # min: 12, max: 12
          Group          => 'MyUsageGroup',    # max: 30; OPTIONAL
        },
        ...
      ],
      ClientToken => 'MyClientToken',          # OPTIONAL
      );

    # Results:
    my $Errors = $BatchCreateBillScenarioCommitmentModificationResponse->Errors;
    my $Items  = $BatchCreateBillScenarioCommitmentModificationResponse->Items;

# Returns a L<Paws::BCMPricingCalculator::BatchCreateBillScenarioCommitmentModificationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator/BatchCreateBillScenarioCommitmentModification>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BillScenarioId => Str

The ID of the Bill Scenario for which you want to create the modeled
commitment.



=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.



=head2 B<REQUIRED> CommitmentModifications => ArrayRef[L<Paws::BCMPricingCalculator::BatchCreateBillScenarioCommitmentModificationEntry>]

List of commitments that you want to model in the Bill Scenario.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchCreateBillScenarioCommitmentModification in L<Paws::BCMPricingCalculator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

