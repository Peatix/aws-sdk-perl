
package Paws::IoTWireless::ListWirelessDeviceImportTasksResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has WirelessDeviceImportTaskList => (is => 'ro', isa => 'ArrayRef[Paws::IoTWireless::WirelessDeviceImportTask]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::ListWirelessDeviceImportTasksResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to get the next set of results, or C<null> if there
are no additional results.


=head2 WirelessDeviceImportTaskList => ArrayRef[L<Paws::IoTWireless::WirelessDeviceImportTask>]

List of import tasks and summary information of onboarding status of
devices in each import task.


=head2 _request_id => Str


=cut

