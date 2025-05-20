
package Paws::Panorama::DescribeDeviceJobResponse;
  use Moose;
  has CreatedTime => (is => 'ro', isa => 'Str');
  has DeviceArn => (is => 'ro', isa => 'Str');
  has DeviceId => (is => 'ro', isa => 'Str');
  has DeviceName => (is => 'ro', isa => 'Str');
  has DeviceType => (is => 'ro', isa => 'Str');
  has ImageVersion => (is => 'ro', isa => 'Str');
  has JobId => (is => 'ro', isa => 'Str');
  has JobType => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Panorama::DescribeDeviceJobResponse

=head1 ATTRIBUTES


=head2 CreatedTime => Str

When the job was created.


=head2 DeviceArn => Str

The device's ARN.


=head2 DeviceId => Str

The device's ID.


=head2 DeviceName => Str

The device's name.


=head2 DeviceType => Str

The device's type.

Valid values are: C<"PANORAMA_APPLIANCE_DEVELOPER_KIT">, C<"PANORAMA_APPLIANCE">
=head2 ImageVersion => Str

For an OTA job, the target version of the device software.


=head2 JobId => Str

The job's ID.


=head2 JobType => Str

The job's type.

Valid values are: C<"OTA">, C<"REBOOT">
=head2 Status => Str

The job's status.

Valid values are: C<"PENDING">, C<"IN_PROGRESS">, C<"VERIFYING">, C<"REBOOTING">, C<"DOWNLOADING">, C<"COMPLETED">, C<"FAILED">
=head2 _request_id => Str


=cut

