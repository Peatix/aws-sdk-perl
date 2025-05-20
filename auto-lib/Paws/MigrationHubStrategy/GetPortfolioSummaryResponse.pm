
package Paws::MigrationHubStrategy::GetPortfolioSummaryResponse;
  use Moose;
  has AssessmentSummary => (is => 'ro', isa => 'Paws::MigrationHubStrategy::AssessmentSummary', traits => ['NameInRequest'], request_name => 'assessmentSummary');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubStrategy::GetPortfolioSummaryResponse

=head1 ATTRIBUTES


=head2 AssessmentSummary => L<Paws::MigrationHubStrategy::AssessmentSummary>

An assessment summary for the portfolio including the number of servers
to rehost and the overall number of anti-patterns.


=head2 _request_id => Str


=cut

