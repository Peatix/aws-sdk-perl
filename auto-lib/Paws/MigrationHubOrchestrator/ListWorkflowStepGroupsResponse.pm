
package Paws::MigrationHubOrchestrator::ListWorkflowStepGroupsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has WorkflowStepGroupsSummary => (is => 'ro', isa => 'ArrayRef[Paws::MigrationHubOrchestrator::WorkflowStepGroupSummary]', traits => ['NameInRequest'], request_name => 'workflowStepGroupsSummary', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubOrchestrator::ListWorkflowStepGroupsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token.


=head2 B<REQUIRED> WorkflowStepGroupsSummary => ArrayRef[L<Paws::MigrationHubOrchestrator::WorkflowStepGroupSummary>]

The summary of step groups in a migration workflow.


=head2 _request_id => Str


=cut

