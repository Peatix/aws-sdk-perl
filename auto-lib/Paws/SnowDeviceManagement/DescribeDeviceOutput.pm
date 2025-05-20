
package Paws::SnowDeviceManagement::DescribeDeviceOutput;
  use Moose;
  has AssociatedWithJob => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'associatedWithJob');
  has DeviceCapacities => (is => 'ro', isa => 'ArrayRef[Paws::SnowDeviceManagement::Capacity]', traits => ['NameInRequest'], request_name => 'deviceCapacities');
  has DeviceState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deviceState');
  has DeviceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deviceType');
  has LastReachedOutAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastReachedOutAt');
  has LastUpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedAt');
  has ManagedDeviceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'managedDeviceArn');
  has ManagedDeviceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'managedDeviceId');
  has PhysicalNetworkInterfaces => (is => 'ro', isa => 'ArrayRef[Paws::SnowDeviceManagement::PhysicalNetworkInterface]', traits => ['NameInRequest'], request_name => 'physicalNetworkInterfaces');
  has Software => (is => 'ro', isa => 'Paws::SnowDeviceManagement::SoftwareInformation', traits => ['NameInRequest'], request_name => 'software');
  has Tags => (is => 'ro', isa => 'Paws::SnowDeviceManagement::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SnowDeviceManagement::DescribeDeviceOutput

=head1 ATTRIBUTES


=head2 AssociatedWithJob => Str

The ID of the job used when ordering the device.


=head2 DeviceCapacities => ArrayRef[L<Paws::SnowDeviceManagement::Capacity>]

The hardware specifications of the device.


=head2 DeviceState => Str

The current state of the device.

Valid values are: C<"UNLOCKED">, C<"LOCKED">, C<"UNLOCKING">
=head2 DeviceType => Str

The type of Amazon Web Services Snow Family device.


=head2 LastReachedOutAt => Str

When the device last contacted the Amazon Web Services Cloud. Indicates
that the device is online.


=head2 LastUpdatedAt => Str

When the device last pushed an update to the Amazon Web Services Cloud.
Indicates when the device cache was refreshed.


=head2 ManagedDeviceArn => Str

The Amazon Resource Name (ARN) of the device.


=head2 ManagedDeviceId => Str

The ID of the device that you checked the information for.


=head2 PhysicalNetworkInterfaces => ArrayRef[L<Paws::SnowDeviceManagement::PhysicalNetworkInterface>]

The network interfaces available on the device.


=head2 Software => L<Paws::SnowDeviceManagement::SoftwareInformation>

The software installed on the device.


=head2 Tags => L<Paws::SnowDeviceManagement::TagMap>

Optional metadata that you assign to a resource. You can use tags to
categorize a resource in different ways, such as by purpose, owner, or
environment.


=head2 _request_id => Str


=cut

