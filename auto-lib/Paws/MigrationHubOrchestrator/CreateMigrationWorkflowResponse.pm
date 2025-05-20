
package Paws::MigrationHubOrchestrator::CreateMigrationWorkflowResponse;
  use Moose;
  has AdsApplicationConfigurationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'adsApplicationConfigurationId');
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has StepTargets => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'stepTargets');
  has Tags => (is => 'ro', isa => 'Paws::MigrationHubOrchestrator::StringMap', traits => ['NameInRequest'], request_name => 'tags');
  has TemplateId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateId');
  has WorkflowInputs => (is => 'ro', isa => 'Paws::MigrationHubOrchestrator::StepInputParameters', traits => ['NameInRequest'], request_name => 'workflowInputs');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubOrchestrator::CreateMigrationWorkflowResponse

=head1 ATTRIBUTES


=head2 AdsApplicationConfigurationId => Str

The configuration ID of the application configured in Application
Discovery Service.


=head2 Arn => Str

The Amazon Resource Name (ARN) of the migration workflow.


=head2 CreationTime => Str

The time at which the migration workflow was created.


=head2 Description => Str

The description of the migration workflow.


=head2 Id => Str

The ID of the migration workflow.


=head2 Name => Str

The name of the migration workflow.


=head2 Status => Str

The status of the migration workflow.

Valid values are: C<"CREATING">, C<"NOT_STARTED">, C<"CREATION_FAILED">, C<"STARTING">, C<"IN_PROGRESS">, C<"WORKFLOW_FAILED">, C<"PAUSED">, C<"PAUSING">, C<"PAUSING_FAILED">, C<"USER_ATTENTION_REQUIRED">, C<"DELETING">, C<"DELETION_FAILED">, C<"DELETED">, C<"COMPLETED">
=head2 StepTargets => ArrayRef[Str|Undef]

The servers on which a step will be run.


=head2 Tags => L<Paws::MigrationHubOrchestrator::StringMap>

The tags to add on a migration workflow.


=head2 TemplateId => Str

The ID of the template.


=head2 WorkflowInputs => L<Paws::MigrationHubOrchestrator::StepInputParameters>

The inputs for creating a migration workflow.


=head2 _request_id => Str


=cut

