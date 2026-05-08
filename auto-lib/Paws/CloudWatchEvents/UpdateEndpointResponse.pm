
package Paws::CloudWatchEvents::UpdateEndpointResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has EndpointId => (is => 'ro', isa => 'Str');
  has EndpointUrl => (is => 'ro', isa => 'Str');
  has EventBuses => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchEvents::EndpointEventBus]');
  has Name => (is => 'ro', isa => 'Str');
  has ReplicationConfig => (is => 'ro', isa => 'Paws::CloudWatchEvents::ReplicationConfig');
  has RoleArn => (is => 'ro', isa => 'Str');
  has RoutingConfig => (is => 'ro', isa => 'Paws::CloudWatchEvents::RoutingConfig');
  has State => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::UpdateEndpointResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN of the endpoint you updated in this request.


=head2 EndpointId => Str

The ID of the endpoint you updated in this request.


=head2 EndpointUrl => Str

The URL of the endpoint you updated in this request.


=head2 EventBuses => ArrayRef[L<Paws::CloudWatchEvents::EndpointEventBus>]

The event buses used for replication for the endpoint you updated in
this request.


=head2 Name => Str

The name of the endpoint you updated in this request.


=head2 ReplicationConfig => L<Paws::CloudWatchEvents::ReplicationConfig>

Whether event replication was enabled or disabled for the endpoint you
updated in this request.


=head2 RoleArn => Str

The ARN of the role used by event replication for the endpoint you
updated in this request.


=head2 RoutingConfig => L<Paws::CloudWatchEvents::RoutingConfig>

The routing configuration you updated in this request.


=head2 State => Str

The state of the endpoint you updated in this request.

Valid values are: C<"ACTIVE">, C<"CREATING">, C<"UPDATING">, C<"DELETING">, C<"CREATE_FAILED">, C<"UPDATE_FAILED">, C<"DELETE_FAILED">
=head2 _request_id => Str


=cut

1;