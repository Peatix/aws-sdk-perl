
package Paws::TrustedAdvisor::ListOrganizationRecommendationResourcesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has OrganizationRecommendationResourceSummaries => (is => 'ro', isa => 'ArrayRef[Paws::TrustedAdvisor::OrganizationRecommendationResourceSummary]', traits => ['NameInRequest'], request_name => 'organizationRecommendationResourceSummaries', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TrustedAdvisor::ListOrganizationRecommendationResourcesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.


=head2 B<REQUIRED> OrganizationRecommendationResourceSummaries => ArrayRef[L<Paws::TrustedAdvisor::OrganizationRecommendationResourceSummary>]

A list of Recommendation Resources


=head2 _request_id => Str


=cut

