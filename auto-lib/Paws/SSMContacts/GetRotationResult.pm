
package Paws::SSMContacts::GetRotationResult;
  use Moose;
  has ContactIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Recurrence => (is => 'ro', isa => 'Paws::SSMContacts::RecurrenceSettings', required => 1);
  has RotationArn => (is => 'ro', isa => 'Str', required => 1);
  has StartTime => (is => 'ro', isa => 'Str', required => 1);
  has TimeZoneId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSMContacts::GetRotationResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContactIds => ArrayRef[Str|Undef]

The Amazon Resource Names (ARNs) of the contacts assigned to the
on-call rotation team.


=head2 B<REQUIRED> Name => Str

The name of the on-call rotation.


=head2 B<REQUIRED> Recurrence => L<Paws::SSMContacts::RecurrenceSettings>

Specifies how long a rotation lasts before restarting at the beginning
of the shift order.


=head2 B<REQUIRED> RotationArn => Str

The Amazon Resource Name (ARN) of the on-call rotation.


=head2 B<REQUIRED> StartTime => Str

The specified start time for the on-call rotation.


=head2 B<REQUIRED> TimeZoneId => Str

The time zone that the rotationE<rsquo>s activity is based on, in
Internet Assigned Numbers Authority (IANA) format.


=head2 _request_id => Str


=cut

1;