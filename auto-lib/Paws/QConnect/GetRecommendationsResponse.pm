
package Paws::QConnect::GetRecommendationsResponse;
  use Moose;
  has Recommendations => (is => 'ro', isa => 'ArrayRef[Paws::QConnect::RecommendationData]', traits => ['NameInRequest'], request_name => 'recommendations', required => 1);
  has Triggers => (is => 'ro', isa => 'ArrayRef[Paws::QConnect::RecommendationTrigger]', traits => ['NameInRequest'], request_name => 'triggers');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::GetRecommendationsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Recommendations => ArrayRef[L<Paws::QConnect::RecommendationData>]

The recommendations.


=head2 Triggers => ArrayRef[L<Paws::QConnect::RecommendationTrigger>]

The triggers corresponding to recommendations.


=head2 _request_id => Str


=cut

