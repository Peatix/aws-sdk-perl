
package Paws::MigrationHubOrchestrator::GetWorkflowStep;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);
  has StepGroupId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'stepGroupId', required => 1);
  has WorkflowId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'workflowId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetWorkflowStep');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workflowstep/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MigrationHubOrchestrator::GetWorkflowStepResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubOrchestrator::GetWorkflowStep - Arguments for method GetWorkflowStep on L<Paws::MigrationHubOrchestrator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetWorkflowStep on the
L<AWS Migration Hub Orchestrator|Paws::MigrationHubOrchestrator> service. Use the attributes of this class
as arguments to method GetWorkflowStep.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetWorkflowStep.

=head1 SYNOPSIS

    my $migrationhub-orchestrator = Paws->service('MigrationHubOrchestrator');
    my $GetWorkflowStepResponse = $migrationhub -orchestrator->GetWorkflowStep(
      Id          => 'MyStepId',
      StepGroupId => 'MyStepGroupId',
      WorkflowId  => 'MyMigrationWorkflowId',

    );

    # Results:
    my $CreationTime         = $GetWorkflowStepResponse->CreationTime;
    my $Description          = $GetWorkflowStepResponse->Description;
    my $EndTime              = $GetWorkflowStepResponse->EndTime;
    my $LastStartTime        = $GetWorkflowStepResponse->LastStartTime;
    my $Name                 = $GetWorkflowStepResponse->Name;
    my $Next                 = $GetWorkflowStepResponse->Next;
    my $NoOfSrvCompleted     = $GetWorkflowStepResponse->NoOfSrvCompleted;
    my $NoOfSrvFailed        = $GetWorkflowStepResponse->NoOfSrvFailed;
    my $Outputs              = $GetWorkflowStepResponse->Outputs;
    my $Owner                = $GetWorkflowStepResponse->Owner;
    my $Previous             = $GetWorkflowStepResponse->Previous;
    my $ScriptOutputLocation = $GetWorkflowStepResponse->ScriptOutputLocation;
    my $Status               = $GetWorkflowStepResponse->Status;
    my $StatusMessage        = $GetWorkflowStepResponse->StatusMessage;
    my $StepActionType       = $GetWorkflowStepResponse->StepActionType;
    my $StepGroupId          = $GetWorkflowStepResponse->StepGroupId;
    my $StepId               = $GetWorkflowStepResponse->StepId;
    my $StepTarget           = $GetWorkflowStepResponse->StepTarget;
    my $TotalNoOfSrv         = $GetWorkflowStepResponse->TotalNoOfSrv;
    my $WorkflowId           = $GetWorkflowStepResponse->WorkflowId;
    my $WorkflowStepAutomationConfiguration =
      $GetWorkflowStepResponse->WorkflowStepAutomationConfiguration;

  # Returns a L<Paws::MigrationHubOrchestrator::GetWorkflowStepResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/migrationhub-orchestrator/GetWorkflowStep>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID of the step.



=head2 B<REQUIRED> StepGroupId => Str

The ID of the step group.



=head2 B<REQUIRED> WorkflowId => Str

The ID of the migration workflow.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetWorkflowStep in L<Paws::MigrationHubOrchestrator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

