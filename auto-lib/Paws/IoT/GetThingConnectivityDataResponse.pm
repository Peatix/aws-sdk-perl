
package Paws::IoT::GetThingConnectivityDataResponse;
  use Moose;
  has Connected => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'connected');
  has DisconnectReason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'disconnectReason');
  has ThingName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'thingName');
  has Timestamp => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'timestamp');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::GetThingConnectivityDataResponse

=head1 ATTRIBUTES


=head2 Connected => Bool

A Boolean that indicates the connectivity status.


=head2 DisconnectReason => Str

The reason why the client is disconnecting.

Valid values are: C<"AUTH_ERROR">, C<"CLIENT_INITIATED_DISCONNECT">, C<"CLIENT_ERROR">, C<"CONNECTION_LOST">, C<"DUPLICATE_CLIENTID">, C<"FORBIDDEN_ACCESS">, C<"MQTT_KEEP_ALIVE_TIMEOUT">, C<"SERVER_ERROR">, C<"SERVER_INITIATED_DISCONNECT">, C<"THROTTLED">, C<"WEBSOCKET_TTL_EXPIRATION">, C<"CUSTOMAUTH_TTL_EXPIRATION">, C<"UNKNOWN">, C<"NONE">
=head2 ThingName => Str

The name of your IoT thing.


=head2 Timestamp => Str

The timestamp of when the event occurred.


=head2 _request_id => Str


=cut

