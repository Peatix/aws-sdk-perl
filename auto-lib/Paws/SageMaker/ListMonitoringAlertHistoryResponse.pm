
package Paws::SageMaker::ListMonitoringAlertHistoryResponse;
  use Moose;
  has MonitoringAlertHistory => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::MonitoringAlertHistorySummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListMonitoringAlertHistoryResponse

=head1 ATTRIBUTES


=head2 MonitoringAlertHistory => ArrayRef[L<Paws::SageMaker::MonitoringAlertHistorySummary>]

An alert history for a model monitoring schedule.


=head2 NextToken => Str

If the response is truncated, SageMaker returns this token. To retrieve
the next set of alerts, use it in the subsequent request.


=head2 _request_id => Str


=cut

1;