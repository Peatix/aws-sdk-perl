
package Paws::GroundStation::DescribeEphemerisResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime');
  has Enabled => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'enabled');
  has EphemerisId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ephemerisId');
  has InvalidReason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'invalidReason');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Priority => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'priority');
  has SatelliteId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'satelliteId');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has SuppliedData => (is => 'ro', isa => 'Paws::GroundStation::EphemerisTypeDescription', traits => ['NameInRequest'], request_name => 'suppliedData');
  has Tags => (is => 'ro', isa => 'Paws::GroundStation::TagsMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::DescribeEphemerisResponse

=head1 ATTRIBUTES


=head2 CreationTime => Str

The time the ephemeris was uploaded in UTC.


=head2 Enabled => Bool

Whether or not the ephemeris is enabled.


=head2 EphemerisId => Str

The AWS Ground Station ephemeris ID.


=head2 InvalidReason => Str

Reason that an ephemeris failed validation. Only provided for
ephemerides with C<INVALID> status.

Valid values are: C<"METADATA_INVALID">, C<"TIME_RANGE_INVALID">, C<"TRAJECTORY_INVALID">, C<"KMS_KEY_INVALID">, C<"VALIDATION_ERROR">
=head2 Name => Str

A name string associated with the ephemeris. Used as a human-readable
identifier for the ephemeris.


=head2 Priority => Int

Customer-provided priority score to establish the order in which
overlapping ephemerides should be used.

The default for customer-provided ephemeris priority is 1, and higher
numbers take precedence.

Priority must be 1 or greater


=head2 SatelliteId => Str

The AWS Ground Station satellite ID associated with ephemeris.


=head2 Status => Str

The status of the ephemeris.

Valid values are: C<"VALIDATING">, C<"INVALID">, C<"ERROR">, C<"ENABLED">, C<"DISABLED">, C<"EXPIRED">
=head2 SuppliedData => L<Paws::GroundStation::EphemerisTypeDescription>

Supplied ephemeris data.


=head2 Tags => L<Paws::GroundStation::TagsMap>

Tags assigned to an ephemeris.


=head2 _request_id => Str


=cut

