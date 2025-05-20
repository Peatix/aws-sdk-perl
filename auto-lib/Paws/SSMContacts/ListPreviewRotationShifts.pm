
package Paws::SSMContacts::ListPreviewRotationShifts;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has Members => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');
  has Overrides => (is => 'ro', isa => 'ArrayRef[Paws::SSMContacts::PreviewOverride]');
  has Recurrence => (is => 'ro', isa => 'Paws::SSMContacts::RecurrenceSettings', required => 1);
  has RotationStartTime => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');
  has TimeZoneId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPreviewRotationShifts');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSMContacts::ListPreviewRotationShiftsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMContacts::ListPreviewRotationShifts - Arguments for method ListPreviewRotationShifts on L<Paws::SSMContacts>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPreviewRotationShifts on the
L<AWS Systems Manager Incident Manager Contacts|Paws::SSMContacts> service. Use the attributes of this class
as arguments to method ListPreviewRotationShifts.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPreviewRotationShifts.

=head1 SYNOPSIS

    my $ssm-contacts = Paws->service('SSMContacts');
    my $ListPreviewRotationShiftsResult =
      $ssm -contacts->ListPreviewRotationShifts(
      EndTime => '1970-01-01T01:00:00',
      Members => [
        'MyMember', ...    # min: 1, max: 512
      ],
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
      TimeZoneId => 'MyTimeZoneId',
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
      Overrides  => [
        {
          EndTime    => '1970-01-01T01:00:00',
          NewMembers => [
            'MyMember', ...    # min: 1, max: 512
          ],    # max: 30; OPTIONAL
          StartTime => '1970-01-01T01:00:00',
        },
        ...
      ],    # OPTIONAL
      RotationStartTime => '1970-01-01T01:00:00',    # OPTIONAL
      StartTime         => '1970-01-01T01:00:00',    # OPTIONAL
      );

    # Results:
    my $NextToken      = $ListPreviewRotationShiftsResult->NextToken;
    my $RotationShifts = $ListPreviewRotationShiftsResult->RotationShifts;

    # Returns a L<Paws::SSMContacts::ListPreviewRotationShiftsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-contacts/ListPreviewRotationShifts>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndTime => Str

The date and time a rotation shift would end.



=head2 MaxResults => Int

The maximum number of items to return for this call. The call also
returns a token that can be specified in a subsequent call to get the
next set of results.



=head2 B<REQUIRED> Members => ArrayRef[Str|Undef]

The contacts that would be assigned to a rotation.



=head2 NextToken => Str

A token to start the list. This token is used to get the next set of
results.



=head2 Overrides => ArrayRef[L<Paws::SSMContacts::PreviewOverride>]

Information about changes that would be made in a rotation override.



=head2 B<REQUIRED> Recurrence => L<Paws::SSMContacts::RecurrenceSettings>

Information about how long a rotation would last before restarting at
the beginning of the shift order.



=head2 RotationStartTime => Str

The date and time a rotation would begin. The first shift is calculated
from this date and time.



=head2 StartTime => Str

Used to filter the range of calculated shifts before sending the
response back to the user.



=head2 B<REQUIRED> TimeZoneId => Str

The time zone the rotationE<rsquo>s activity would be based on, in
Internet Assigned Numbers Authority (IANA) format. For example:
"America/Los_Angeles", "UTC", or "Asia/Seoul".




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPreviewRotationShifts in L<Paws::SSMContacts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

