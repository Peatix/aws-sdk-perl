
package Paws::IoTWireless::GetPositionResponse;
  use Moose;
  has Accuracy => (is => 'ro', isa => 'Paws::IoTWireless::Accuracy');
  has Position => (is => 'ro', isa => 'ArrayRef[Num]');
  has SolverProvider => (is => 'ro', isa => 'Str');
  has SolverType => (is => 'ro', isa => 'Str');
  has SolverVersion => (is => 'ro', isa => 'Str');
  has Timestamp => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::GetPositionResponse

=head1 ATTRIBUTES


=head2 Accuracy => L<Paws::IoTWireless::Accuracy>

The accuracy of the estimated position in meters. An empty value
indicates that no position data is available. A value of
E<lsquo>0.0E<rsquo> value indicates that position data is available.
This data corresponds to the position information that you specified
instead of the position computed by solver.


=head2 Position => ArrayRef[Num]

The position information of the resource.


=head2 SolverProvider => Str

The vendor of the positioning solver.

Valid values are: C<"Semtech">
=head2 SolverType => Str

The type of solver used to identify the position of the resource.

Valid values are: C<"GNSS">
=head2 SolverVersion => Str

The version of the positioning solver.


=head2 Timestamp => Str

The timestamp at which the device's position was determined.


=head2 _request_id => Str


=cut

