
package Paws::Wisdom::GetRecommendationsResponse;
  use Moose;
  has Recommendations => (is => 'ro', isa => 'ArrayRef[Paws::Wisdom::RecommendationData]', traits => ['NameInRequest'], request_name => 'recommendations', required => 1);
  has Triggers => (is => 'ro', isa => 'ArrayRef[Paws::Wisdom::RecommendationTrigger]', traits => ['NameInRequest'], request_name => 'triggers');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Wisdom::GetRecommendationsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Recommendations => ArrayRef[L<Paws::Wisdom::RecommendationData>]

The recommendations.


=head2 Triggers => ArrayRef[L<Paws::Wisdom::RecommendationTrigger>]

The triggers corresponding to recommendations.


=head2 _request_id => Str


=cut

