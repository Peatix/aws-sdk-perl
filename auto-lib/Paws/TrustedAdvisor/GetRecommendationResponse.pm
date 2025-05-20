
package Paws::TrustedAdvisor::GetRecommendationResponse;
  use Moose;
  has Recommendation => (is => 'ro', isa => 'Paws::TrustedAdvisor::Recommendation', traits => ['NameInRequest'], request_name => 'recommendation');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TrustedAdvisor::GetRecommendationResponse

=head1 ATTRIBUTES


=head2 Recommendation => L<Paws::TrustedAdvisor::Recommendation>

The Recommendation


=head2 _request_id => Str


=cut

