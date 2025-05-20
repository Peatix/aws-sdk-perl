
package Paws::BedrockAgent::UpdateAgentKnowledgeBase;
  use Moose;
  has AgentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'agentId', required => 1);
  has AgentVersion => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'agentVersion', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has KnowledgeBaseId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'knowledgeBaseId', required => 1);
  has KnowledgeBaseState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'knowledgeBaseState');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAgentKnowledgeBase');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/agents/{agentId}/agentversions/{agentVersion}/knowledgebases/{knowledgeBaseId}/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockAgent::UpdateAgentKnowledgeBaseResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::UpdateAgentKnowledgeBase - Arguments for method UpdateAgentKnowledgeBase on L<Paws::BedrockAgent>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAgentKnowledgeBase on the
L<Agents for Amazon Bedrock|Paws::BedrockAgent> service. Use the attributes of this class
as arguments to method UpdateAgentKnowledgeBase.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAgentKnowledgeBase.

=head1 SYNOPSIS

    my $bedrock-agent = Paws->service('BedrockAgent');
    my $UpdateAgentKnowledgeBaseResponse =
      $bedrock -agent->UpdateAgentKnowledgeBase(
      AgentId            => 'MyId',
      AgentVersion       => 'MyDraftVersion',
      KnowledgeBaseId    => 'MyId',
      Description        => 'MyDescription',    # OPTIONAL
      KnowledgeBaseState => 'ENABLED',          # OPTIONAL
      );

    # Results:
    my $AgentKnowledgeBase =
      $UpdateAgentKnowledgeBaseResponse->AgentKnowledgeBase;

    # Returns a L<Paws::BedrockAgent::UpdateAgentKnowledgeBaseResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-agent/UpdateAgentKnowledgeBase>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AgentId => Str

The unique identifier of the agent associated with the knowledge base
that you want to update.



=head2 B<REQUIRED> AgentVersion => Str

The version of the agent associated with the knowledge base that you
want to update.



=head2 Description => Str

Specifies a new description for the knowledge base associated with an
agent.



=head2 B<REQUIRED> KnowledgeBaseId => Str

The unique identifier of the knowledge base that has been associated
with an agent.



=head2 KnowledgeBaseState => Str

Specifies whether the agent uses the knowledge base or not when sending
an InvokeAgent
(https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html)
request.

Valid values are: C<"ENABLED">, C<"DISABLED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAgentKnowledgeBase in L<Paws::BedrockAgent>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

