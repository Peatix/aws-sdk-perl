
package Paws::ARCZonalShift::CreatePracticeRunConfiguration;
  use Moose;
  has BlockedDates => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'blockedDates');
  has BlockedWindows => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'blockedWindows');
  has BlockingAlarms => (is => 'ro', isa => 'ArrayRef[Paws::ARCZonalShift::ControlCondition]', traits => ['NameInRequest'], request_name => 'blockingAlarms');
  has OutcomeAlarms => (is => 'ro', isa => 'ArrayRef[Paws::ARCZonalShift::ControlCondition]', traits => ['NameInRequest'], request_name => 'outcomeAlarms', required => 1);
  has ResourceIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePracticeRunConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/configuration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ARCZonalShift::CreatePracticeRunConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ARCZonalShift::CreatePracticeRunConfiguration - Arguments for method CreatePracticeRunConfiguration on L<Paws::ARCZonalShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePracticeRunConfiguration on the
L<AWS ARC - Zonal Shift|Paws::ARCZonalShift> service. Use the attributes of this class
as arguments to method CreatePracticeRunConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePracticeRunConfiguration.

=head1 SYNOPSIS

    my $arc-zonal-shift = Paws->service('ARCZonalShift');
    my $CreatePracticeRunConfigurationResponse =
      $arc -zonal-shift->CreatePracticeRunConfiguration(
      OutcomeAlarms => [
        {
          AlarmIdentifier => 'MyMetricIdentifier',    # min: 8, max: 1024
          Type            => 'CLOUDWATCH',            # values: CLOUDWATCH

        },
        ...
      ],
      ResourceIdentifier => 'MyResourceIdentifier',
      BlockedDates       => [
        'MyBlockedDate',
        ...    # min: 10, max: 10
      ],    # OPTIONAL
      BlockedWindows => [
        'MyBlockedWindow', ...    # min: 19, max: 19
      ],    # OPTIONAL
      BlockingAlarms => [
        {
          AlarmIdentifier => 'MyMetricIdentifier',    # min: 8, max: 1024
          Type            => 'CLOUDWATCH',            # values: CLOUDWATCH

        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $Arn  = $CreatePracticeRunConfigurationResponse->Arn;
    my $Name = $CreatePracticeRunConfigurationResponse->Name;
    my $PracticeRunConfiguration =
      $CreatePracticeRunConfigurationResponse->PracticeRunConfiguration;
    my $ZonalAutoshiftStatus =
      $CreatePracticeRunConfigurationResponse->ZonalAutoshiftStatus;

# Returns a L<Paws::ARCZonalShift::CreatePracticeRunConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift/CreatePracticeRunConfiguration>

=head1 ATTRIBUTES


=head2 BlockedDates => ArrayRef[Str|Undef]

Optionally, you can block ARC from starting practice runs for a
resource on specific calendar dates.

The format for blocked dates is: YYYY-MM-DD. Keep in mind, when you
specify dates, that dates and times for practice runs are in UTC.
Separate multiple blocked dates with spaces.

For example, if you have an application update scheduled to launch on
May 1, 2024, and you don't want practice runs to shift traffic away at
that time, you could set a blocked date for C<2024-05-01>.



=head2 BlockedWindows => ArrayRef[Str|Undef]

Optionally, you can block ARC from starting practice runs for specific
windows of days and times.

The format for blocked windows is: DAY:HH:SS-DAY:HH:SS. Keep in mind,
when you specify dates, that dates and times for practice runs are in
UTC. Also, be aware of potential time adjustments that might be
required for daylight saving time differences. Separate multiple
blocked windows with spaces.

For example, say you run business report summaries three days a week.
For this scenario, you might set the following recurring days and times
as blocked windows, for example: C<MON-20:30-21:30 WED-20:30-21:30
FRI-20:30-21:30>.



=head2 BlockingAlarms => ArrayRef[L<Paws::ARCZonalShift::ControlCondition>]

An Amazon CloudWatch alarm that you can specify for zonal autoshift
practice runs. This alarm blocks ARC from starting practice run zonal
shifts, and ends a practice run that's in progress, when the alarm is
in an C<ALARM> state.



=head2 B<REQUIRED> OutcomeAlarms => ArrayRef[L<Paws::ARCZonalShift::ControlCondition>]

The I<outcome alarm> for practice runs is a required Amazon CloudWatch
alarm that you specify that ends a practice run when the alarm is in an
C<ALARM> state.

Configure the alarm to monitor the health of your application when
traffic is shifted away from an Availability Zone during each practice
run. You should configure the alarm to go into an C<ALARM> state if
your application is impacted by the zonal shift, and you want to stop
the zonal shift, to let traffic for the resource return to the
Availability Zone.



=head2 B<REQUIRED> ResourceIdentifier => Str

The identifier of the resource that Amazon Web Services shifts traffic
for with a practice run zonal shift. The identifier is the Amazon
Resource Name (ARN) for the resource.

At this time, supported resources are Network Load Balancers and
Application Load Balancers with cross-zone load balancing turned off.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePracticeRunConfiguration in L<Paws::ARCZonalShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

