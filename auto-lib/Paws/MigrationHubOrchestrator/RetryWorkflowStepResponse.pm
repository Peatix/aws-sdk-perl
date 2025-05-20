
package Paws::MigrationHubOrchestrator::RetryWorkflowStepResponse;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has StepGroupId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stepGroupId');
  has WorkflowId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workflowId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubOrchestrator::RetryWorkflowStepResponse

=head1 ATTRIBUTES


=head2 Id => Str

The ID of the step.


=head2 Status => Str

The status of the step.

Valid values are: C<"AWAITING_DEPENDENCIES">, C<"SKIPPED">, C<"READY">, C<"IN_PROGRESS">, C<"COMPLETED">, C<"FAILED">, C<"PAUSED">, C<"USER_ATTENTION_REQUIRED">
=head2 StepGroupId => Str

The ID of the step group.


=head2 WorkflowId => Str

The ID of the migration workflow.


=head2 _request_id => Str


=cut

