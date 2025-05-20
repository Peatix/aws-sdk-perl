
package Paws::IoTWireless::GetMetricsResponse;
  use Moose;
  has SummaryMetricQueryResults => (is => 'ro', isa => 'ArrayRef[Paws::IoTWireless::SummaryMetricQueryResult]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::GetMetricsResponse

=head1 ATTRIBUTES


=head2 SummaryMetricQueryResults => ArrayRef[L<Paws::IoTWireless::SummaryMetricQueryResult>]

The list of summary metrics that were retrieved.


=head2 _request_id => Str


=cut

