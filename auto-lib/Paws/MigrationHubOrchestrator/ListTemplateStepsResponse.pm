
package Paws::MigrationHubOrchestrator::ListTemplateStepsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has TemplateStepSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::MigrationHubOrchestrator::TemplateStepSummary]', traits => ['NameInRequest'], request_name => 'templateStepSummaryList');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubOrchestrator::ListTemplateStepsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token.


=head2 TemplateStepSummaryList => ArrayRef[L<Paws::MigrationHubOrchestrator::TemplateStepSummary>]

The list of summaries of steps in a template.


=head2 _request_id => Str


=cut

