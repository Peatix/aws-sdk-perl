
package Paws::IoTManagedIntegrations::CreateNotificationConfigurationResponse;
  use Moose;
  has EventType => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::CreateNotificationConfigurationResponse

=head1 ATTRIBUTES


=head2 EventType => Str

The type of event triggering a device notification to the
customer-managed destination.

Valid values are: C<"DEVICE_COMMAND">, C<"DEVICE_COMMAND_REQUEST">, C<"DEVICE_EVENT">, C<"DEVICE_LIFE_CYCLE">, C<"DEVICE_STATE">, C<"DEVICE_OTA">, C<"CONNECTOR_ASSOCIATION">, C<"CONNECTOR_ERROR_REPORT">
=head2 _request_id => Str


=cut

