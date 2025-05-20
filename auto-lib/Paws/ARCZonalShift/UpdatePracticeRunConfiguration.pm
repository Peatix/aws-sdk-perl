
package Paws::ARCZonalShift::UpdatePracticeRunConfiguration;
  use Moose;
  has BlockedDates => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'blockedDates');
  has BlockedWindows => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'blockedWindows');
  has BlockingAlarms => (is => 'ro', isa => 'ArrayRef[Paws::ARCZonalShift::ControlCondition]', traits => ['NameInRequest'], request_name => 'blockingAlarms');
  has OutcomeAlarms => (is => 'ro', isa => 'ArrayRef[Paws::ARCZonalShift::ControlCondition]', traits => ['NameInRequest'], request_name => 'outcomeAlarms');
  has ResourceIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resourceIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdatePracticeRunConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/configuration/{resourceIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ARCZonalShift::UpdatePracticeRunConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ARCZonalShift::UpdatePracticeRunConfiguration - Arguments for method UpdatePracticeRunConfiguration on L<Paws::ARCZonalShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdatePracticeRunConfiguration on the
L<AWS ARC - Zonal Shift|Paws::ARCZonalShift> service. Use the attributes of this class
as arguments to method UpdatePracticeRunConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdatePracticeRunConfiguration.

=head1 SYNOPSIS

    my $arc-zonal-shift = Paws->service('ARCZonalShift');
    my $UpdatePracticeRunConfigurationResponse =
      $arc -zonal-shift->UpdatePracticeRunConfiguration(
      ResourceIdentifier => 'MyResourceIdentifier',
      BlockedDates       => [
        'MyBlockedDate', ...    # min: 10, max: 10
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
      OutcomeAlarms => [
        {
          AlarmIdentifier => 'MyMetricIdentifier',    # min: 8, max: 1024
          Type            => 'CLOUDWATCH',            # values: CLOUDWATCH

        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $Arn  = $UpdatePracticeRunConfigurationResponse->Arn;
    my $Name = $UpdatePracticeRunConfigurationResponse->Name;
    my $PracticeRunConfiguration =
      $UpdatePracticeRunConfigurationResponse->PracticeRunConfiguration;
    my $ZonalAutoshiftStatus =
      $UpdatePracticeRunConfigurationResponse->ZonalAutoshiftStatus;

# Returns a L<Paws::ARCZonalShift::UpdatePracticeRunConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift/UpdatePracticeRunConfiguration>

=head1 ATTRIBUTES


=head2 BlockedDates => ArrayRef[Str|Undef]

Add, change, or remove blocked dates for a practice run in zonal
autoshift.

Optionally, you can block practice runs for specific calendar dates.
The format for blocked dates is: YYYY-MM-DD. Keep in mind, when you
specify dates, that dates and times for practice runs are in UTC.
Separate multiple blocked dates with spaces.

For example, if you have an application update scheduled to launch on
May 1, 2024, and you don't want practice runs to shift traffic away at
that time, you could set a blocked date for C<2024-05-01>.



=head2 BlockedWindows => ArrayRef[Str|Undef]

Add, change, or remove windows of days and times for when you can,
optionally, block ARC from starting a practice run for a resource.

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

Add, change, or remove the Amazon CloudWatch alarm that you optionally
specify as the blocking alarm for practice runs.



=head2 OutcomeAlarms => ArrayRef[L<Paws::ARCZonalShift::ControlCondition>]

Specify a new the Amazon CloudWatch alarm as the outcome alarm for
practice runs.



=head2 B<REQUIRED> ResourceIdentifier => Str

The identifier for the resource that you want to update the practice
run configuration for. The identifier is the Amazon Resource Name (ARN)
for the resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdatePracticeRunConfiguration in L<Paws::ARCZonalShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

