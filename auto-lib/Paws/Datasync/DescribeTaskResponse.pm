
package Paws::Datasync::DescribeTaskResponse;
  use Moose;
  has CloudWatchLogGroupArn => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has CurrentTaskExecutionArn => (is => 'ro', isa => 'Str');
  has DestinationLocationArn => (is => 'ro', isa => 'Str');
  has DestinationNetworkInterfaceArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ErrorCode => (is => 'ro', isa => 'Str');
  has ErrorDetail => (is => 'ro', isa => 'Str');
  has Excludes => (is => 'ro', isa => 'ArrayRef[Paws::Datasync::FilterRule]');
  has Includes => (is => 'ro', isa => 'ArrayRef[Paws::Datasync::FilterRule]');
  has ManifestConfig => (is => 'ro', isa => 'Paws::Datasync::ManifestConfig');
  has Name => (is => 'ro', isa => 'Str');
  has Options => (is => 'ro', isa => 'Paws::Datasync::Options');
  has Schedule => (is => 'ro', isa => 'Paws::Datasync::TaskSchedule');
  has ScheduleDetails => (is => 'ro', isa => 'Paws::Datasync::TaskScheduleDetails');
  has SourceLocationArn => (is => 'ro', isa => 'Str');
  has SourceNetworkInterfaceArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Status => (is => 'ro', isa => 'Str');
  has TaskArn => (is => 'ro', isa => 'Str');
  has TaskMode => (is => 'ro', isa => 'Str');
  has TaskReportConfig => (is => 'ro', isa => 'Paws::Datasync::TaskReportConfig');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::DescribeTaskResponse

=head1 ATTRIBUTES


=head2 CloudWatchLogGroupArn => Str

The Amazon Resource Name (ARN) of an Amazon CloudWatch log group for
monitoring your task.

For more information, see Monitoring data transfers with CloudWatch
Logs
(https://docs.aws.amazon.com/datasync/latest/userguide/configure-logging.html).


=head2 CreationTime => Str

The time that the task was created.


=head2 CurrentTaskExecutionArn => Str

The ARN of the most recent task execution.


=head2 DestinationLocationArn => Str

The ARN of your transfer's destination location.


=head2 DestinationNetworkInterfaceArns => ArrayRef[Str|Undef]

The ARNs of the network interfaces
(https://docs.aws.amazon.com/datasync/latest/userguide/datasync-network.html#required-network-interfaces)
that DataSync created for your destination location.


=head2 ErrorCode => Str

If there's an issue with your task, you can use the error code to help
you troubleshoot the problem. For more information, see Troubleshooting
issues with DataSync transfers
(https://docs.aws.amazon.com/datasync/latest/userguide/troubleshooting-datasync-locations-tasks.html).


=head2 ErrorDetail => Str

If there's an issue with your task, you can use the error details to
help you troubleshoot the problem. For more information, see
Troubleshooting issues with DataSync transfers
(https://docs.aws.amazon.com/datasync/latest/userguide/troubleshooting-datasync-locations-tasks.html).


=head2 Excludes => ArrayRef[L<Paws::Datasync::FilterRule>]

The exclude filters that define the files, objects, and folders in your
source location that you don't want DataSync to transfer. For more
information and examples, see Specifying what DataSync transfers by
using filters
(https://docs.aws.amazon.com/datasync/latest/userguide/filtering.html).


=head2 Includes => ArrayRef[L<Paws::Datasync::FilterRule>]

The include filters that define the files, objects, and folders in your
source location that you want DataSync to transfer. For more
information and examples, see Specifying what DataSync transfers by
using filters
(https://docs.aws.amazon.com/datasync/latest/userguide/filtering.html).


=head2 ManifestConfig => L<Paws::Datasync::ManifestConfig>

The configuration of the manifest that lists the files or objects that
you want DataSync to transfer. For more information, see Specifying
what DataSync transfers by using a manifest
(https://docs.aws.amazon.com/datasync/latest/userguide/transferring-with-manifest.html).


=head2 Name => Str

The name of your task.


=head2 Options => L<Paws::Datasync::Options>

The task's settings. For example, what file metadata gets preserved,
how data integrity gets verified at the end of your transfer, bandwidth
limits, among other options.


=head2 Schedule => L<Paws::Datasync::TaskSchedule>

The schedule for when you want your task to run. For more information,
see Scheduling your task
(https://docs.aws.amazon.com/datasync/latest/userguide/task-scheduling.html).


=head2 ScheduleDetails => L<Paws::Datasync::TaskScheduleDetails>

The details about your task schedule
(https://docs.aws.amazon.com/datasync/latest/userguide/task-scheduling.html).


=head2 SourceLocationArn => Str

The ARN of your transfer's source location.


=head2 SourceNetworkInterfaceArns => ArrayRef[Str|Undef]

The ARNs of the network interfaces
(https://docs.aws.amazon.com/datasync/latest/userguide/datasync-network.html#required-network-interfaces)
that DataSync created for your source location.


=head2 Status => Str

The status of your task. For information about what each status means,
see Task statuses
(https://docs.aws.amazon.com/datasync/latest/userguide/understand-task-statuses.html#understand-task-creation-statuses).

Valid values are: C<"AVAILABLE">, C<"CREATING">, C<"QUEUED">, C<"RUNNING">, C<"UNAVAILABLE">
=head2 TaskArn => Str

The ARN of your task.


=head2 TaskMode => Str

The task mode that you're using. For more information, see Choosing a
task mode for your data transfer
(https://docs.aws.amazon.com/datasync/latest/userguide/choosing-task-mode.html).

Valid values are: C<"BASIC">, C<"ENHANCED">
=head2 TaskReportConfig => L<Paws::Datasync::TaskReportConfig>

The configuration of your task report, which provides detailed
information about your DataSync transfer. For more information, see
Monitoring your DataSync transfers with task reports
(https://docs.aws.amazon.com/datasync/latest/userguide/task-reports.html).


=head2 _request_id => Str


=cut

1;