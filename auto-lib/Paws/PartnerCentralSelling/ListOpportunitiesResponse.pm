
package Paws::PartnerCentralSelling::ListOpportunitiesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has OpportunitySummaries => (is => 'ro', isa => 'ArrayRef[Paws::PartnerCentralSelling::OpportunitySummary]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PartnerCentralSelling::ListOpportunitiesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A pagination token used to retrieve the next set of results in
subsequent calls. This token is included in the response only if there
are additional result pages available.


=head2 B<REQUIRED> OpportunitySummaries => ArrayRef[L<Paws::PartnerCentralSelling::OpportunitySummary>]

An array that contains minimal details for opportunities that match the
request criteria. This summary view provides a quick overview of
relevant opportunities.


=head2 _request_id => Str


=cut

1;