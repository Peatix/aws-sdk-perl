
package Paws::CloudWatchEvents::CreateEndpointResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has EventBuses => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchEvents::EndpointEventBus]');
  has Name => (is => 'ro', isa => 'Str');
  has ReplicationConfig => (is => 'ro', isa => 'Paws::CloudWatchEvents::ReplicationConfig');
  has RoleArn => (is => 'ro', isa => 'Str');
  has RoutingConfig => (is => 'ro', isa => 'Paws::CloudWatchEvents::RoutingConfig');
  has State => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::CreateEndpointResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN of the endpoint that was created by this request.


=head2 EventBuses => ArrayRef[L<Paws::CloudWatchEvents::EndpointEventBus>]

The event buses used by this request.


=head2 Name => Str

The name of the endpoint that was created by this request.


=head2 ReplicationConfig => L<Paws::CloudWatchEvents::ReplicationConfig>

Whether event replication was enabled or disabled by this request.


=head2 RoleArn => Str

The ARN of the role used by event replication for this request.


=head2 RoutingConfig => L<Paws::CloudWatchEvents::RoutingConfig>

The routing configuration defined by this request.


=head2 State => Str

The state of the endpoint that was created by this request.

Valid values are: C<"ACTIVE">, C<"CREATING">, C<"UPDATING">, C<"DELETING">, C<"CREATE_FAILED">, C<"UPDATE_FAILED">, C<"DELETE_FAILED">
=head2 _request_id => Str


=cut

1;