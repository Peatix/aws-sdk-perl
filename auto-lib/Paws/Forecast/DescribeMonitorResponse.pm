
package Paws::Forecast::DescribeMonitorResponse;
  use Moose;
  has Baseline => (is => 'ro', isa => 'Paws::Forecast::Baseline');
  has CreationTime => (is => 'ro', isa => 'Str');
  has EstimatedEvaluationTimeRemainingInMinutes => (is => 'ro', isa => 'Int');
  has LastEvaluationState => (is => 'ro', isa => 'Str');
  has LastEvaluationTime => (is => 'ro', isa => 'Str');
  has LastModificationTime => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has MonitorArn => (is => 'ro', isa => 'Str');
  has MonitorName => (is => 'ro', isa => 'Str');
  has ResourceArn => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::DescribeMonitorResponse

=head1 ATTRIBUTES


=head2 Baseline => L<Paws::Forecast::Baseline>

Metrics you can use as a baseline for comparison purposes. Use these
values you interpret monitoring results for an auto predictor.


=head2 CreationTime => Str

The timestamp for when the monitor resource was created.


=head2 EstimatedEvaluationTimeRemainingInMinutes => Int

The estimated number of minutes remaining before the monitor resource
finishes its current evaluation.


=head2 LastEvaluationState => Str

The state of the monitor's latest evaluation.


=head2 LastEvaluationTime => Str

The timestamp of the latest evaluation completed by the monitor.


=head2 LastModificationTime => Str

The timestamp of the latest modification to the monitor.


=head2 Message => Str

An error message, if any, for the monitor.


=head2 MonitorArn => Str

The Amazon Resource Name (ARN) of the monitor resource described.


=head2 MonitorName => Str

The name of the monitor.


=head2 ResourceArn => Str

The Amazon Resource Name (ARN) of the auto predictor being monitored.


=head2 Status => Str

The status of the monitor resource.


=head2 _request_id => Str


=cut

1;