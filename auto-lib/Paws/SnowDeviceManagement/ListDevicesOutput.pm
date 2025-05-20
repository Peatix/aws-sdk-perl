
package Paws::SnowDeviceManagement::ListDevicesOutput;
  use Moose;
  has Devices => (is => 'ro', isa => 'ArrayRef[Paws::SnowDeviceManagement::DeviceSummary]', traits => ['NameInRequest'], request_name => 'devices');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SnowDeviceManagement::ListDevicesOutput

=head1 ATTRIBUTES


=head2 Devices => ArrayRef[L<Paws::SnowDeviceManagement::DeviceSummary>]

A list of device structures that contain information about the device.


=head2 NextToken => Str

A pagination token to continue to the next page of devices.


=head2 _request_id => Str


=cut

