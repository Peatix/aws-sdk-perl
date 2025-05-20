
package Paws::SSMContacts::UpdateRotation;
  use Moose;
  has ContactIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Recurrence => (is => 'ro', isa => 'Paws::SSMContacts::RecurrenceSettings', required => 1);
  has RotationId => (is => 'ro', isa => 'Str', required => 1);
  has StartTime => (is => 'ro', isa => 'Str');
  has TimeZoneId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateRotation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSMContacts::UpdateRotationResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMContacts::UpdateRotation - Arguments for method UpdateRotation on L<Paws::SSMContacts>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateRotation on the
L<AWS Systems Manager Incident Manager Contacts|Paws::SSMContacts> service. Use the attributes of this class
as arguments to method UpdateRotation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateRotation.

=head1 SYNOPSIS

    my $ssm-contacts = Paws->service('SSMContacts');
    my $UpdateRotationResult = $ssm -contacts->UpdateRotation(
      Recurrence => {
        NumberOfOnCalls      => 1,    # min: 1
        RecurrenceMultiplier => 1,    # min: 1, max: 100
        DailySettings        => [
          {
            HourOfDay    => 1,    # max: 23
            MinuteOfHour => 1,    # max: 59

          },
          ...
        ],    # OPTIONAL
        MonthlySettings => [
          {
            DayOfMonth  => 1,    # min: 1, max: 31
            HandOffTime => {
              HourOfDay    => 1,    # max: 23
              MinuteOfHour => 1,    # max: 59

            },

          },
          ...
        ],    # OPTIONAL
        ShiftCoverages => {
          'MON' => [
            {
              End => {
                HourOfDay    => 1,    # max: 23
                MinuteOfHour => 1,    # max: 59

              },
              Start => {
                HourOfDay    => 1,    # max: 23
                MinuteOfHour => 1,    # max: 59

              },
            },
            ...
          ],    # key: values: MON, TUE, WED, THU, FRI, SAT, SUN
        },    # OPTIONAL
        WeeklySettings => [
          {
            DayOfWeek   => 'MON',    # values: MON, TUE, WED, THU, FRI, SAT, SUN
            HandOffTime => {
              HourOfDay    => 1,     # max: 23
              MinuteOfHour => 1,     # max: 59

            },

          },
          ...
        ],    # OPTIONAL
      },
      RotationId => 'MySsmContactsArn',
      ContactIds => [
        'MySsmContactsArn', ...    # min: 1, max: 2048
      ],    # OPTIONAL
      StartTime  => '1970-01-01T01:00:00',    # OPTIONAL
      TimeZoneId => 'MyTimeZoneId',           # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-contacts/UpdateRotation>

=head1 ATTRIBUTES


=head2 ContactIds => ArrayRef[Str|Undef]

The Amazon Resource Names (ARNs) of the contacts to include in the
updated rotation.

The order in which you list the contacts is their shift order in the
rotation schedule.



=head2 B<REQUIRED> Recurrence => L<Paws::SSMContacts::RecurrenceSettings>

Information about how long the updated rotation lasts before restarting
at the beginning of the shift order.



=head2 B<REQUIRED> RotationId => Str

The Amazon Resource Name (ARN) of the rotation to update.



=head2 StartTime => Str

The date and time the rotation goes into effect.



=head2 TimeZoneId => Str

The time zone to base the updated rotationE<rsquo>s activity on, in
Internet Assigned Numbers Authority (IANA) format. For example:
"America/Los_Angeles", "UTC", or "Asia/Seoul". For more information,
see the Time Zone Database (https://www.iana.org/time-zones) on the
IANA website.

Designators for time zones that donE<rsquo>t support Daylight Savings
Time Rules, such as Pacific Standard Time (PST) and Pacific Daylight
Time (PDT), aren't supported.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateRotation in L<Paws::SSMContacts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

