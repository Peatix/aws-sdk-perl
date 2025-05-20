
package Paws::MigrationHubOrchestrator::ListMigrationWorkflowsResponse;
  use Moose;
  has MigrationWorkflowSummary => (is => 'ro', isa => 'ArrayRef[Paws::MigrationHubOrchestrator::MigrationWorkflowSummary]', traits => ['NameInRequest'], request_name => 'migrationWorkflowSummary', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubOrchestrator::ListMigrationWorkflowsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> MigrationWorkflowSummary => ArrayRef[L<Paws::MigrationHubOrchestrator::MigrationWorkflowSummary>]

The summary of the migration workflow.


=head2 NextToken => Str

The pagination token.


=head2 _request_id => Str


=cut

