
package Paws::MigrationHubOrchestrator::CreateWorkflowStepGroupResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Next => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'next');
  has Previous => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'previous');
  has Tools => (is => 'ro', isa => 'ArrayRef[Paws::MigrationHubOrchestrator::Tool]', traits => ['NameInRequest'], request_name => 'tools');
  has WorkflowId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workflowId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubOrchestrator::CreateWorkflowStepGroupResponse

=head1 ATTRIBUTES


=head2 CreationTime => Str

The time at which the step group is created.


=head2 Description => Str

The description of the step group.


=head2 Id => Str

The ID of the step group.


=head2 Name => Str

The name of the step group.


=head2 Next => ArrayRef[Str|Undef]

The next step group.


=head2 Previous => ArrayRef[Str|Undef]

The previous step group.


=head2 Tools => ArrayRef[L<Paws::MigrationHubOrchestrator::Tool>]

List of AWS services utilized in a migration workflow.


=head2 WorkflowId => Str

The ID of the migration workflow that contains the step group.


=head2 _request_id => Str


=cut

