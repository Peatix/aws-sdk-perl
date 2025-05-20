
package Paws::CustomerProfiles::GetWorkflowResponse;
  use Moose;
  has Attributes => (is => 'ro', isa => 'Paws::CustomerProfiles::WorkflowAttributes');
  has ErrorDescription => (is => 'ro', isa => 'Str');
  has LastUpdatedAt => (is => 'ro', isa => 'Str');
  has Metrics => (is => 'ro', isa => 'Paws::CustomerProfiles::WorkflowMetrics');
  has StartDate => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has WorkflowId => (is => 'ro', isa => 'Str');
  has WorkflowType => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::GetWorkflowResponse

=head1 ATTRIBUTES


=head2 Attributes => L<Paws::CustomerProfiles::WorkflowAttributes>

Attributes provided for workflow execution.


=head2 ErrorDescription => Str

Workflow error messages during execution (if any).


=head2 LastUpdatedAt => Str

The timestamp that represents when workflow execution last updated.


=head2 Metrics => L<Paws::CustomerProfiles::WorkflowMetrics>

Workflow specific execution metrics.


=head2 StartDate => Str

The timestamp that represents when workflow execution started.


=head2 Status => Str

Status of workflow execution.

Valid values are: C<"NOT_STARTED">, C<"IN_PROGRESS">, C<"COMPLETE">, C<"FAILED">, C<"SPLIT">, C<"RETRY">, C<"CANCELLED">
=head2 WorkflowId => Str

Unique identifier for the workflow.


=head2 WorkflowType => Str

The type of workflow. The only supported value is APPFLOW_INTEGRATION.

Valid values are: C<"APPFLOW_INTEGRATION">
=head2 _request_id => Str


=cut

