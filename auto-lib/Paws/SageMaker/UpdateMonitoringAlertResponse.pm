
package Paws::SageMaker::UpdateMonitoringAlertResponse;
  use Moose;
  has MonitoringAlertName => (is => 'ro', isa => 'Str');
  has MonitoringScheduleArn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::UpdateMonitoringAlertResponse

=head1 ATTRIBUTES


=head2 MonitoringAlertName => Str

The name of a monitoring alert.


=head2 B<REQUIRED> MonitoringScheduleArn => Str

The Amazon Resource Name (ARN) of the monitoring schedule.


=head2 _request_id => Str


=cut

1;