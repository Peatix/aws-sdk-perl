
package Paws::CleanRooms::ListCollaborationPrivacyBudgetTemplatesOutput;
  use Moose;
  has CollaborationPrivacyBudgetTemplateSummaries => (is => 'ro', isa => 'ArrayRef[Paws::CleanRooms::CollaborationPrivacyBudgetTemplateSummary]', traits => ['NameInRequest'], request_name => 'collaborationPrivacyBudgetTemplateSummaries', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::ListCollaborationPrivacyBudgetTemplatesOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> CollaborationPrivacyBudgetTemplateSummaries => ArrayRef[L<Paws::CleanRooms::CollaborationPrivacyBudgetTemplateSummary>]

An array that summarizes the collaboration privacy budget templates.
The summary includes collaboration information, creation information,
the privacy budget type.


=head2 NextToken => Str

The pagination token that's used to fetch the next set of results.


=head2 _request_id => Str


=cut

