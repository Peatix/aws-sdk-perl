
package Paws::SageMaker::GetScalingConfigurationRecommendationResponse;
  use Moose;
  has DynamicScalingConfiguration => (is => 'ro', isa => 'Paws::SageMaker::DynamicScalingConfiguration');
  has EndpointName => (is => 'ro', isa => 'Str');
  has InferenceRecommendationsJobName => (is => 'ro', isa => 'Str');
  has Metric => (is => 'ro', isa => 'Paws::SageMaker::ScalingPolicyMetric');
  has RecommendationId => (is => 'ro', isa => 'Str');
  has ScalingPolicyObjective => (is => 'ro', isa => 'Paws::SageMaker::ScalingPolicyObjective');
  has TargetCpuUtilizationPerCore => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::GetScalingConfigurationRecommendationResponse

=head1 ATTRIBUTES


=head2 DynamicScalingConfiguration => L<Paws::SageMaker::DynamicScalingConfiguration>

An object with the recommended values for you to specify when creating
an autoscaling policy.


=head2 EndpointName => Str

The name of an endpoint benchmarked during a previously completed
Inference Recommender job.


=head2 InferenceRecommendationsJobName => Str

The name of a previously completed Inference Recommender job.


=head2 Metric => L<Paws::SageMaker::ScalingPolicyMetric>

An object with a list of metrics that were benchmarked during the
previously completed Inference Recommender job.


=head2 RecommendationId => Str

The recommendation ID of a previously completed inference
recommendation.


=head2 ScalingPolicyObjective => L<Paws::SageMaker::ScalingPolicyObjective>

An object representing the anticipated traffic pattern for an endpoint
that you specified in the request.


=head2 TargetCpuUtilizationPerCore => Int

The percentage of how much utilization you want an instance to use
before autoscaling, which you specified in the request. The default
value is 50%.


=head2 _request_id => Str


=cut

1;