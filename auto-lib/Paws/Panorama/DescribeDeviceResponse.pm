
package Paws::Panorama::DescribeDeviceResponse;
  use Moose;
  has AlternateSoftwares => (is => 'ro', isa => 'ArrayRef[Paws::Panorama::AlternateSoftwareMetadata]');
  has Arn => (is => 'ro', isa => 'Str');
  has Brand => (is => 'ro', isa => 'Str');
  has CreatedTime => (is => 'ro', isa => 'Str');
  has CurrentNetworkingStatus => (is => 'ro', isa => 'Paws::Panorama::NetworkStatus');
  has CurrentSoftware => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DeviceAggregatedStatus => (is => 'ro', isa => 'Str');
  has DeviceConnectionStatus => (is => 'ro', isa => 'Str');
  has DeviceId => (is => 'ro', isa => 'Str');
  has LatestAlternateSoftware => (is => 'ro', isa => 'Str');
  has LatestDeviceJob => (is => 'ro', isa => 'Paws::Panorama::LatestDeviceJob');
  has LatestSoftware => (is => 'ro', isa => 'Str');
  has LeaseExpirationTime => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has NetworkingConfiguration => (is => 'ro', isa => 'Paws::Panorama::NetworkPayload');
  has ProvisioningStatus => (is => 'ro', isa => 'Str');
  has SerialNumber => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::Panorama::TagMap');
  has Type => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Panorama::DescribeDeviceResponse

=head1 ATTRIBUTES


=head2 AlternateSoftwares => ArrayRef[L<Paws::Panorama::AlternateSoftwareMetadata>]

Beta software releases available for the device.


=head2 Arn => Str

The device's ARN.


=head2 Brand => Str

The device's maker.

Valid values are: C<"AWS_PANORAMA">, C<"LENOVO">
=head2 CreatedTime => Str

When the device was created.


=head2 CurrentNetworkingStatus => L<Paws::Panorama::NetworkStatus>

The device's networking status.


=head2 CurrentSoftware => Str

The device's current software version.


=head2 Description => Str

The device's description.


=head2 DeviceAggregatedStatus => Str

A device's aggregated status. Including the device's connection status,
provisioning status, and lease status.

Valid values are: C<"ERROR">, C<"AWAITING_PROVISIONING">, C<"PENDING">, C<"FAILED">, C<"DELETING">, C<"ONLINE">, C<"OFFLINE">, C<"LEASE_EXPIRED">, C<"UPDATE_NEEDED">, C<"REBOOTING">
=head2 DeviceConnectionStatus => Str

The device's connection status.

Valid values are: C<"ONLINE">, C<"OFFLINE">, C<"AWAITING_CREDENTIALS">, C<"NOT_AVAILABLE">, C<"ERROR">
=head2 DeviceId => Str

The device's ID.


=head2 LatestAlternateSoftware => Str

The most recent beta software release.


=head2 LatestDeviceJob => L<Paws::Panorama::LatestDeviceJob>

A device's latest job. Includes the target image version, and the job
status.


=head2 LatestSoftware => Str

The latest software version available for the device.


=head2 LeaseExpirationTime => Str

The device's lease expiration time.


=head2 Name => Str

The device's name.


=head2 NetworkingConfiguration => L<Paws::Panorama::NetworkPayload>

The device's networking configuration.


=head2 ProvisioningStatus => Str

The device's provisioning status.

Valid values are: C<"AWAITING_PROVISIONING">, C<"PENDING">, C<"SUCCEEDED">, C<"FAILED">, C<"ERROR">, C<"DELETING">
=head2 SerialNumber => Str

The device's serial number.


=head2 Tags => L<Paws::Panorama::TagMap>

The device's tags.


=head2 Type => Str

The device's type.

Valid values are: C<"PANORAMA_APPLIANCE_DEVELOPER_KIT">, C<"PANORAMA_APPLIANCE">
=head2 _request_id => Str


=cut

