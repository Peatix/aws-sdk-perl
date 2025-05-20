
package Paws::TrustedAdvisor::BatchUpdateRecommendationResourceExclusionResponse;
  use Moose;
  has BatchUpdateRecommendationResourceExclusionErrors => (is => 'ro', isa => 'ArrayRef[Paws::TrustedAdvisor::UpdateRecommendationResourceExclusionError]', traits => ['NameInRequest'], request_name => 'batchUpdateRecommendationResourceExclusionErrors', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TrustedAdvisor::BatchUpdateRecommendationResourceExclusionResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> BatchUpdateRecommendationResourceExclusionErrors => ArrayRef[L<Paws::TrustedAdvisor::UpdateRecommendationResourceExclusionError>]

A list of recommendation resource ARNs whose exclusion status failed to
update, if any


=head2 _request_id => Str


=cut

