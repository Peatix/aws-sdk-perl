
package Paws::SageMaker::ListInferenceRecommendationsJobsResponse;
  use Moose;
  has InferenceRecommendationsJobs => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::InferenceRecommendationsJob]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListInferenceRecommendationsJobsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> InferenceRecommendationsJobs => ArrayRef[L<Paws::SageMaker::InferenceRecommendationsJob>]

The recommendations created from the Amazon SageMaker Inference
Recommender job.


=head2 NextToken => Str

A token for getting the next set of recommendations, if there are any.


=head2 _request_id => Str


=cut

1;