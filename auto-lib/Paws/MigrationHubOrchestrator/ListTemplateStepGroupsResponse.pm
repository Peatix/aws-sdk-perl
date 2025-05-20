
package Paws::MigrationHubOrchestrator::ListTemplateStepGroupsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has TemplateStepGroupSummary => (is => 'ro', isa => 'ArrayRef[Paws::MigrationHubOrchestrator::TemplateStepGroupSummary]', traits => ['NameInRequest'], request_name => 'templateStepGroupSummary', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubOrchestrator::ListTemplateStepGroupsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token.


=head2 B<REQUIRED> TemplateStepGroupSummary => ArrayRef[L<Paws::MigrationHubOrchestrator::TemplateStepGroupSummary>]

The summary of the step group in the template.


=head2 _request_id => Str


=cut

