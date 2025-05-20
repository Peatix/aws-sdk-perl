
package Paws::CleanRooms::ListCollaborationPrivacyBudgetsOutput;
  use Moose;
  has CollaborationPrivacyBudgetSummaries => (is => 'ro', isa => 'ArrayRef[Paws::CleanRooms::CollaborationPrivacyBudgetSummary]', traits => ['NameInRequest'], request_name => 'collaborationPrivacyBudgetSummaries', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::ListCollaborationPrivacyBudgetsOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> CollaborationPrivacyBudgetSummaries => ArrayRef[L<Paws::CleanRooms::CollaborationPrivacyBudgetSummary>]

Summaries of the collaboration privacy budgets.


=head2 NextToken => Str

The pagination token that's used to fetch the next set of results.


=head2 _request_id => Str


=cut

