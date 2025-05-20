
package Paws::CleanRooms::ListPrivacyBudgetsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has PrivacyBudgetSummaries => (is => 'ro', isa => 'ArrayRef[Paws::CleanRooms::PrivacyBudgetSummary]', traits => ['NameInRequest'], request_name => 'privacyBudgetSummaries', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::ListPrivacyBudgetsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token that's used to fetch the next set of results.


=head2 B<REQUIRED> PrivacyBudgetSummaries => ArrayRef[L<Paws::CleanRooms::PrivacyBudgetSummary>]

An array that summarizes the privacy budgets. The summary includes
collaboration information, membership information, privacy budget
template information, and privacy budget details.


=head2 _request_id => Str


=cut

