
package Paws::GroundStation::UpdateAgentStatus;
  use Moose;
  has AgentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'agentId', required => 1);
  has AggregateStatus => (is => 'ro', isa => 'Paws::GroundStation::AggregateStatus', traits => ['NameInRequest'], request_name => 'aggregateStatus', required => 1);
  has ComponentStatuses => (is => 'ro', isa => 'ArrayRef[Paws::GroundStation::ComponentStatusData]', traits => ['NameInRequest'], request_name => 'componentStatuses', required => 1);
  has TaskId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'taskId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAgentStatus');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/agent/{agentId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GroundStation::UpdateAgentStatusResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::UpdateAgentStatus - Arguments for method UpdateAgentStatus on L<Paws::GroundStation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAgentStatus on the
L<AWS Ground Station|Paws::GroundStation> service. Use the attributes of this class
as arguments to method UpdateAgentStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAgentStatus.

=head1 SYNOPSIS

    my $groundstation = Paws->service('GroundStation');
    my $UpdateAgentStatusResponse = $groundstation->UpdateAgentStatus(
      AgentId         => 'MyUuid',
      AggregateStatus => {
        Status       => 'SUCCESS',   # values: SUCCESS, FAILED, ACTIVE, INACTIVE
        SignatureMap => { 'MyString' => 1, },    # OPTIONAL
      },
      ComponentStatuses => [
        {
          CapabilityArn => 'MyCapabilityArn',
          ComponentType => 'MyComponentTypeString',
          DataflowId    => 'MyUuid',                  # min: 36, max: 36
          Status => 'SUCCESS',    # values: SUCCESS, FAILED, ACTIVE, INACTIVE
          BytesReceived  => 1,    # OPTIONAL
          BytesSent      => 1,    # OPTIONAL
          PacketsDropped => 1,    # OPTIONAL
        },
        ...
      ],
      TaskId => 'MyUuid',

    );

    # Results:
    my $AgentId = $UpdateAgentStatusResponse->AgentId;

    # Returns a L<Paws::GroundStation::UpdateAgentStatusResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/groundstation/UpdateAgentStatus>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AgentId => Str

UUID of agent to update.



=head2 B<REQUIRED> AggregateStatus => L<Paws::GroundStation::AggregateStatus>

Aggregate status for agent.



=head2 B<REQUIRED> ComponentStatuses => ArrayRef[L<Paws::GroundStation::ComponentStatusData>]

List of component statuses for agent.



=head2 B<REQUIRED> TaskId => Str

GUID of agent task.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAgentStatus in L<Paws::GroundStation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

