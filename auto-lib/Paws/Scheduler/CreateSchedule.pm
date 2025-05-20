
package Paws::Scheduler::CreateSchedule;
  use Moose;
  has ActionAfterCompletion => (is => 'ro', isa => 'Str');
  has ClientToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has EndDate => (is => 'ro', isa => 'Str');
  has FlexibleTimeWindow => (is => 'ro', isa => 'Paws::Scheduler::FlexibleTimeWindow', required => 1);
  has GroupName => (is => 'ro', isa => 'Str');
  has KmsKeyArn => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Name', required => 1);
  has ScheduleExpression => (is => 'ro', isa => 'Str', required => 1);
  has ScheduleExpressionTimezone => (is => 'ro', isa => 'Str');
  has StartDate => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has Target => (is => 'ro', isa => 'Paws::Scheduler::Target', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSchedule');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/schedules/{Name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Scheduler::CreateScheduleOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Scheduler::CreateSchedule - Arguments for method CreateSchedule on L<Paws::Scheduler>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSchedule on the
L<Amazon EventBridge Scheduler|Paws::Scheduler> service. Use the attributes of this class
as arguments to method CreateSchedule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSchedule.

=head1 SYNOPSIS

    my $scheduler = Paws->service('Scheduler');
    my $CreateScheduleOutput = $scheduler->CreateSchedule(
      FlexibleTimeWindow => {
        Mode                   => 'OFF',    # values: OFF, FLEXIBLE
        MaximumWindowInMinutes => 1,        # min: 1, max: 1440; OPTIONAL
      },
      Name               => 'MyName',
      ScheduleExpression => 'MyScheduleExpression',
      Target             => {
        Arn              => 'MyTargetArn',    # min: 1, max: 1600
        RoleArn          => 'MyRoleArn',      # min: 1, max: 1600
        DeadLetterConfig => {
          Arn => 'MyDeadLetterConfigArnString',    # min: 1, max: 1600; OPTIONAL
        },    # OPTIONAL
        EcsParameters => {
          TaskDefinitionArn        => 'MyTaskDefinitionArn', # min: 1, max: 1600
          CapacityProviderStrategy => [
            {
              CapacityProvider => 'MyCapacityProvider',  # min: 1, max: 255
              Base             => 1,                     # max: 100000; OPTIONAL
              Weight           => 1,                     # max: 1000; OPTIONAL
            },
            ...
          ],    # max: 6; OPTIONAL
          EnableECSManagedTags => 1,            # OPTIONAL
          EnableExecuteCommand => 1,            # OPTIONAL
          Group                => 'MyGroup',    # min: 1, max: 255; OPTIONAL
          LaunchType => 'EC2',    # values: EC2, FARGATE, EXTERNAL; OPTIONAL
          NetworkConfiguration => {
            AwsvpcConfiguration => {
              Subnets => [
                'MySubnet', ...    # min: 1, max: 1000
              ],    # min: 1, max: 16
              AssignPublicIp => 'ENABLED', # values: ENABLED, DISABLED; OPTIONAL
              SecurityGroups => [
                'MySecurityGroup', ...     # min: 1, max: 1000
              ],    # min: 1, max: 5; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          PlacementConstraints => [
            {
              Expression =>
                'MyPlacementConstraintExpression',    # max: 2000; OPTIONAL
              Type => 'distinctInstance'
              ,    # values: distinctInstance, memberOf; OPTIONAL
            },
            ...
          ],    # max: 10; OPTIONAL
          PlacementStrategy => [
            {
              Field => 'MyPlacementStrategyField',    # max: 255; OPTIONAL
              Type  => 'random',    # values: random, spread, binpack; OPTIONAL
            },
            ...
          ],    # max: 5; OPTIONAL
          PlatformVersion => 'MyPlatformVersion',    # min: 1, max: 64; OPTIONAL
          PropagateTags   =>
            'TASK_DEFINITION',    # values: TASK_DEFINITION; OPTIONAL
          ReferenceId => 'MyReferenceId',    # max: 1024; OPTIONAL
          Tags        => [
            {
              'MyTagKey' =>
                'MyTagValue',   # key: min: 1, max: 128, value: min: 1, max: 256
            },
            ...
          ],    # max: 50; OPTIONAL
          TaskCount => 1,    # min: 1, max: 10; OPTIONAL
        },    # OPTIONAL
        EventBridgeParameters => {
          DetailType => 'MyDetailType',    # min: 1, max: 128
          Source     => 'MySource',        # min: 1, max: 256

        },    # OPTIONAL
        Input             => 'MyTargetInput',    # min: 1; OPTIONAL
        KinesisParameters => {
          PartitionKey => 'MyTargetPartitionKey',    # min: 1, max: 256

        },    # OPTIONAL
        RetryPolicy => {
          MaximumEventAgeInSeconds => 1,    # min: 60, max: 86400; OPTIONAL
          MaximumRetryAttempts     => 1,    # max: 185; OPTIONAL
        },    # OPTIONAL
        SageMakerPipelineParameters => {
          PipelineParameterList => [
            {
              Name  => 'MySageMakerPipelineParameterName',   # min: 1, max: 256
              Value => 'MySageMakerPipelineParameterValue',  # min: 1, max: 1024

            },
            ...
          ],    # max: 200; OPTIONAL
        },    # OPTIONAL
        SqsParameters => {
          MessageGroupId => 'MyMessageGroupId',    # min: 1, max: 128; OPTIONAL
        },    # OPTIONAL
      },
      ActionAfterCompletion      => 'NONE',                           # OPTIONAL
      ClientToken                => 'MyClientToken',                  # OPTIONAL
      Description                => 'MyDescription',                  # OPTIONAL
      EndDate                    => '1970-01-01T01:00:00',            # OPTIONAL
      GroupName                  => 'MyScheduleGroupName',            # OPTIONAL
      KmsKeyArn                  => 'MyKmsKeyArn',                    # OPTIONAL
      ScheduleExpressionTimezone => 'MyScheduleExpressionTimezone',   # OPTIONAL
      StartDate                  => '1970-01-01T01:00:00',            # OPTIONAL
      State                      => 'ENABLED',                        # OPTIONAL
    );

    # Results:
    my $ScheduleArn = $CreateScheduleOutput->ScheduleArn;

    # Returns a L<Paws::Scheduler::CreateScheduleOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/scheduler/CreateSchedule>

=head1 ATTRIBUTES


=head2 ActionAfterCompletion => Str

Specifies the action that EventBridge Scheduler applies to the schedule
after the schedule completes invoking the target.

Valid values are: C<"NONE">, C<"DELETE">

=head2 ClientToken => Str

Unique, case-sensitive identifier you provide to ensure the idempotency
of the request. If you do not specify a client token, EventBridge
Scheduler uses a randomly generated token for the request to ensure
idempotency.



=head2 Description => Str

The description you specify for the schedule.



=head2 EndDate => Str

The date, in UTC, before which the schedule can invoke its target.
Depending on the schedule's recurrence expression, invocations might
stop on, or before, the C<EndDate> you specify. EventBridge Scheduler
ignores C<EndDate> for one-time schedules.



=head2 B<REQUIRED> FlexibleTimeWindow => L<Paws::Scheduler::FlexibleTimeWindow>

Allows you to configure a time window during which EventBridge
Scheduler invokes the schedule.



=head2 GroupName => Str

The name of the schedule group to associate with this schedule. If you
omit this, the default schedule group is used.



=head2 KmsKeyArn => Str

The Amazon Resource Name (ARN) for the customer managed KMS key that
EventBridge Scheduler will use to encrypt and decrypt your data.



=head2 B<REQUIRED> Name => Str

The name of the schedule that you are creating.



=head2 B<REQUIRED> ScheduleExpression => Str

The expression that defines when the schedule runs. The following
formats are supported.

=over

=item *

C<at> expression - C<at(yyyy-mm-ddThh:mm:ss)>

=item *

C<rate> expression - C<rate(value unit)>

=item *

C<cron> expression - C<cron(fields)>

=back

You can use C<at> expressions to create one-time schedules that invoke
a target once, at the time and in the time zone, that you specify. You
can use C<rate> and C<cron> expressions to create recurring schedules.
Rate-based schedules are useful when you want to invoke a target at
regular intervals, such as every 15 minutes or every five days.
Cron-based schedules are useful when you want to invoke a target
periodically at a specific time, such as at 8:00 am (UTC+0) every 1st
day of the month.

A C<cron> expression consists of six fields separated by white spaces:
C<(minutes hours day_of_month month day_of_week year)>.

A C<rate> expression consists of a I<value> as a positive integer, and
a I<unit> with the following options: C<minute> | C<minutes> | C<hour>
| C<hours> | C<day> | C<days>

For more information and examples, see Schedule types on EventBridge
Scheduler
(https://docs.aws.amazon.com/scheduler/latest/UserGuide/schedule-types.html)
in the I<EventBridge Scheduler User Guide>.



=head2 ScheduleExpressionTimezone => Str

The timezone in which the scheduling expression is evaluated.



=head2 StartDate => Str

The date, in UTC, after which the schedule can begin invoking its
target. Depending on the schedule's recurrence expression, invocations
might occur on, or after, the C<StartDate> you specify. EventBridge
Scheduler ignores C<StartDate> for one-time schedules.



=head2 State => Str

Specifies whether the schedule is enabled or disabled.

Valid values are: C<"ENABLED">, C<"DISABLED">

=head2 B<REQUIRED> Target => L<Paws::Scheduler::Target>

The schedule's target.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSchedule in L<Paws::Scheduler>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

