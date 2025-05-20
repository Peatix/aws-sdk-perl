
package Paws::SageMaker::ListInferenceRecommendationsJobStepsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Steps => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::InferenceRecommendationsJobStep]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListInferenceRecommendationsJobStepsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token that you can specify in your next request to return more
results from the list.


=head2 Steps => ArrayRef[L<Paws::SageMaker::InferenceRecommendationsJobStep>]

A list of all subtask details in Inference Recommender.


=head2 _request_id => Str


=cut

1;