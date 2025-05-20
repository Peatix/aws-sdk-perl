
package Paws::IoTManagedIntegrations::GetManagedThingConnectivityDataResponse;
  use Moose;
  has Connected => (is => 'ro', isa => 'Bool');
  has DisconnectReason => (is => 'ro', isa => 'Str');
  has ManagedThingId => (is => 'ro', isa => 'Str');
  has Timestamp => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::GetManagedThingConnectivityDataResponse

=head1 ATTRIBUTES


=head2 Connected => Bool

The connectivity status for a managed thing.


=head2 DisconnectReason => Str

The reason for the connectivity disconnect with the managed thing.

Valid values are: C<"AUTH_ERROR">, C<"CLIENT_INITIATED_DISCONNECT">, C<"CLIENT_ERROR">, C<"CONNECTION_LOST">, C<"DUPLICATE_CLIENTID">, C<"FORBIDDEN_ACCESS">, C<"MQTT_KEEP_ALIVE_TIMEOUT">, C<"SERVER_ERROR">, C<"SERVER_INITIATED_DISCONNECT">, C<"THROTTLED">, C<"WEBSOCKET_TTL_EXPIRATION">, C<"CUSTOMAUTH_TTL_EXPIRATION">, C<"UNKNOWN">, C<"NONE">
=head2 ManagedThingId => Str

The id of a managed thing.


=head2 Timestamp => Str

The timestamp value of when the connectivity status for a managed thing
was last taken.


=head2 _request_id => Str


=cut

