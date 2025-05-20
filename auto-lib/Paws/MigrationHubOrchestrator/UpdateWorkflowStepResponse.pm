
package Paws::MigrationHubOrchestrator::UpdateWorkflowStepResponse;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has StepGroupId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stepGroupId');
  has WorkflowId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workflowId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubOrchestrator::UpdateWorkflowStepResponse

=head1 ATTRIBUTES


=head2 Id => Str

The ID of the step.


=head2 Name => Str

The name of the step.


=head2 StepGroupId => Str

The ID of the step group.


=head2 WorkflowId => Str

The ID of the migration workflow.


=head2 _request_id => Str


=cut

