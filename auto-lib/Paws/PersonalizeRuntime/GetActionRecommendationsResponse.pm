
package Paws::PersonalizeRuntime::GetActionRecommendationsResponse;
  use Moose;
  has ActionList => (is => 'ro', isa => 'ArrayRef[Paws::PersonalizeRuntime::PredictedAction]', traits => ['NameInRequest'], request_name => 'actionList');
  has RecommendationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'recommendationId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PersonalizeRuntime::GetActionRecommendationsResponse

=head1 ATTRIBUTES


=head2 ActionList => ArrayRef[L<Paws::PersonalizeRuntime::PredictedAction>]

A list of action recommendations sorted in descending order by
prediction score. There can be a maximum of 100 actions in the list.
For information about action scores, see How action recommendation
scoring works
(https://docs.aws.amazon.com/personalize/latest/dg/how-action-recommendation-scoring-works.html).


=head2 RecommendationId => Str

The ID of the recommendation.


=head2 _request_id => Str


=cut

