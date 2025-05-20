
package Paws::BedrockAgent::UpdateAgentAlias;
  use Moose;
  has AgentAliasId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'agentAliasId', required => 1);
  has AgentAliasName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'agentAliasName', required => 1);
  has AgentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'agentId', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has RoutingConfiguration => (is => 'ro', isa => 'ArrayRef[Paws::BedrockAgent::AgentAliasRoutingConfigurationListItem]', traits => ['NameInRequest'], request_name => 'routingConfiguration');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAgentAlias');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/agents/{agentId}/agentaliases/{agentAliasId}/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockAgent::UpdateAgentAliasResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::UpdateAgentAlias - Arguments for method UpdateAgentAlias on L<Paws::BedrockAgent>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAgentAlias on the
L<Agents for Amazon Bedrock|Paws::BedrockAgent> service. Use the attributes of this class
as arguments to method UpdateAgentAlias.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAgentAlias.

=head1 SYNOPSIS

    my $bedrock-agent = Paws->service('BedrockAgent');
    my $UpdateAgentAliasResponse = $bedrock -agent->UpdateAgentAlias(
      AgentAliasId         => 'MyAgentAliasId',
      AgentAliasName       => 'MyName',
      AgentId              => 'MyId',
      Description          => 'MyDescription',    # OPTIONAL
      RoutingConfiguration => [
        {
          AgentVersion          => 'MyVersion',    # min: 1, max: 5; OPTIONAL
          ProvisionedThroughput =>
            'MyProvisionedModelIdentifier',        # min: 1, max: 2048; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $AgentAlias = $UpdateAgentAliasResponse->AgentAlias;

    # Returns a L<Paws::BedrockAgent::UpdateAgentAliasResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-agent/UpdateAgentAlias>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AgentAliasId => Str

The unique identifier of the alias.



=head2 B<REQUIRED> AgentAliasName => Str

Specifies a new name for the alias.



=head2 B<REQUIRED> AgentId => Str

The unique identifier of the agent.



=head2 Description => Str

Specifies a new description for the alias.



=head2 RoutingConfiguration => ArrayRef[L<Paws::BedrockAgent::AgentAliasRoutingConfigurationListItem>]

Contains details about the routing configuration of the alias.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAgentAlias in L<Paws::BedrockAgent>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

