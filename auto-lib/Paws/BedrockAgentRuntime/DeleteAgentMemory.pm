
package Paws::BedrockAgentRuntime::DeleteAgentMemory;
  use Moose;
  has AgentAliasId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'agentAliasId', required => 1);
  has AgentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'agentId', required => 1);
  has MemoryId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'memoryId');
  has SessionId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'sessionId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAgentMemory');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/agents/{agentId}/agentAliases/{agentAliasId}/memories');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockAgentRuntime::DeleteAgentMemoryResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgentRuntime::DeleteAgentMemory - Arguments for method DeleteAgentMemory on L<Paws::BedrockAgentRuntime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteAgentMemory on the
L<Agents for Amazon Bedrock Runtime|Paws::BedrockAgentRuntime> service. Use the attributes of this class
as arguments to method DeleteAgentMemory.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteAgentMemory.

=head1 SYNOPSIS

    my $bedrock-agent-runtime = Paws->service('BedrockAgentRuntime');
    my $DeleteAgentMemoryResponse = $bedrock -agent-runtime->DeleteAgentMemory(
      AgentAliasId => 'MyAgentAliasId',
      AgentId      => 'MyAgentId',
      MemoryId     => 'MyMemoryId',       # OPTIONAL
      SessionId    => 'MySessionId',      # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime/DeleteAgentMemory>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AgentAliasId => Str

The unique identifier of an alias of an agent.



=head2 B<REQUIRED> AgentId => Str

The unique identifier of the agent to which the alias belongs.



=head2 MemoryId => Str

The unique identifier of the memory.



=head2 SessionId => Str

The unique session identifier of the memory.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteAgentMemory in L<Paws::BedrockAgentRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

