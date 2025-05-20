
package Paws::MigrationHubOrchestrator::ListMigrationWorkflowTemplatesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has TemplateSummary => (is => 'ro', isa => 'ArrayRef[Paws::MigrationHubOrchestrator::TemplateSummary]', traits => ['NameInRequest'], request_name => 'templateSummary', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubOrchestrator::ListMigrationWorkflowTemplatesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token.


=head2 B<REQUIRED> TemplateSummary => ArrayRef[L<Paws::MigrationHubOrchestrator::TemplateSummary>]

The summary of the template.


=head2 _request_id => Str


=cut

