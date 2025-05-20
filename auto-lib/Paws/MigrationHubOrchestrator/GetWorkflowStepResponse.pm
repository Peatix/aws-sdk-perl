
package Paws::MigrationHubOrchestrator::GetWorkflowStepResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has EndTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endTime');
  has LastStartTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastStartTime');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Next => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'next');
  has NoOfSrvCompleted => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'noOfSrvCompleted');
  has NoOfSrvFailed => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'noOfSrvFailed');
  has Outputs => (is => 'ro', isa => 'ArrayRef[Paws::MigrationHubOrchestrator::WorkflowStepOutput]', traits => ['NameInRequest'], request_name => 'outputs');
  has Owner => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'owner');
  has Previous => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'previous');
  has ScriptOutputLocation => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'scriptOutputLocation');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has StatusMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'statusMessage');
  has StepActionType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stepActionType');
  has StepGroupId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stepGroupId');
  has StepId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stepId');
  has StepTarget => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'stepTarget');
  has TotalNoOfSrv => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'totalNoOfSrv');
  has WorkflowId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workflowId');
  has WorkflowStepAutomationConfiguration => (is => 'ro', isa => 'Paws::MigrationHubOrchestrator::WorkflowStepAutomationConfiguration', traits => ['NameInRequest'], request_name => 'workflowStepAutomationConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubOrchestrator::GetWorkflowStepResponse

=head1 ATTRIBUTES


=head2 CreationTime => Str

The time at which the step was created.


=head2 Description => Str

The description of the step.


=head2 EndTime => Str

The time at which the step ended.


=head2 LastStartTime => Str

The time at which the workflow was last started.


=head2 Name => Str

The name of the step.


=head2 Next => ArrayRef[Str|Undef]

The next step.


=head2 NoOfSrvCompleted => Int

The number of servers that have been migrated.


=head2 NoOfSrvFailed => Int

The number of servers that have failed to migrate.


=head2 Outputs => ArrayRef[L<Paws::MigrationHubOrchestrator::WorkflowStepOutput>]

The outputs of the step.


=head2 Owner => Str

The owner of the step.

Valid values are: C<"AWS_MANAGED">, C<"CUSTOM">
=head2 Previous => ArrayRef[Str|Undef]

The previous step.


=head2 ScriptOutputLocation => Str

The output location of the script.


=head2 Status => Str

The status of the step.

Valid values are: C<"AWAITING_DEPENDENCIES">, C<"SKIPPED">, C<"READY">, C<"IN_PROGRESS">, C<"COMPLETED">, C<"FAILED">, C<"PAUSED">, C<"USER_ATTENTION_REQUIRED">
=head2 StatusMessage => Str

The status message of the migration workflow.


=head2 StepActionType => Str

The action type of the step. You must run and update the status of a
manual step for the workflow to continue after the completion of the
step.

Valid values are: C<"MANUAL">, C<"AUTOMATED">
=head2 StepGroupId => Str

The ID of the step group.


=head2 StepId => Str

The ID of the step.


=head2 StepTarget => ArrayRef[Str|Undef]

The servers on which a step will be run.


=head2 TotalNoOfSrv => Int

The total number of servers that have been migrated.


=head2 WorkflowId => Str

The ID of the migration workflow.


=head2 WorkflowStepAutomationConfiguration => L<Paws::MigrationHubOrchestrator::WorkflowStepAutomationConfiguration>

The custom script to run tests on source or target environments.


=head2 _request_id => Str


=cut

