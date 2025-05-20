
package Paws::IoTWireless::GetResourceEventConfigurationResponse;
  use Moose;
  has ConnectionStatus => (is => 'ro', isa => 'Paws::IoTWireless::ConnectionStatusEventConfiguration');
  has DeviceRegistrationState => (is => 'ro', isa => 'Paws::IoTWireless::DeviceRegistrationStateEventConfiguration');
  has Join => (is => 'ro', isa => 'Paws::IoTWireless::JoinEventConfiguration');
  has MessageDeliveryStatus => (is => 'ro', isa => 'Paws::IoTWireless::MessageDeliveryStatusEventConfiguration');
  has Proximity => (is => 'ro', isa => 'Paws::IoTWireless::ProximityEventConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::GetResourceEventConfigurationResponse

=head1 ATTRIBUTES


=head2 ConnectionStatus => L<Paws::IoTWireless::ConnectionStatusEventConfiguration>

Event configuration for the connection status event.


=head2 DeviceRegistrationState => L<Paws::IoTWireless::DeviceRegistrationStateEventConfiguration>

Event configuration for the device registration state event.


=head2 Join => L<Paws::IoTWireless::JoinEventConfiguration>

Event configuration for the join event.


=head2 MessageDeliveryStatus => L<Paws::IoTWireless::MessageDeliveryStatusEventConfiguration>

Event configuration for the message delivery status event.


=head2 Proximity => L<Paws::IoTWireless::ProximityEventConfiguration>

Event configuration for the proximity event.


=head2 _request_id => Str


=cut

