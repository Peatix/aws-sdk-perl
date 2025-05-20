
package Paws::BedrockAgent::GetAgentActionGroup;
  use Moose;
  has ActionGroupId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'actionGroupId', required => 1);
  has AgentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'agentId', required => 1);
  has AgentVersion => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'agentVersion', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAgentActionGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/agents/{agentId}/agentversions/{agentVersion}/actiongroups/{actionGroupId}/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockAgent::GetAgentActionGroupResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::GetAgentActionGroup - Arguments for method GetAgentActionGroup on L<Paws::BedrockAgent>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAgentActionGroup on the
L<Agents for Amazon Bedrock|Paws::BedrockAgent> service. Use the attributes of this class
as arguments to method GetAgentActionGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAgentActionGroup.

=head1 SYNOPSIS

    my $bedrock-agent = Paws->service('BedrockAgent');
    my $GetAgentActionGroupResponse = $bedrock -agent->GetAgentActionGroup(
      ActionGroupId => 'MyId',
      AgentId       => 'MyId',
      AgentVersion  => 'MyVersion',

    );

    # Results:
    my $AgentActionGroup = $GetAgentActionGroupResponse->AgentActionGroup;

    # Returns a L<Paws::BedrockAgent::GetAgentActionGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-agent/GetAgentActionGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActionGroupId => Str

The unique identifier of the action group for which to get information.



=head2 B<REQUIRED> AgentId => Str

The unique identifier of the agent that the action group belongs to.



=head2 B<REQUIRED> AgentVersion => Str

The version of the agent that the action group belongs to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAgentActionGroup in L<Paws::BedrockAgent>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

