
package Paws::SageMaker::ListMonitoringAlertsResponse;
  use Moose;
  has MonitoringAlertSummaries => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::MonitoringAlertSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListMonitoringAlertsResponse

=head1 ATTRIBUTES


=head2 MonitoringAlertSummaries => ArrayRef[L<Paws::SageMaker::MonitoringAlertSummary>]

A JSON array where each element is a summary for a monitoring alert.


=head2 NextToken => Str

If the response is truncated, SageMaker returns this token. To retrieve
the next set of alerts, use it in the subsequent request.


=head2 _request_id => Str


=cut

1;