
package Paws::PartnerCentralSelling::ListEngagementByAcceptingInvitationTasksResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has TaskSummaries => (is => 'ro', isa => 'ArrayRef[Paws::PartnerCentralSelling::ListEngagementByAcceptingInvitationTaskSummary]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PartnerCentralSelling::ListEngagementByAcceptingInvitationTasksResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token used for pagination to retrieve the next page of results.If
there are more results available, this field will contain a token that
can be used in a subsequent API call to retrieve the next page. If
there are no more results, this field will be null or an empty string.


=head2 TaskSummaries => ArrayRef[L<Paws::PartnerCentralSelling::ListEngagementByAcceptingInvitationTaskSummary>]

An array of C<EngagementByAcceptingInvitationTaskSummary> objects, each
representing a task that matches the specified filters. The array may
be empty if no tasks match the criteria.


=head2 _request_id => Str


=cut

1;