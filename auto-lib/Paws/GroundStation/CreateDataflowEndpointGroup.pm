
package Paws::GroundStation::CreateDataflowEndpointGroup;
  use Moose;
  has ContactPostPassDurationSeconds => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'contactPostPassDurationSeconds');
  has ContactPrePassDurationSeconds => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'contactPrePassDurationSeconds');
  has EndpointDetails => (is => 'ro', isa => 'ArrayRef[Paws::GroundStation::EndpointDetails]', traits => ['NameInRequest'], request_name => 'endpointDetails', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::GroundStation::TagsMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDataflowEndpointGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/dataflowEndpointGroup');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GroundStation::DataflowEndpointGroupIdResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::CreateDataflowEndpointGroup - Arguments for method CreateDataflowEndpointGroup on L<Paws::GroundStation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDataflowEndpointGroup on the
L<AWS Ground Station|Paws::GroundStation> service. Use the attributes of this class
as arguments to method CreateDataflowEndpointGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDataflowEndpointGroup.

=head1 SYNOPSIS

    my $groundstation = Paws->service('GroundStation');
    my $DataflowEndpointGroupIdResponse =
      $groundstation->CreateDataflowEndpointGroup(
      EndpointDetails => [
        {
          AwsGroundStationAgentEndpoint => {
            EgressAddress => {
              SocketAddress => {
                Name => 'MyString',
                Port => 1,

              },
              Mtu => 1,
            },
            IngressAddress => {
              SocketAddress => {
                Name      => 'MyIpV4Address',    # min: 7, max: 16
                PortRange => {
                  Maximum => 1,
                  Minimum => 1,

                },

              },
              Mtu => 1,    # min: 1400, max: 1500; OPTIONAL
            },
            Name        => 'MySafeName',    # min: 1, max: 256
            AgentStatus =>
              'SUCCESS',   # values: SUCCESS, FAILED, ACTIVE, INACTIVE; OPTIONAL
            AuditResults => 'HEALTHY',    # values: HEALTHY, UNHEALTHY; OPTIONAL
          },    # OPTIONAL
          Endpoint => {
            Address => {
              Name => 'MyString',
              Port => 1,

            },
            Mtu    => 1,               # min: 1400, max: 1500; OPTIONAL
            Name   => 'MySafeName',    # min: 1, max: 256
            Status => 'created'
            ,   # values: created, creating, deleted, deleting, failed; OPTIONAL
          },    # OPTIONAL
          HealthReasons => [
            'NO_REGISTERED_AGENT',
            ... # values: NO_REGISTERED_AGENT, INVALID_IP_OWNERSHIP, NOT_AUTHORIZED_TO_CREATE_SLR, UNVERIFIED_IP_OWNERSHIP, INITIALIZING_DATAPLANE, DATAPLANE_FAILURE, HEALTHY
          ],    # max: 500; OPTIONAL
          HealthStatus    => 'HEALTHY',   # values: HEALTHY, UNHEALTHY; OPTIONAL
          SecurityDetails => {
            RoleArn          => 'MyRoleArn',
            SecurityGroupIds => [ 'MyString', ... ],
            SubnetIds        => [ 'MyString', ... ],

          },                              # OPTIONAL
        },
        ...
      ],
      ContactPostPassDurationSeconds => 1,      # OPTIONAL
      ContactPrePassDurationSeconds  => 1,      # OPTIONAL
      Tags => { 'MyString' => 'MyString', },    # OPTIONAL
      );

    # Results:
    my $DataflowEndpointGroupId =
      $DataflowEndpointGroupIdResponse->DataflowEndpointGroupId;

    # Returns a L<Paws::GroundStation::DataflowEndpointGroupIdResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/groundstation/CreateDataflowEndpointGroup>

=head1 ATTRIBUTES


=head2 ContactPostPassDurationSeconds => Int

Amount of time, in seconds, after a contact ends that the Ground
Station Dataflow Endpoint Group will be in a C<POSTPASS> state. A
Ground Station Dataflow Endpoint Group State Change event will be
emitted when the Dataflow Endpoint Group enters and exits the
C<POSTPASS> state.



=head2 ContactPrePassDurationSeconds => Int

Amount of time, in seconds, before a contact starts that the Ground
Station Dataflow Endpoint Group will be in a C<PREPASS> state. A Ground
Station Dataflow Endpoint Group State Change event will be emitted when
the Dataflow Endpoint Group enters and exits the C<PREPASS> state.



=head2 B<REQUIRED> EndpointDetails => ArrayRef[L<Paws::GroundStation::EndpointDetails>]

Endpoint details of each endpoint in the dataflow endpoint group.

 All dataflow endpoints within a single dataflow endpoint group must be of the same type. You cannot mix <a href="https://docs.aws.amazon.com/ground-station/latest/APIReference/API_AwsGroundStationAgentEndpoint.html"> AWS Ground Station Agent endpoints</a> with <a href="https://docs.aws.amazon.com/ground-station/latest/APIReference/API_DataflowEndpoint.html">Dataflow endpoints</a> in the same group. If your use case requires both types of endpoints, you must create separate dataflow endpoint groups for each type. </p>



=head2 Tags => L<Paws::GroundStation::TagsMap>

Tags of a dataflow endpoint group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDataflowEndpointGroup in L<Paws::GroundStation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

