
package Paws::BedrockAgent::GetAgentKnowledgeBase;
  use Moose;
  has AgentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'agentId', required => 1);
  has AgentVersion => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'agentVersion', required => 1);
  has KnowledgeBaseId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'knowledgeBaseId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAgentKnowledgeBase');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/agents/{agentId}/agentversions/{agentVersion}/knowledgebases/{knowledgeBaseId}/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockAgent::GetAgentKnowledgeBaseResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::GetAgentKnowledgeBase - Arguments for method GetAgentKnowledgeBase on L<Paws::BedrockAgent>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAgentKnowledgeBase on the
L<Agents for Amazon Bedrock|Paws::BedrockAgent> service. Use the attributes of this class
as arguments to method GetAgentKnowledgeBase.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAgentKnowledgeBase.

=head1 SYNOPSIS

    my $bedrock-agent = Paws->service('BedrockAgent');
    my $GetAgentKnowledgeBaseResponse = $bedrock -agent->GetAgentKnowledgeBase(
      AgentId         => 'MyId',
      AgentVersion    => 'MyVersion',
      KnowledgeBaseId => 'MyId',

    );

    # Results:
    my $AgentKnowledgeBase = $GetAgentKnowledgeBaseResponse->AgentKnowledgeBase;

    # Returns a L<Paws::BedrockAgent::GetAgentKnowledgeBaseResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-agent/GetAgentKnowledgeBase>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AgentId => Str

The unique identifier of the agent with which the knowledge base is
associated.



=head2 B<REQUIRED> AgentVersion => Str

The version of the agent with which the knowledge base is associated.



=head2 B<REQUIRED> KnowledgeBaseId => Str

The unique identifier of the knowledge base associated with the agent.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAgentKnowledgeBase in L<Paws::BedrockAgent>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

