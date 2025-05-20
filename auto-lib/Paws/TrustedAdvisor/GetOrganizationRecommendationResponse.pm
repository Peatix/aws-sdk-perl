
package Paws::TrustedAdvisor::GetOrganizationRecommendationResponse;
  use Moose;
  has OrganizationRecommendation => (is => 'ro', isa => 'Paws::TrustedAdvisor::OrganizationRecommendation', traits => ['NameInRequest'], request_name => 'organizationRecommendation');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TrustedAdvisor::GetOrganizationRecommendationResponse

=head1 ATTRIBUTES


=head2 OrganizationRecommendation => L<Paws::TrustedAdvisor::OrganizationRecommendation>

The Recommendation


=head2 _request_id => Str


=cut

