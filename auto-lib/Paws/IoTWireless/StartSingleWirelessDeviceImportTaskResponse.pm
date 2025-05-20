
package Paws::IoTWireless::StartSingleWirelessDeviceImportTaskResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::StartSingleWirelessDeviceImportTaskResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN (Amazon Resource Name) of the import task.


=head2 Id => Str

The import task ID.


=head2 _request_id => Str


=cut

