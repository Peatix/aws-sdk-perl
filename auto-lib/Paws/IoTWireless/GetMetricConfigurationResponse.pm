
package Paws::IoTWireless::GetMetricConfigurationResponse;
  use Moose;
  has SummaryMetric => (is => 'ro', isa => 'Paws::IoTWireless::SummaryMetricConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::GetMetricConfigurationResponse

=head1 ATTRIBUTES


=head2 SummaryMetric => L<Paws::IoTWireless::SummaryMetricConfiguration>

The configuration status of the AWS account for summary metric
aggregation.


=head2 _request_id => Str


=cut

