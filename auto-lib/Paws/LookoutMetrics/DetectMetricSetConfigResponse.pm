
package Paws::LookoutMetrics::DetectMetricSetConfigResponse;
  use Moose;
  has DetectedMetricSetConfig => (is => 'ro', isa => 'Paws::LookoutMetrics::DetectedMetricSetConfig');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutMetrics::DetectMetricSetConfigResponse

=head1 ATTRIBUTES


=head2 DetectedMetricSetConfig => L<Paws::LookoutMetrics::DetectedMetricSetConfig>

The inferred dataset configuration for the datasource.


=head2 _request_id => Str


=cut

