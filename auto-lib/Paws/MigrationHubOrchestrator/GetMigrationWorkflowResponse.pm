
package Paws::MigrationHubOrchestrator::GetMigrationWorkflowResponse;
  use Moose;
  has AdsApplicationConfigurationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'adsApplicationConfigurationId');
  has AdsApplicationName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'adsApplicationName');
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has CompletedSteps => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'completedSteps');
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has EndTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endTime');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has LastModifiedTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastModifiedTime');
  has LastStartTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastStartTime');
  has LastStopTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastStopTime');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has StatusMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'statusMessage');
  has Tags => (is => 'ro', isa => 'Paws::MigrationHubOrchestrator::StringMap', traits => ['NameInRequest'], request_name => 'tags');
  has TemplateId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateId');
  has Tools => (is => 'ro', isa => 'ArrayRef[Paws::MigrationHubOrchestrator::Tool]', traits => ['NameInRequest'], request_name => 'tools');
  has TotalSteps => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'totalSteps');
  has WorkflowBucket => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workflowBucket');
  has WorkflowInputs => (is => 'ro', isa => 'Paws::MigrationHubOrchestrator::StepInputParameters', traits => ['NameInRequest'], request_name => 'workflowInputs');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubOrchestrator::GetMigrationWorkflowResponse

=head1 ATTRIBUTES


=head2 AdsApplicationConfigurationId => Str

The configuration ID of the application configured in Application
Discovery Service.


=head2 AdsApplicationName => Str

The name of the application configured in Application Discovery
Service.


=head2 Arn => Str

The Amazon Resource Name (ARN) of the migration workflow.


=head2 CompletedSteps => Int

Get a list of completed steps in the migration workflow.


=head2 CreationTime => Str

The time at which the migration workflow was created.


=head2 Description => Str

The description of the migration workflow.


=head2 EndTime => Str

The time at which the migration workflow ended.


=head2 Id => Str

The ID of the migration workflow.


=head2 LastModifiedTime => Str

The time at which the migration workflow was last modified.


=head2 LastStartTime => Str

The time at which the migration workflow was last started.


=head2 LastStopTime => Str

The time at which the migration workflow was last stopped.


=head2 Name => Str

The name of the migration workflow.


=head2 Status => Str

The status of the migration workflow.

Valid values are: C<"CREATING">, C<"NOT_STARTED">, C<"CREATION_FAILED">, C<"STARTING">, C<"IN_PROGRESS">, C<"WORKFLOW_FAILED">, C<"PAUSED">, C<"PAUSING">, C<"PAUSING_FAILED">, C<"USER_ATTENTION_REQUIRED">, C<"DELETING">, C<"DELETION_FAILED">, C<"DELETED">, C<"COMPLETED">
=head2 StatusMessage => Str

The status message of the migration workflow.


=head2 Tags => L<Paws::MigrationHubOrchestrator::StringMap>

The tags added to the migration workflow.


=head2 TemplateId => Str

The ID of the template.


=head2 Tools => ArrayRef[L<Paws::MigrationHubOrchestrator::Tool>]

List of AWS services utilized in a migration workflow.


=head2 TotalSteps => Int

The total number of steps in the migration workflow.


=head2 WorkflowBucket => Str

The Amazon S3 bucket where the migration logs are stored.


=head2 WorkflowInputs => L<Paws::MigrationHubOrchestrator::StepInputParameters>

The inputs required for creating the migration workflow.


=head2 _request_id => Str


=cut

