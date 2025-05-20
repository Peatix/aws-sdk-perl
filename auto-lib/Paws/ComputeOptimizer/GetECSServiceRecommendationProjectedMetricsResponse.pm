
package Paws::ComputeOptimizer::GetECSServiceRecommendationProjectedMetricsResponse;
  use Moose;
  has RecommendedOptionProjectedMetrics => (is => 'ro', isa => 'ArrayRef[Paws::ComputeOptimizer::ECSServiceRecommendedOptionProjectedMetric]', traits => ['NameInRequest'], request_name => 'recommendedOptionProjectedMetrics' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ComputeOptimizer::GetECSServiceRecommendationProjectedMetricsResponse

=head1 ATTRIBUTES


=head2 RecommendedOptionProjectedMetrics => ArrayRef[L<Paws::ComputeOptimizer::ECSServiceRecommendedOptionProjectedMetric>]

An array of objects that describes the projected metrics.


=head2 _request_id => Str


=cut

1;