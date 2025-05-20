
package Paws::TrustedAdvisor::ListOrganizationRecommendationsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has OrganizationRecommendationSummaries => (is => 'ro', isa => 'ArrayRef[Paws::TrustedAdvisor::OrganizationRecommendationSummary]', traits => ['NameInRequest'], request_name => 'organizationRecommendationSummaries', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TrustedAdvisor::ListOrganizationRecommendationsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.


=head2 B<REQUIRED> OrganizationRecommendationSummaries => ArrayRef[L<Paws::TrustedAdvisor::OrganizationRecommendationSummary>]

The list of Recommendations


=head2 _request_id => Str


=cut

