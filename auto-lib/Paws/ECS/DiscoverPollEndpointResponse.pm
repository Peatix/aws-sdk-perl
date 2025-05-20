
package Paws::ECS::DiscoverPollEndpointResponse;
  use Moose;
  has Endpoint => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endpoint' );
  has ServiceConnectEndpoint => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceConnectEndpoint' );
  has TelemetryEndpoint => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'telemetryEndpoint' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECS::DiscoverPollEndpointResponse

=head1 ATTRIBUTES


=head2 Endpoint => Str

The endpoint for the Amazon ECS agent to poll.


=head2 ServiceConnectEndpoint => Str

The endpoint for the Amazon ECS agent to poll for Service Connect
configuration. For more information, see Service Connect
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-connect.html)
in the I<Amazon Elastic Container Service Developer Guide>.


=head2 TelemetryEndpoint => Str

The telemetry endpoint for the Amazon ECS agent.


=head2 _request_id => Str


=cut

1;