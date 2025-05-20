
package Paws::IoTWireless::ListDevicesForWirelessDeviceImportTaskResponse;
  use Moose;
  has DestinationName => (is => 'ro', isa => 'Str');
  has ImportedWirelessDeviceList => (is => 'ro', isa => 'ArrayRef[Paws::IoTWireless::ImportedWirelessDevice]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::ListDevicesForWirelessDeviceImportTaskResponse

=head1 ATTRIBUTES


=head2 DestinationName => Str

The name of the Sidewalk destination that describes the IoT rule to
route messages received from devices in an import task that are
onboarded to AWS IoT Wireless.


=head2 ImportedWirelessDeviceList => ArrayRef[L<Paws::IoTWireless::ImportedWirelessDevice>]

List of wireless devices in an import task and their onboarding status.


=head2 NextToken => Str

The token to use to get the next set of results, or C<null> if there
are no additional results.


=head2 _request_id => Str


=cut

