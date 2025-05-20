
package Paws::PartnerCentralSelling::ListEngagementResourceAssociationsResponse;
  use Moose;
  has EngagementResourceAssociationSummaries => (is => 'ro', isa => 'ArrayRef[Paws::PartnerCentralSelling::EngagementResourceAssociationSummary]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PartnerCentralSelling::ListEngagementResourceAssociationsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> EngagementResourceAssociationSummaries => ArrayRef[L<Paws::PartnerCentralSelling::EngagementResourceAssociationSummary>]

A list of engagement-resource association summaries.


=head2 NextToken => Str

A token to retrieve the next set of results. Use this token in a
subsequent request to retrieve additional results if the response was
truncated.


=head2 _request_id => Str


=cut

1;