
package Paws::CloudWatchEvents::UpdateEndpoint;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has EventBuses => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchEvents::EndpointEventBus]');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has ReplicationConfig => (is => 'ro', isa => 'Paws::CloudWatchEvents::ReplicationConfig');
  has RoleArn => (is => 'ro', isa => 'Str');
  has RoutingConfig => (is => 'ro', isa => 'Paws::CloudWatchEvents::RoutingConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateEndpoint');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchEvents::UpdateEndpointResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::UpdateEndpoint - Arguments for method UpdateEndpoint on L<Paws::CloudWatchEvents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateEndpoint on the
L<Amazon EventBridge|Paws::CloudWatchEvents> service. Use the attributes of this class
as arguments to method UpdateEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateEndpoint.

=head1 SYNOPSIS

    my $events = Paws->service('CloudWatchEvents');
    my $UpdateEndpointResponse = $events->UpdateEndpoint(
      Name        => 'MyEndpointName',
      Description => 'MyEndpointDescription',    # OPTIONAL
      EventBuses  => [
        {
          EventBusArn => 'MyNonPartnerEventBusArn',    # min: 1, max: 512

        },
        ...
      ],    # OPTIONAL
      ReplicationConfig => {
        State => 'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
      },    # OPTIONAL
      RoleArn       => 'MyIamRoleArn',    # OPTIONAL
      RoutingConfig => {
        FailoverConfig => {
          Primary => {
            HealthCheck => 'MyHealthCheck',    # min: 1, max: 1600

          },
          Secondary => {
            Route => 'MyRoute',                # min: 9, max: 20

          },

        },

      },    # OPTIONAL
    );

    # Results:
    my $Arn               = $UpdateEndpointResponse->Arn;
    my $EndpointId        = $UpdateEndpointResponse->EndpointId;
    my $EndpointUrl       = $UpdateEndpointResponse->EndpointUrl;
    my $EventBuses        = $UpdateEndpointResponse->EventBuses;
    my $Name              = $UpdateEndpointResponse->Name;
    my $ReplicationConfig = $UpdateEndpointResponse->ReplicationConfig;
    my $RoleArn           = $UpdateEndpointResponse->RoleArn;
    my $RoutingConfig     = $UpdateEndpointResponse->RoutingConfig;
    my $State             = $UpdateEndpointResponse->State;

    # Returns a L<Paws::CloudWatchEvents::UpdateEndpointResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 Description => Str

A description for the endpoint.



=head2 EventBuses => ArrayRef[L<Paws::CloudWatchEvents::EndpointEventBus>]

Define event buses used for replication.



=head2 B<REQUIRED> Name => Str

The name of the endpoint you want to update.



=head2 ReplicationConfig => L<Paws::CloudWatchEvents::ReplicationConfig>

Whether event replication was enabled or disabled by this request.



=head2 RoleArn => Str

The ARN of the role used by event replication for this request.



=head2 RoutingConfig => L<Paws::CloudWatchEvents::RoutingConfig>

Configure the routing policy, including the health check and secondary
Region.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateEndpoint in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

