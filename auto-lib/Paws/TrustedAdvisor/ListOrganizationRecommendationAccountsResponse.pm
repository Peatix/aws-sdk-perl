
package Paws::TrustedAdvisor::ListOrganizationRecommendationAccountsResponse;
  use Moose;
  has AccountRecommendationLifecycleSummaries => (is => 'ro', isa => 'ArrayRef[Paws::TrustedAdvisor::AccountRecommendationLifecycleSummary]', traits => ['NameInRequest'], request_name => 'accountRecommendationLifecycleSummaries', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TrustedAdvisor::ListOrganizationRecommendationAccountsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountRecommendationLifecycleSummaries => ArrayRef[L<Paws::TrustedAdvisor::AccountRecommendationLifecycleSummary>]

The account recommendations lifecycles that are applicable to the
Recommendation


=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.


=head2 _request_id => Str


=cut

