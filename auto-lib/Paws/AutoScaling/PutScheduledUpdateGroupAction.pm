
package Paws::AutoScaling::PutScheduledUpdateGroupAction;
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has DesiredCapacity => (is => 'ro', isa => 'Int');
  has EndTime => (is => 'ro', isa => 'Str');
  has MaxSize => (is => 'ro', isa => 'Int');
  has MinSize => (is => 'ro', isa => 'Int');
  has Recurrence => (is => 'ro', isa => 'Str');
  has ScheduledActionName => (is => 'ro', isa => 'Str', required => 1);
  has StartTime => (is => 'ro', isa => 'Str');
  has Time => (is => 'ro', isa => 'Str');
  has TimeZone => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutScheduledUpdateGroupAction');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::PutScheduledUpdateGroupAction - Arguments for method PutScheduledUpdateGroupAction on L<Paws::AutoScaling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutScheduledUpdateGroupAction on the
L<Auto Scaling|Paws::AutoScaling> service. Use the attributes of this class
as arguments to method PutScheduledUpdateGroupAction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutScheduledUpdateGroupAction.

=head1 SYNOPSIS

    my $autoscaling = Paws->service('AutoScaling');
# To add a scheduled action to an Auto Scaling group
# This example adds the specified scheduled action to the specified Auto Scaling
# group.
    $autoscaling->PutScheduledUpdateGroupAction(
      'AutoScalingGroupName' => 'my-auto-scaling-group',
      'DesiredCapacity'      => 4,
      'EndTime'              => '2014-05-12T08:00:00Z',
      'MaxSize'              => 6,
      'MinSize'              => 2,
      'ScheduledActionName'  => 'my-scheduled-action',
      'StartTime'            => '2014-05-12T08:00:00Z'
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/autoscaling/PutScheduledUpdateGroupAction>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoScalingGroupName => Str

The name of the Auto Scaling group.



=head2 DesiredCapacity => Int

The desired capacity is the initial capacity of the Auto Scaling group
after the scheduled action runs and the capacity it attempts to
maintain. It can scale beyond this capacity if you add more scaling
conditions.

You must specify at least one of the following properties: C<MaxSize>,
C<MinSize>, or C<DesiredCapacity>.



=head2 EndTime => Str

The date and time for the recurring schedule to end, in UTC. For
example, C<"2021-06-01T00:00:00Z">.



=head2 MaxSize => Int

The maximum size of the Auto Scaling group.



=head2 MinSize => Int

The minimum size of the Auto Scaling group.



=head2 Recurrence => Str

The recurring schedule for this action. This format consists of five
fields separated by white spaces: [Minute] [Hour] [Day_of_Month]
[Month_of_Year] [Day_of_Week]. The value must be in quotes (for
example, C<"30 0 1 1,6,12 *">). For more information about this format,
see Crontab (http://crontab.org).

When C<StartTime> and C<EndTime> are specified with C<Recurrence>, they
form the boundaries of when the recurring action starts and stops.

Cron expressions use Universal Coordinated Time (UTC) by default.



=head2 B<REQUIRED> ScheduledActionName => Str

The name of this scaling action.



=head2 StartTime => Str

The date and time for this action to start, in YYYY-MM-DDThh:mm:ssZ
format in UTC/GMT only and in quotes (for example,
C<"2021-06-01T00:00:00Z">).

If you specify C<Recurrence> and C<StartTime>, Amazon EC2 Auto Scaling
performs the action at this time, and then performs the action based on
the specified recurrence.



=head2 Time => Str

This property is no longer used.



=head2 TimeZone => Str

Specifies the time zone for a cron expression. If a time zone is not
provided, UTC is used by default.

Valid values are the canonical names of the IANA time zones, derived
from the IANA Time Zone Database (such as C<Etc/GMT+9> or
C<Pacific/Tahiti>). For more information, see
https://en.wikipedia.org/wiki/List_of_tz_database_time_zones
(https://en.wikipedia.org/wiki/List_of_tz_database_time_zones).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutScheduledUpdateGroupAction in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

