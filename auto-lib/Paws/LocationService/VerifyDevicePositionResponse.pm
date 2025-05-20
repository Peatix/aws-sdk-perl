
package Paws::LocationService::VerifyDevicePositionResponse;
  use Moose;
  has DeviceId => (is => 'ro', isa => 'Str', required => 1);
  has DistanceUnit => (is => 'ro', isa => 'Str', required => 1);
  has InferredState => (is => 'ro', isa => 'Paws::LocationService::InferredState', required => 1);
  has ReceivedTime => (is => 'ro', isa => 'Str', required => 1);
  has SampleTime => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::VerifyDevicePositionResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeviceId => Str

The device identifier.


=head2 B<REQUIRED> DistanceUnit => Str

The distance unit for the verification response.

Valid values are: C<"Kilometers">, C<"Miles">
=head2 B<REQUIRED> InferredState => L<Paws::LocationService::InferredState>

The inferred state of the device, given the provided position, IP
address, cellular signals, and Wi-Fi- access points.


=head2 B<REQUIRED> ReceivedTime => Str

The timestamp for when the tracker resource received the device
position in ISO 8601
(https://www.iso.org/iso-8601-date-and-time-format.html) format:
C<YYYY-MM-DDThh:mm:ss.sssZ>.


=head2 B<REQUIRED> SampleTime => Str

The timestamp at which the device's position was determined. Uses ISO
8601 (https://www.iso.org/iso-8601-date-and-time-format.html) format:
C<YYYY-MM-DDThh:mm:ss.sssZ>.


=head2 _request_id => Str


=cut

