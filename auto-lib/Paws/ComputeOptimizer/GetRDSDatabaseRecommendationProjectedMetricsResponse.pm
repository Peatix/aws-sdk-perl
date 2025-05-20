
package Paws::ComputeOptimizer::GetRDSDatabaseRecommendationProjectedMetricsResponse;
  use Moose;
  has RecommendedOptionProjectedMetrics => (is => 'ro', isa => 'ArrayRef[Paws::ComputeOptimizer::RDSDatabaseRecommendedOptionProjectedMetric]', traits => ['NameInRequest'], request_name => 'recommendedOptionProjectedMetrics' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ComputeOptimizer::GetRDSDatabaseRecommendationProjectedMetricsResponse

=head1 ATTRIBUTES


=head2 RecommendedOptionProjectedMetrics => ArrayRef[L<Paws::ComputeOptimizer::RDSDatabaseRecommendedOptionProjectedMetric>]

An array of objects that describes the projected metrics.


=head2 _request_id => Str


=cut

1;