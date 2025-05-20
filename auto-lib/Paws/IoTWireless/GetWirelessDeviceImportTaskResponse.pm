
package Paws::IoTWireless::GetWirelessDeviceImportTaskResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has DestinationName => (is => 'ro', isa => 'Str');
  has FailedImportedDeviceCount => (is => 'ro', isa => 'Int');
  has Id => (is => 'ro', isa => 'Str');
  has InitializedImportedDeviceCount => (is => 'ro', isa => 'Int');
  has OnboardedImportedDeviceCount => (is => 'ro', isa => 'Int');
  has PendingImportedDeviceCount => (is => 'ro', isa => 'Int');
  has Sidewalk => (is => 'ro', isa => 'Paws::IoTWireless::SidewalkGetStartImportInfo');
  has Status => (is => 'ro', isa => 'Str');
  has StatusReason => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::GetWirelessDeviceImportTaskResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN (Amazon Resource Name) of the import task.


=head2 CreationTime => Str

The time at which the import task was created.


=head2 DestinationName => Str

The name of the destination that's assigned to the wireless devices in
the import task.


=head2 FailedImportedDeviceCount => Int

The number of devices in the import task that failed to onboard to the
import task.


=head2 Id => Str

The identifier of the import task for which information is retrieved.


=head2 InitializedImportedDeviceCount => Int

The number of devices in the import task that are waiting for the
control log to start processing.


=head2 OnboardedImportedDeviceCount => Int

The number of devices in the import task that have been onboarded to
the import task.


=head2 PendingImportedDeviceCount => Int

The number of devices in the import task that are waiting in the import
task queue to be onboarded.


=head2 Sidewalk => L<Paws::IoTWireless::SidewalkGetStartImportInfo>

The Sidewalk-related information about an import task.


=head2 Status => Str

The import task status.

Valid values are: C<"INITIALIZING">, C<"INITIALIZED">, C<"PENDING">, C<"COMPLETE">, C<"FAILED">, C<"DELETING">
=head2 StatusReason => Str

The reason for the provided status information, such as a validation
error that causes the import task to fail.


=head2 _request_id => Str


=cut

