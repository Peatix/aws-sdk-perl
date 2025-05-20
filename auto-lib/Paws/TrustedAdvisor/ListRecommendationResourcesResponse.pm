
package Paws::TrustedAdvisor::ListRecommendationResourcesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has RecommendationResourceSummaries => (is => 'ro', isa => 'ArrayRef[Paws::TrustedAdvisor::RecommendationResourceSummary]', traits => ['NameInRequest'], request_name => 'recommendationResourceSummaries', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TrustedAdvisor::ListRecommendationResourcesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.


=head2 B<REQUIRED> RecommendationResourceSummaries => ArrayRef[L<Paws::TrustedAdvisor::RecommendationResourceSummary>]

A list of Recommendation Resources


=head2 _request_id => Str


=cut

