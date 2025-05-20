
package Paws::PartnerCentralSelling::ListEngagementInvitationsResponse;
  use Moose;
  has EngagementInvitationSummaries => (is => 'ro', isa => 'ArrayRef[Paws::PartnerCentralSelling::EngagementInvitationSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PartnerCentralSelling::ListEngagementInvitationsResponse

=head1 ATTRIBUTES


=head2 EngagementInvitationSummaries => ArrayRef[L<Paws::PartnerCentralSelling::EngagementInvitationSummary>]

An array containing summaries of engagement invitations. Each summary
includes information such as the invitation title, invitation date, and
the current status of the invitation.


=head2 NextToken => Str

A pagination token returned when there are more results available than
can be returned in a single call. Use this token to retrieve additional
pages of engagement invitation summaries.


=head2 _request_id => Str


=cut

1;