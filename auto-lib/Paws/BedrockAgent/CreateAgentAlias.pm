
package Paws::BedrockAgent::CreateAgentAlias;
  use Moose;
  has AgentAliasName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'agentAliasName', required => 1);
  has AgentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'agentId', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has RoutingConfiguration => (is => 'ro', isa => 'ArrayRef[Paws::BedrockAgent::AgentAliasRoutingConfigurationListItem]', traits => ['NameInRequest'], request_name => 'routingConfiguration');
  has Tags => (is => 'ro', isa => 'Paws::BedrockAgent::TagsMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAgentAlias');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/agents/{agentId}/agentaliases/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockAgent::CreateAgentAliasResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::CreateAgentAlias - Arguments for method CreateAgentAlias on L<Paws::BedrockAgent>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAgentAlias on the
L<Agents for Amazon Bedrock|Paws::BedrockAgent> service. Use the attributes of this class
as arguments to method CreateAgentAlias.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAgentAlias.

=head1 SYNOPSIS

    my $bedrock-agent = Paws->service('BedrockAgent');
    my $CreateAgentAliasResponse = $bedrock -agent->CreateAgentAlias(
      AgentAliasName       => 'MyName',
      AgentId              => 'MyId',
      ClientToken          => 'MyClientToken',    # OPTIONAL
      Description          => 'MyDescription',    # OPTIONAL
      RoutingConfiguration => [
        {
          AgentVersion          => 'MyVersion',    # min: 1, max: 5; OPTIONAL
          ProvisionedThroughput =>
            'MyProvisionedModelIdentifier',        # min: 1, max: 2048; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $AgentAlias = $CreateAgentAliasResponse->AgentAlias;

    # Returns a L<Paws::BedrockAgent::CreateAgentAliasResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-agent/CreateAgentAlias>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AgentAliasName => Str

The name of the alias.



=head2 B<REQUIRED> AgentId => Str

The unique identifier of the agent.



=head2 ClientToken => Str

A unique, case-sensitive identifier to ensure that the API request
completes no more than one time. If this token matches a previous
request, Amazon Bedrock ignores the request, but does not return an
error. For more information, see Ensuring idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).



=head2 Description => Str

A description of the alias of the agent.



=head2 RoutingConfiguration => ArrayRef[L<Paws::BedrockAgent::AgentAliasRoutingConfigurationListItem>]

Contains details about the routing configuration of the alias.



=head2 Tags => L<Paws::BedrockAgent::TagsMap>

Any tags that you want to attach to the alias of the agent.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAgentAlias in L<Paws::BedrockAgent>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

