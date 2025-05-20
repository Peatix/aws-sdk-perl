
package Paws::LookoutMetrics::GetDataQualityMetricsResponse;
  use Moose;
  has AnomalyDetectorDataQualityMetricList => (is => 'ro', isa => 'ArrayRef[Paws::LookoutMetrics::AnomalyDetectorDataQualityMetric]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutMetrics::GetDataQualityMetricsResponse

=head1 ATTRIBUTES


=head2 AnomalyDetectorDataQualityMetricList => ArrayRef[L<Paws::LookoutMetrics::AnomalyDetectorDataQualityMetric>]

A list of the data quality metrics for the C<AnomalyDetectorArn> that
you requested.


=head2 _request_id => Str


=cut

