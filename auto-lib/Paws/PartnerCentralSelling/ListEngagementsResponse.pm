
package Paws::PartnerCentralSelling::ListEngagementsResponse;
  use Moose;
  has EngagementSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::PartnerCentralSelling::EngagementSummary]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PartnerCentralSelling::ListEngagementsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> EngagementSummaryList => ArrayRef[L<Paws::PartnerCentralSelling::EngagementSummary>]

An array of engagement summary objects.


=head2 NextToken => Str

The token to retrieve the next set of results. This field will be null
if there are no more results.


=head2 _request_id => Str


=cut

1;