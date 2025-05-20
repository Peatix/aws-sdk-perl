
package Paws::CleanRooms::ListPrivacyBudgetTemplatesOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has PrivacyBudgetTemplateSummaries => (is => 'ro', isa => 'ArrayRef[Paws::CleanRooms::PrivacyBudgetTemplateSummary]', traits => ['NameInRequest'], request_name => 'privacyBudgetTemplateSummaries', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::ListPrivacyBudgetTemplatesOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token that's used to fetch the next set of results.


=head2 B<REQUIRED> PrivacyBudgetTemplateSummaries => ArrayRef[L<Paws::CleanRooms::PrivacyBudgetTemplateSummary>]

An array that summarizes the privacy budget templates. The summary
includes collaboration information, creation information, and privacy
budget type.


=head2 _request_id => Str


=cut

