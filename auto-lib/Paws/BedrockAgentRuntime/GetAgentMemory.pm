
package Paws::BedrockAgentRuntime::GetAgentMemory;
  use Moose;
  has AgentAliasId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'agentAliasId', required => 1);
  has AgentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'agentId', required => 1);
  has MaxItems => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxItems');
  has MemoryId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'memoryId', required => 1);
  has MemoryType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'memoryType', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAgentMemory');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/agents/{agentId}/agentAliases/{agentAliasId}/memories');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockAgentRuntime::GetAgentMemoryResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgentRuntime::GetAgentMemory - Arguments for method GetAgentMemory on L<Paws::BedrockAgentRuntime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAgentMemory on the
L<Agents for Amazon Bedrock Runtime|Paws::BedrockAgentRuntime> service. Use the attributes of this class
as arguments to method GetAgentMemory.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAgentMemory.

=head1 SYNOPSIS

    my $bedrock-agent-runtime = Paws->service('BedrockAgentRuntime');
    my $GetAgentMemoryResponse = $bedrock -agent-runtime->GetAgentMemory(
      AgentAliasId => 'MyAgentAliasId',
      AgentId      => 'MyAgentId',
      MemoryId     => 'MyMemoryId',
      MemoryType   => 'SESSION_SUMMARY',
      MaxItems     => 1,                   # OPTIONAL
      NextToken    => 'MyNextToken',       # OPTIONAL
    );

    # Results:
    my $MemoryContents = $GetAgentMemoryResponse->MemoryContents;
    my $NextToken      = $GetAgentMemoryResponse->NextToken;

    # Returns a L<Paws::BedrockAgentRuntime::GetAgentMemoryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime/GetAgentMemory>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AgentAliasId => Str

The unique identifier of an alias of an agent.



=head2 B<REQUIRED> AgentId => Str

The unique identifier of the agent to which the alias belongs.



=head2 MaxItems => Int

The maximum number of items to return in the response. If the total
number of results is greater than this value, use the token returned in
the response in the C<nextToken> field when making another request to
return the next batch of results.



=head2 B<REQUIRED> MemoryId => Str

The unique identifier of the memory.



=head2 B<REQUIRED> MemoryType => Str

The type of memory.

Valid values are: C<"SESSION_SUMMARY">

=head2 NextToken => Str

If the total number of results is greater than the maxItems value
provided in the request, enter the token returned in the C<nextToken>
field in the response in this field to return the next batch of
results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAgentMemory in L<Paws::BedrockAgentRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

