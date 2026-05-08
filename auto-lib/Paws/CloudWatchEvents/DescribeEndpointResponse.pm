
package Paws::CloudWatchEvents::DescribeEndpointResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has EndpointId => (is => 'ro', isa => 'Str');
  has EndpointUrl => (is => 'ro', isa => 'Str');
  has EventBuses => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchEvents::EndpointEventBus]');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has ReplicationConfig => (is => 'ro', isa => 'Paws::CloudWatchEvents::ReplicationConfig');
  has RoleArn => (is => 'ro', isa => 'Str');
  has RoutingConfig => (is => 'ro', isa => 'Paws::CloudWatchEvents::RoutingConfig');
  has State => (is => 'ro', isa => 'Str');
  has StateReason => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::DescribeEndpointResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN of the endpoint you asked for information about.


=head2 CreationTime => Str

The time the endpoint you asked for information about was created.


=head2 Description => Str

The description of the endpoint you asked for information about.


=head2 EndpointId => Str

The ID of the endpoint you asked for information about.


=head2 EndpointUrl => Str

The URL of the endpoint you asked for information about.


=head2 EventBuses => ArrayRef[L<Paws::CloudWatchEvents::EndpointEventBus>]

The event buses being used by the endpoint you asked for information
about.


=head2 LastModifiedTime => Str

The last time the endpoint you asked for information about was
modified.


=head2 Name => Str

The name of the endpoint you asked for information about.


=head2 ReplicationConfig => L<Paws::CloudWatchEvents::ReplicationConfig>

Whether replication is enabled or disabled for the endpoint you asked
for information about.


=head2 RoleArn => Str

The ARN of the role used by the endpoint you asked for information
about.


=head2 RoutingConfig => L<Paws::CloudWatchEvents::RoutingConfig>

The routing configuration of the endpoint you asked for information
about.


=head2 State => Str

The current state of the endpoint you asked for information about.

Valid values are: C<"ACTIVE">, C<"CREATING">, C<"UPDATING">, C<"DELETING">, C<"CREATE_FAILED">, C<"UPDATE_FAILED">, C<"DELETE_FAILED">
=head2 StateReason => Str

The reason the endpoint you asked for information about is in its
current state.


=head2 _request_id => Str


=cut

1;