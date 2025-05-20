
package Paws::GroundStation::DescribeContactResponse;
  use Moose;
  has ContactId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'contactId');
  has ContactStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'contactStatus');
  has DataflowList => (is => 'ro', isa => 'ArrayRef[Paws::GroundStation::DataflowDetail]', traits => ['NameInRequest'], request_name => 'dataflowList');
  has EndTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endTime');
  has ErrorMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'errorMessage');
  has GroundStation => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'groundStation');
  has MaximumElevation => (is => 'ro', isa => 'Paws::GroundStation::Elevation', traits => ['NameInRequest'], request_name => 'maximumElevation');
  has MissionProfileArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'missionProfileArn');
  has PostPassEndTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'postPassEndTime');
  has PrePassStartTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'prePassStartTime');
  has Region => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'region');
  has SatelliteArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'satelliteArn');
  has StartTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startTime');
  has Tags => (is => 'ro', isa => 'Paws::GroundStation::TagsMap', traits => ['NameInRequest'], request_name => 'tags');
  has VisibilityEndTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'visibilityEndTime');
  has VisibilityStartTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'visibilityStartTime');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::DescribeContactResponse

=head1 ATTRIBUTES


=head2 ContactId => Str

UUID of a contact.


=head2 ContactStatus => Str

Status of a contact.

Valid values are: C<"SCHEDULING">, C<"FAILED_TO_SCHEDULE">, C<"SCHEDULED">, C<"CANCELLED">, C<"AWS_CANCELLED">, C<"PREPASS">, C<"PASS">, C<"POSTPASS">, C<"COMPLETED">, C<"FAILED">, C<"AVAILABLE">, C<"CANCELLING">, C<"AWS_FAILED">
=head2 DataflowList => ArrayRef[L<Paws::GroundStation::DataflowDetail>]

List describing source and destination details for each dataflow edge.


=head2 EndTime => Str

End time of a contact in UTC.


=head2 ErrorMessage => Str

Error message for a contact.


=head2 GroundStation => Str

Ground station for a contact.


=head2 MaximumElevation => L<Paws::GroundStation::Elevation>

Maximum elevation angle of a contact.


=head2 MissionProfileArn => Str

ARN of a mission profile.


=head2 PostPassEndTime => Str

Amount of time after a contact ends that youE<rsquo>d like to receive a
CloudWatch event indicating the pass has finished.


=head2 PrePassStartTime => Str

Amount of time prior to contact start youE<rsquo>d like to receive a
CloudWatch event indicating an upcoming pass.


=head2 Region => Str

Region of a contact.


=head2 SatelliteArn => Str

ARN of a satellite.


=head2 StartTime => Str

Start time of a contact in UTC.


=head2 Tags => L<Paws::GroundStation::TagsMap>

Tags assigned to a contact.


=head2 VisibilityEndTime => Str

Projected time in UTC your satellite will set below the receive mask
(https://docs.aws.amazon.com/ground-station/latest/ug/site-masks.html).
This time is based on the satellite's current active ephemeris for
future contacts and the ephemeris that was active during contact
execution for completed contacts.


=head2 VisibilityStartTime => Str

Projected time in UTC your satellite will rise above the receive mask
(https://docs.aws.amazon.com/ground-station/latest/ug/site-masks.html).
This time is based on the satellite's current active ephemeris for
future contacts and the ephemeris that was active during contact
execution for completed contacts.


=head2 _request_id => Str


=cut

