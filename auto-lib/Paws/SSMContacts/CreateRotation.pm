
package Paws::SSMContacts::CreateRotation;
  use Moose;
  has ContactIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has IdempotencyToken => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Recurrence => (is => 'ro', isa => 'Paws::SSMContacts::RecurrenceSettings', required => 1);
  has StartTime => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SSMContacts::Tag]');
  has TimeZoneId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRotation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSMContacts::CreateRotationResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMContacts::CreateRotation - Arguments for method CreateRotation on L<Paws::SSMContacts>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRotation on the
L<AWS Systems Manager Incident Manager Contacts|Paws::SSMContacts> service. Use the attributes of this class
as arguments to method CreateRotation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRotation.

=head1 SYNOPSIS

    my $ssm-contacts = Paws->service('SSMContacts');
    my $CreateRotationResult = $ssm -contacts->CreateRotation(
      ContactIds => [
        'MySsmContactsArn', ...    # min: 1, max: 2048
      ],
      Name       => 'MyRotationName',
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
      TimeZoneId       => 'MyTimeZoneId',
      IdempotencyToken => 'MyIdempotencyToken',     # OPTIONAL
      StartTime        => '1970-01-01T01:00:00',    # OPTIONAL
      Tags             => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128; OPTIONAL
          Value => 'MyTagValue',    # min: 1, max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $RotationArn = $CreateRotationResult->RotationArn;

    # Returns a L<Paws::SSMContacts::CreateRotationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-contacts/CreateRotation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContactIds => ArrayRef[Str|Undef]

The Amazon Resource Names (ARNs) of the contacts to add to the
rotation.

The order that you list the contacts in is their shift order in the
rotation schedule. To change the order of the contact's shifts, use the
UpdateRotation operation.



=head2 IdempotencyToken => Str

A token that ensures that the operation is called only once with the
specified details.



=head2 B<REQUIRED> Name => Str

The name of the rotation.



=head2 B<REQUIRED> Recurrence => L<Paws::SSMContacts::RecurrenceSettings>

Information about the rule that specifies when a shift's team members
rotate.



=head2 StartTime => Str

The date and time that the rotation goes into effect.



=head2 Tags => ArrayRef[L<Paws::SSMContacts::Tag>]

Optional metadata to assign to the rotation. Tags enable you to
categorize a resource in different ways, such as by purpose, owner, or
environment. For more information, see Tagging Incident Manager
resources
(https://docs.aws.amazon.com/incident-manager/latest/userguide/tagging.html)
in the I<Incident Manager User Guide>.



=head2 B<REQUIRED> TimeZoneId => Str

The time zone to base the rotationE<rsquo>s activity on in Internet
Assigned Numbers Authority (IANA) format. For example:
"America/Los_Angeles", "UTC", or "Asia/Seoul". For more information,
see the Time Zone Database (https://www.iana.org/time-zones) on the
IANA website.

Designators for time zones that donE<rsquo>t support Daylight Savings
Time rules, such as Pacific Standard Time (PST) and Pacific Daylight
Time (PDT), are not supported.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRotation in L<Paws::SSMContacts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

