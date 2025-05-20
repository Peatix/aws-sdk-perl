
package Paws::PartnerCentralSelling::ListSolutionsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has SolutionSummaries => (is => 'ro', isa => 'ArrayRef[Paws::PartnerCentralSelling::SolutionBase]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PartnerCentralSelling::ListSolutionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A pagination token used to retrieve the next set of results in
subsequent calls. This token is included in the response only if there
are additional result pages available.


=head2 B<REQUIRED> SolutionSummaries => ArrayRef[L<Paws::PartnerCentralSelling::SolutionBase>]

An array with minimal details for solutions matching the request
criteria.


=head2 _request_id => Str


=cut

1;