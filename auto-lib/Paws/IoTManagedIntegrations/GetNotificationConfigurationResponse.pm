
package Paws::IoTManagedIntegrations::GetNotificationConfigurationResponse;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str');
  has DestinationName => (is => 'ro', isa => 'Str');
  has EventType => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::IoTManagedIntegrations::TagsMap');
  has UpdatedAt => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::GetNotificationConfigurationResponse

=head1 ATTRIBUTES


=head2 CreatedAt => Str

The timestamp value of when the notification configuration was created.


=head2 DestinationName => Str

The name of the destination for the notification configuration.


=head2 EventType => Str

The type of event triggering a device notification to the
customer-managed destination.

Valid values are: C<"DEVICE_COMMAND">, C<"DEVICE_COMMAND_REQUEST">, C<"DEVICE_EVENT">, C<"DEVICE_LIFE_CYCLE">, C<"DEVICE_STATE">, C<"DEVICE_OTA">, C<"CONNECTOR_ASSOCIATION">, C<"CONNECTOR_ERROR_REPORT">
=head2 Tags => L<Paws::IoTManagedIntegrations::TagsMap>

A set of key/value pairs that are used to manage the notification
configuration.


=head2 UpdatedAt => Str

The timestamp value of when the notification configuration was last
updated.


=head2 _request_id => Str


=cut

