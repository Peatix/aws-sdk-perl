
package Paws::SSM::GetMaintenanceWindowTaskResult;
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
  has TaskType => (is => 'ro', isa => 'Str');
  has WindowId => (is => 'ro', isa => 'Str');
  has WindowTaskId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetMaintenanceWindowTaskResult

=head1 ATTRIBUTES


=head2 AlarmConfiguration => L<Paws::SSM::AlarmConfiguration>

The details for the CloudWatch alarm you applied to your maintenance
window task.


=head2 CutoffBehavior => Str

The action to take on tasks when the maintenance window cutoff time is
reached. C<CONTINUE_TASK> means that tasks continue to run. For
Automation, Lambda, Step Functions tasks, C<CANCEL_TASK> means that
currently running task invocations continue, but no new task
invocations are started. For Run Command tasks, C<CANCEL_TASK> means
the system attempts to stop the task by sending a C<CancelCommand>
operation.

Valid values are: C<"CONTINUE_TASK">, C<"CANCEL_TASK">
=head2 Description => Str

The retrieved task description.


=head2 LoggingInfo => L<Paws::SSM::LoggingInfo>

The location in Amazon Simple Storage Service (Amazon S3) where the
task results are logged.

C<LoggingInfo> has been deprecated. To specify an Amazon Simple Storage
Service (Amazon S3) bucket to contain logs, instead use the
C<OutputS3BucketName> and C<OutputS3KeyPrefix> options in the
C<TaskInvocationParameters> structure. For information about how Amazon
Web Services Systems Manager handles these options for the supported
maintenance window task types, see
MaintenanceWindowTaskInvocationParameters.


=head2 MaxConcurrency => Str

The maximum number of targets allowed to run this task in parallel.

For maintenance window tasks without a target specified, you can't
supply a value for this option. Instead, the system inserts a
placeholder value of C<1>, which may be reported in the response to
this command. This value doesn't affect the running of your task and
can be ignored.


=head2 MaxErrors => Str

The maximum number of errors allowed before the task stops being
scheduled.

For maintenance window tasks without a target specified, you can't
supply a value for this option. Instead, the system inserts a
placeholder value of C<1>, which may be reported in the response to
this command. This value doesn't affect the running of your task and
can be ignored.


=head2 Name => Str

The retrieved task name.


=head2 Priority => Int

The priority of the task when it runs. The lower the number, the higher
the priority. Tasks that have the same priority are scheduled in
parallel.


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

The targets where the task should run.


=head2 TaskArn => Str

The resource that the task used during execution. For C<RUN_COMMAND>
and C<AUTOMATION> task types, the value of C<TaskArn> is the SSM
document name/ARN. For C<LAMBDA> tasks, the value is the function
name/ARN. For C<STEP_FUNCTIONS> tasks, the value is the state machine
ARN.


=head2 TaskInvocationParameters => L<Paws::SSM::MaintenanceWindowTaskInvocationParameters>

The parameters to pass to the task when it runs.


=head2 TaskParameters => L<Paws::SSM::MaintenanceWindowTaskParameters>

The parameters to pass to the task when it runs.

C<TaskParameters> has been deprecated. To specify parameters to pass to
a task when it runs, instead use the C<Parameters> option in the
C<TaskInvocationParameters> structure. For information about how
Systems Manager handles these options for the supported maintenance
window task types, see MaintenanceWindowTaskInvocationParameters.


=head2 TaskType => Str

The type of task to run.

Valid values are: C<"RUN_COMMAND">, C<"AUTOMATION">, C<"STEP_FUNCTIONS">, C<"LAMBDA">
=head2 WindowId => Str

The retrieved maintenance window ID.


=head2 WindowTaskId => Str

The retrieved maintenance window task ID.


=head2 _request_id => Str


=cut

1;