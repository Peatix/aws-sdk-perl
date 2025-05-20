
package Paws::IoTWireless::GetEventConfigurationByResourceTypesResponse;
  use Moose;
  has ConnectionStatus => (is => 'ro', isa => 'Paws::IoTWireless::ConnectionStatusResourceTypeEventConfiguration');
  has DeviceRegistrationState => (is => 'ro', isa => 'Paws::IoTWireless::DeviceRegistrationStateResourceTypeEventConfiguration');
  has Join => (is => 'ro', isa => 'Paws::IoTWireless::JoinResourceTypeEventConfiguration');
  has MessageDeliveryStatus => (is => 'ro', isa => 'Paws::IoTWireless::MessageDeliveryStatusResourceTypeEventConfiguration');
  has Proximity => (is => 'ro', isa => 'Paws::IoTWireless::ProximityResourceTypeEventConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::GetEventConfigurationByResourceTypesResponse

=head1 ATTRIBUTES


=head2 ConnectionStatus => L<Paws::IoTWireless::ConnectionStatusResourceTypeEventConfiguration>

Resource type event configuration for the connection status event.


=head2 DeviceRegistrationState => L<Paws::IoTWireless::DeviceRegistrationStateResourceTypeEventConfiguration>

Resource type event configuration for the device registration state
event.


=head2 Join => L<Paws::IoTWireless::JoinResourceTypeEventConfiguration>

Resource type event configuration for the join event.


=head2 MessageDeliveryStatus => L<Paws::IoTWireless::MessageDeliveryStatusResourceTypeEventConfiguration>

Resource type event configuration object for the message delivery
status event.


=head2 Proximity => L<Paws::IoTWireless::ProximityResourceTypeEventConfiguration>

Resource type event configuration for the proximity event.


=head2 _request_id => Str


=cut

