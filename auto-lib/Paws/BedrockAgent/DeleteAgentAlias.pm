
package Paws::BedrockAgent::DeleteAgentAlias;
  use Moose;
  has AgentAliasId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'agentAliasId', required => 1);
  has AgentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'agentId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAgentAlias');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/agents/{agentId}/agentaliases/{agentAliasId}/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockAgent::DeleteAgentAliasResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::DeleteAgentAlias - Arguments for method DeleteAgentAlias on L<Paws::BedrockAgent>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteAgentAlias on the
L<Agents for Amazon Bedrock|Paws::BedrockAgent> service. Use the attributes of this class
as arguments to method DeleteAgentAlias.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteAgentAlias.

=head1 SYNOPSIS

    my $bedrock-agent = Paws->service('BedrockAgent');
    my $DeleteAgentAliasResponse = $bedrock -agent->DeleteAgentAlias(
      AgentAliasId => 'MyAgentAliasId',
      AgentId      => 'MyId',

    );

    # Results:
    my $AgentAliasId     = $DeleteAgentAliasResponse->AgentAliasId;
    my $AgentAliasStatus = $DeleteAgentAliasResponse->AgentAliasStatus;
    my $AgentId          = $DeleteAgentAliasResponse->AgentId;

    # Returns a L<Paws::BedrockAgent::DeleteAgentAliasResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-agent/DeleteAgentAlias>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AgentAliasId => Str

The unique identifier of the alias to delete.



=head2 B<REQUIRED> AgentId => Str

The unique identifier of the agent that the alias belongs to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteAgentAlias in L<Paws::BedrockAgent>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

