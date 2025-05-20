
package Paws::EC2::ModifyInstanceEventWindow;
  use Moose;
  has CronExpression => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has InstanceEventWindowId => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str');
  has TimeRanges => (is => 'ro', isa => 'ArrayRef[Paws::EC2::InstanceEventWindowTimeRangeRequest]', traits => ['NameInRequest'], request_name => 'TimeRange' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyInstanceEventWindow');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ModifyInstanceEventWindowResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyInstanceEventWindow - Arguments for method ModifyInstanceEventWindow on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyInstanceEventWindow on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ModifyInstanceEventWindow.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyInstanceEventWindow.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ModifyInstanceEventWindowResult = $ec2->ModifyInstanceEventWindow(
      InstanceEventWindowId => 'MyInstanceEventWindowId',
      CronExpression        => 'MyInstanceEventWindowCronExpression', # OPTIONAL
      DryRun                => 1,                                     # OPTIONAL
      Name                  => 'MyString',                            # OPTIONAL
      TimeRanges            => [
        {
          EndHour    => 1,           # max: 23; OPTIONAL
          EndWeekDay => 'sunday'
          , # values: sunday, monday, tuesday, wednesday, thursday, friday, saturday; OPTIONAL
          StartHour    => 1,         # max: 23; OPTIONAL
          StartWeekDay => 'sunday'
          , # values: sunday, monday, tuesday, wednesday, thursday, friday, saturday; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $InstanceEventWindow =
      $ModifyInstanceEventWindowResult->InstanceEventWindow;

    # Returns a L<Paws::EC2::ModifyInstanceEventWindowResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ModifyInstanceEventWindow>

=head1 ATTRIBUTES


=head2 CronExpression => Str

The cron expression of the event window, for example, C<* 0-4,20-23 * *
1,5>.

Constraints:

=over

=item *

Only hour and day of the week values are supported.

=item *

For day of the week values, you can specify either integers C<0>
through C<6>, or alternative single values C<SUN> through C<SAT>.

=item *

The minute, month, and year must be specified by C<*>.

=item *

The hour value must be one or a multiple range, for example, C<0-4> or
C<0-4,20-23>.

=item *

Each hour range must be E<gt>= 2 hours, for example, C<0-2> or
C<20-23>.

=item *

The event window must be E<gt>= 4 hours. The combined total time ranges
in the event window must be E<gt>= 4 hours.

=back

For more information about cron expressions, see cron
(https://en.wikipedia.org/wiki/Cron) on the I<Wikipedia website>.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> InstanceEventWindowId => Str

The ID of the event window.



=head2 Name => Str

The name of the event window.



=head2 TimeRanges => ArrayRef[L<Paws::EC2::InstanceEventWindowTimeRangeRequest>]

The time ranges of the event window.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyInstanceEventWindow in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

