
package Paws::MigrationHubOrchestrator::GetWorkflowStepGroupResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has EndTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endTime');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has LastModifiedTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastModifiedTime');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Next => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'next');
  has Owner => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'owner');
  has Previous => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'previous');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has Tools => (is => 'ro', isa => 'ArrayRef[Paws::MigrationHubOrchestrator::Tool]', traits => ['NameInRequest'], request_name => 'tools');
  has WorkflowId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workflowId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubOrchestrator::GetWorkflowStepGroupResponse

=head1 ATTRIBUTES


=head2 CreationTime => Str

The time at which the step group was created.


=head2 Description => Str

The description of the step group.


=head2 EndTime => Str

The time at which the step group ended.


=head2 Id => Str

The ID of the step group.


=head2 LastModifiedTime => Str

The time at which the step group was last modified.


=head2 Name => Str

The name of the step group.


=head2 Next => ArrayRef[Str|Undef]

The next step group.


=head2 Owner => Str

The owner of the step group.

Valid values are: C<"AWS_MANAGED">, C<"CUSTOM">
=head2 Previous => ArrayRef[Str|Undef]

The previous step group.


=head2 Status => Str

The status of the step group.

Valid values are: C<"AWAITING_DEPENDENCIES">, C<"READY">, C<"IN_PROGRESS">, C<"COMPLETED">, C<"FAILED">, C<"PAUSED">, C<"PAUSING">, C<"USER_ATTENTION_REQUIRED">
=head2 Tools => ArrayRef[L<Paws::MigrationHubOrchestrator::Tool>]

List of AWS services utilized in a migration workflow.


=head2 WorkflowId => Str

The ID of the migration workflow.


=head2 _request_id => Str


=cut

