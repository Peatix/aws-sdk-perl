
package Paws::SSM::UpdateMaintenanceWindowTaskResult;
  use Moose;
  has AlarmConfiguration => (is => 'ro', isa => 'Paws::SSM::AlarmConfiguration');
  has CutoffBehavior => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has LoggingInfo => (is => 'ro', isa => 'Paws::SSM::LoggingInfo');
  has MaxConcurrency => (is => 'ro', isa => 'Str');
  has MaxErrors => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Priority => (is => 'ro', isa => 'Int');
  has ServiceRoleArn => (is => 'ro', isa => 'Str');
  has Targets => (is => 'ro', isa => 'ArrayRef[Paws::SSM::Target]');
  has TaskArn => (is => 'ro', isa => 'Str');
  has TaskInvocationParameters => (is => 'ro', isa => 'Paws::SSM::MaintenanceWindowTaskInvocationParameters');
  has TaskParameters => (is => 'ro', isa => 'Paws::SSM::MaintenanceWindowTaskParameters');
  has WindowId => (is => 'ro', isa => 'Str');
  has WindowTaskId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::UpdateMaintenanceWindowTaskResult

=head1 ATTRIBUTES


=head2 AlarmConfiguration => L<Paws::SSM::AlarmConfiguration>

The details for the CloudWatch alarm you applied to your maintenance
window task.


=head2 CutoffBehavior => Str

The specification for whether tasks should continue to run after the
cutoff time specified in the maintenance windows is reached.

Valid values are: C<"CONTINUE_TASK">, C<"CANCEL_TASK">
=head2 Description => Str

The updated task description.


=head2 LoggingInfo => L<Paws::SSM::LoggingInfo>

The updated logging information in Amazon S3.

C<LoggingInfo> has been deprecated. To specify an Amazon Simple Storage
Service (Amazon S3) bucket to contain logs, instead use the
C<OutputS3BucketName> and C<OutputS3KeyPrefix> options in the
C<TaskInvocationParameters> structure. For information about how Amazon
Web Services Systems Manager handles these options for the supported
maintenance window task types, see
MaintenanceWindowTaskInvocationParameters.


=head2 MaxConcurrency => Str

The updated C<MaxConcurrency> value.


=head2 MaxErrors => Str

The updated C<MaxErrors> value.


=head2 Name => Str

The updated task name.


=head2 Priority => Int

The updated priority value.


=head2 ServiceRoleArn => Str

The Amazon Resource Name (ARN) of the IAM service role for Amazon Web
Services Systems Manager to assume when running a maintenance window
task. If you do not specify a service role ARN, Systems Manager uses a
service-linked role in your account. If no appropriate service-linked
role for Systems Manager exists in your account, it is created when you
run C<RegisterTaskWithMaintenanceWindow>.

However, for an improved security posture, we strongly recommend
creating a custom policy and custom service role for running your
maintenance window tasks. The policy can be crafted to provide only the
permissions needed for your particular maintenance window tasks. For
more information, see Setting up Maintenance Windows
(https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-maintenance-permissions.html)
in the in the I<Amazon Web Services Systems Manager User Guide>.


=head2 Targets => ArrayRef[L<Paws::SSM::Target>]

The updated target values.


=head2 TaskArn => Str

The updated task ARN value.


=head2 TaskInvocationParameters => L<Paws::SSM::MaintenanceWindowTaskInvocationParameters>

The updated parameter values.


=head2 TaskParameters => L<Paws::SSM::MaintenanceWindowTaskParameters>

The updated parameter values.

C<TaskParameters> has been deprecated. To specify parameters to pass to
a task when it runs, instead use the C<Parameters> option in the
C<TaskInvocationParameters> structure. For information about how
Systems Manager handles these options for the supported maintenance
window task types, see MaintenanceWindowTaskInvocationParameters.


=head2 WindowId => Str

The ID of the maintenance window that was updated.


=head2 WindowTaskId => Str

The task ID of the maintenance window that was updated.


=head2 _request_id => Str


=cut

1;