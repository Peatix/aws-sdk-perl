
package Paws::LookoutMetrics::ListAnomalyGroupRelatedMetricsResponse;
  use Moose;
  has InterMetricImpactList => (is => 'ro', isa => 'ArrayRef[Paws::LookoutMetrics::InterMetricImpactDetails]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutMetrics::ListAnomalyGroupRelatedMetricsResponse

=head1 ATTRIBUTES


=head2 InterMetricImpactList => ArrayRef[L<Paws::LookoutMetrics::InterMetricImpactDetails>]

Aggregated details about the measures contributing to the anomaly
group, and the measures potentially impacted by the anomaly group.


=head2 NextToken => Str

The pagination token that's included if more results are available.


=head2 _request_id => Str


=cut

