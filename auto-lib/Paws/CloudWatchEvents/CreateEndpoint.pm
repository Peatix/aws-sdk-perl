
package Paws::CloudWatchEvents::CreateEndpoint;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has EventBuses => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchEvents::EndpointEventBus]', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has ReplicationConfig => (is => 'ro', isa => 'Paws::CloudWatchEvents::ReplicationConfig');
  has RoleArn => (is => 'ro', isa => 'Str');
  has RoutingConfig => (is => 'ro', isa => 'Paws::CloudWatchEvents::RoutingConfig', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEndpoint');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchEvents::CreateEndpointResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::CreateEndpoint - Arguments for method CreateEndpoint on L<Paws::CloudWatchEvents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateEndpoint on the
L<Amazon EventBridge|Paws::CloudWatchEvents> service. Use the attributes of this class
as arguments to method CreateEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateEndpoint.

=head1 SYNOPSIS

    my $events = Paws->service('CloudWatchEvents');
    my $CreateEndpointResponse = $events->CreateEndpoint(
      EventBuses => [
        {
          EventBusArn => 'MyNonPartnerEventBusArn',    # min: 1, max: 512

        },
        ...
      ],
      Name          => 'MyEndpointName',
      RoutingConfig => {
        FailoverConfig => {
          Primary => {
            HealthCheck => 'MyHealthCheck',    # min: 1, max: 1600

          },
          Secondary => {
            Route => 'MyRoute',                # min: 9, max: 20

          },

        },

      },
      Description       => 'MyEndpointDescription',    # OPTIONAL
      ReplicationConfig => {
        State => 'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
      },    # OPTIONAL
      RoleArn => 'MyIamRoleArn',    # OPTIONAL
    );

    # Results:
    my $Arn               = $CreateEndpointResponse->Arn;
    my $EventBuses        = $CreateEndpointResponse->EventBuses;
    my $Name              = $CreateEndpointResponse->Name;
    my $ReplicationConfig = $CreateEndpointResponse->ReplicationConfig;
    my $RoleArn           = $CreateEndpointResponse->RoleArn;
    my $RoutingConfig     = $CreateEndpointResponse->RoutingConfig;
    my $State             = $CreateEndpointResponse->State;

    # Returns a L<Paws::CloudWatchEvents::CreateEndpointResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 Description => Str

A description of the global endpoint.



=head2 B<REQUIRED> EventBuses => ArrayRef[L<Paws::CloudWatchEvents::EndpointEventBus>]

Define the event buses used.

The names of the event buses must be identical in each Region.



=head2 B<REQUIRED> Name => Str

The name of the global endpoint. For example,
C<"Name":"us-east-2-custom_bus_A-endpoint">.



=head2 ReplicationConfig => L<Paws::CloudWatchEvents::ReplicationConfig>

Enable or disable event replication. The default state is C<ENABLED>
which means you must supply a C<RoleArn>. If you don't have a
C<RoleArn> or you don't want event replication enabled, set the state
to C<DISABLED>.



=head2 RoleArn => Str

The ARN of the role used for replication.



=head2 B<REQUIRED> RoutingConfig => L<Paws::CloudWatchEvents::RoutingConfig>

Configure the routing policy, including the health check and secondary
Region..




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateEndpoint in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

