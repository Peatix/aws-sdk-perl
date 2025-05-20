
package Paws::MigrationHubOrchestrator::ListWorkflowStepsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has WorkflowStepsSummary => (is => 'ro', isa => 'ArrayRef[Paws::MigrationHubOrchestrator::WorkflowStepSummary]', traits => ['NameInRequest'], request_name => 'workflowStepsSummary', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubOrchestrator::ListWorkflowStepsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token.


=head2 B<REQUIRED> WorkflowStepsSummary => ArrayRef[L<Paws::MigrationHubOrchestrator::WorkflowStepSummary>]

The summary of steps in a migration workflow.


=head2 _request_id => Str


=cut

