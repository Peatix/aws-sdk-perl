
package Paws::IoTManagedIntegrations::GetDeviceDiscoveryResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has ConnectorAssociationId => (is => 'ro', isa => 'Str');
  has ControllerId => (is => 'ro', isa => 'Str');
  has DiscoveryType => (is => 'ro', isa => 'Str', required => 1);
  has FinishedAt => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has StartedAt => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::IoTManagedIntegrations::TagsMap');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::GetDeviceDiscoveryResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the device discovery job request.


=head2 ConnectorAssociationId => Str

The ID tracking the current discovery process for one connector
association.


=head2 ControllerId => Str

The id of the end-user's IoT hub.


=head2 B<REQUIRED> DiscoveryType => Str

The discovery type supporting the type of device to be discovered in
the device discovery job request.

Valid values are: C<"ZWAVE">, C<"ZIGBEE">, C<"CLOUD">
=head2 FinishedAt => Str

The timestamp value for the completion time of the device discovery.


=head2 B<REQUIRED> Id => Str

The id of the device discovery job request.


=head2 B<REQUIRED> StartedAt => Str

The timestamp value for the start time of the device discovery.


=head2 B<REQUIRED> Status => Str

The status of the device discovery job request.

Valid values are: C<"RUNNING">, C<"SUCCEEDED">, C<"FAILED">, C<"TIMED_OUT">
=head2 Tags => L<Paws::IoTManagedIntegrations::TagsMap>

A set of key/value pairs that are used to manage the device discovery
request.


=head2 _request_id => Str


=cut

