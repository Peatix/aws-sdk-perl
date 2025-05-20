
package Paws::Glue::GetDataQualityRulesetEvaluationRun;
  use Moose;
  has RunId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDataQualityRulesetEvaluationRun');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::GetDataQualityRulesetEvaluationRunResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetDataQualityRulesetEvaluationRun - Arguments for method GetDataQualityRulesetEvaluationRun on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDataQualityRulesetEvaluationRun on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method GetDataQualityRulesetEvaluationRun.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDataQualityRulesetEvaluationRun.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $GetDataQualityRulesetEvaluationRunResponse =
      $glue->GetDataQualityRulesetEvaluationRun(
      RunId => 'MyHashString',

      );

    # Results:
    my $AdditionalDataSources =
      $GetDataQualityRulesetEvaluationRunResponse->AdditionalDataSources;
    my $AdditionalRunOptions =
      $GetDataQualityRulesetEvaluationRunResponse->AdditionalRunOptions;
    my $CompletedOn = $GetDataQualityRulesetEvaluationRunResponse->CompletedOn;
    my $DataSource  = $GetDataQualityRulesetEvaluationRunResponse->DataSource;
    my $ErrorString = $GetDataQualityRulesetEvaluationRunResponse->ErrorString;
    my $ExecutionTime =
      $GetDataQualityRulesetEvaluationRunResponse->ExecutionTime;
    my $LastModifiedOn =
      $GetDataQualityRulesetEvaluationRunResponse->LastModifiedOn;
    my $NumberOfWorkers =
      $GetDataQualityRulesetEvaluationRunResponse->NumberOfWorkers;
    my $ResultIds = $GetDataQualityRulesetEvaluationRunResponse->ResultIds;
    my $Role      = $GetDataQualityRulesetEvaluationRunResponse->Role;
    my $RulesetNames =
      $GetDataQualityRulesetEvaluationRunResponse->RulesetNames;
    my $RunId     = $GetDataQualityRulesetEvaluationRunResponse->RunId;
    my $StartedOn = $GetDataQualityRulesetEvaluationRunResponse->StartedOn;
    my $Status    = $GetDataQualityRulesetEvaluationRunResponse->Status;
    my $Timeout   = $GetDataQualityRulesetEvaluationRunResponse->Timeout;

   # Returns a L<Paws::Glue::GetDataQualityRulesetEvaluationRunResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/GetDataQualityRulesetEvaluationRun>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RunId => Str

The unique run identifier associated with this run.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDataQualityRulesetEvaluationRun in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

