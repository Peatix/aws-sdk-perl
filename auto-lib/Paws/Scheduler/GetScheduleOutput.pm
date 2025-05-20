
package Paws::Scheduler::GetScheduleOutput;
  use Moose;
  has ActionAfterCompletion => (is => 'ro', isa => 'Str');
  has Arn => (is => 'ro', isa => 'Str');
  has CreationDate => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has EndDate => (is => 'ro', isa => 'Str');
  has FlexibleTimeWindow => (is => 'ro', isa => 'Paws::Scheduler::FlexibleTimeWindow');
  has GroupName => (is => 'ro', isa => 'Str');
  has KmsKeyArn => (is => 'ro', isa => 'Str');
  has LastModificationDate => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has ScheduleExpression => (is => 'ro', isa => 'Str');
  has ScheduleExpressionTimezone => (is => 'ro', isa => 'Str');
  has StartDate => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has Target => (is => 'ro', isa => 'Paws::Scheduler::Target');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Scheduler::GetScheduleOutput

=head1 ATTRIBUTES


=head2 ActionAfterCompletion => Str

Indicates the action that EventBridge Scheduler applies to the schedule
after the schedule completes invoking the target.

Valid values are: C<"NONE">, C<"DELETE">
=head2 Arn => Str

The Amazon Resource Name (ARN) of the schedule.


=head2 CreationDate => Str

The time at which the schedule was created.


=head2 Description => Str

The description of the schedule.


=head2 EndDate => Str

The date, in UTC, before which the schedule can invoke its target.
Depending on the schedule's recurrence expression, invocations might
stop on, or before, the C<EndDate> you specify. EventBridge Scheduler
ignores C<EndDate> for one-time schedules.


=head2 FlexibleTimeWindow => L<Paws::Scheduler::FlexibleTimeWindow>

Allows you to configure a time window during which EventBridge
Scheduler invokes the schedule.


=head2 GroupName => Str

The name of the schedule group associated with this schedule.


=head2 KmsKeyArn => Str

The ARN for a customer managed KMS Key that is be used to encrypt and
decrypt your data.


=head2 LastModificationDate => Str

The time at which the schedule was last modified.


=head2 Name => Str

The name of the schedule.


=head2 ScheduleExpression => Str

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
=head2 Target => L<Paws::Scheduler::Target>

The schedule target.


=head2 _request_id => Str


=cut

