
package Paws::DMS::DescribeFleetAdvisorLsaAnalysisResponse;
  use Moose;
  has Analysis => (is => 'ro', isa => 'ArrayRef[Paws::DMS::FleetAdvisorLsaAnalysisResponse]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::DescribeFleetAdvisorLsaAnalysisResponse

=head1 ATTRIBUTES


=head2 Analysis => ArrayRef[L<Paws::DMS::FleetAdvisorLsaAnalysisResponse>]

A list of C<FleetAdvisorLsaAnalysisResponse> objects.


=head2 NextToken => Str

If C<NextToken> is returned, there are more results available. The
value of C<NextToken> is a unique pagination token for each page. Make
the call again using the returned token to retrieve the next page. Keep
all other arguments unchanged.


=head2 _request_id => Str


=cut

1;