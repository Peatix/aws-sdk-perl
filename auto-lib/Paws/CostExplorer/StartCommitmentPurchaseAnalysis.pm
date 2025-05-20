
package Paws::CostExplorer::StartCommitmentPurchaseAnalysis;
  use Moose;
  has CommitmentPurchaseAnalysisConfiguration => (is => 'ro', isa => 'Paws::CostExplorer::CommitmentPurchaseAnalysisConfiguration', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartCommitmentPurchaseAnalysis');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CostExplorer::StartCommitmentPurchaseAnalysisResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::StartCommitmentPurchaseAnalysis - Arguments for method StartCommitmentPurchaseAnalysis on L<Paws::CostExplorer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartCommitmentPurchaseAnalysis on the
L<AWS Cost Explorer Service|Paws::CostExplorer> service. Use the attributes of this class
as arguments to method StartCommitmentPurchaseAnalysis.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartCommitmentPurchaseAnalysis.

=head1 SYNOPSIS

    my $ce = Paws->service('CostExplorer');
    my $StartCommitmentPurchaseAnalysisResponse =
      $ce->StartCommitmentPurchaseAnalysis(
      CommitmentPurchaseAnalysisConfiguration => {
        SavingsPlansPurchaseAnalysisConfiguration => {
          AnalysisType =>
            'MAX_SAVINGS',    # values: MAX_SAVINGS, CUSTOM_COMMITMENT
          LookBackTimePeriod => {
            End   => 'MyYearMonthDay',    # max: 40
            Start => 'MyYearMonthDay',    # max: 40

          },
          SavingsPlansToAdd => [
            {
              InstanceFamily => 'MyGenericString',    # max: 1024; OPTIONAL
              OfferingId     => 'MyGenericString',    # max: 1024; OPTIONAL
              PaymentOption  => 'NO_UPFRONT'
              , # values: NO_UPFRONT, PARTIAL_UPFRONT, ALL_UPFRONT, LIGHT_UTILIZATION, MEDIUM_UTILIZATION, HEAVY_UTILIZATION; OPTIONAL
              Region                 => 'MyGenericString', # max: 1024; OPTIONAL
              SavingsPlansCommitment => 1,    # min: 0.001, max: 5000; OPTIONAL
              SavingsPlansType       => 'COMPUTE_SP'
              ,    # values: COMPUTE_SP, EC2_INSTANCE_SP, SAGEMAKER_SP; OPTIONAL
              TermInYears =>
                'ONE_YEAR',    # values: ONE_YEAR, THREE_YEARS; OPTIONAL
            },
            ...
          ],    # min: 1, max: 1
          AccountId    => 'MyAccountId',    # min: 12, max: 12; OPTIONAL
          AccountScope => 'PAYER',          # values: PAYER, LINKED; OPTIONAL
          SavingsPlansToExclude => [
            'MySavingsPlansId', ...         # min: 36, max: 36
          ],    # max: 1000; OPTIONAL
        },    # OPTIONAL
      },

      );

    # Results:
    my $AnalysisId = $StartCommitmentPurchaseAnalysisResponse->AnalysisId;
    my $AnalysisStartedTime =
      $StartCommitmentPurchaseAnalysisResponse->AnalysisStartedTime;
    my $EstimatedCompletionTime =
      $StartCommitmentPurchaseAnalysisResponse->EstimatedCompletionTime;

# Returns a L<Paws::CostExplorer::StartCommitmentPurchaseAnalysisResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ce/StartCommitmentPurchaseAnalysis>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CommitmentPurchaseAnalysisConfiguration => L<Paws::CostExplorer::CommitmentPurchaseAnalysisConfiguration>

The configuration for the commitment purchase analysis.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartCommitmentPurchaseAnalysis in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

