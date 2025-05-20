
package Paws::BedrockAgent::GetAgentAliasResponse;
  use Moose;
  has AgentAlias => (is => 'ro', isa => 'Paws::BedrockAgent::AgentAlias', traits => ['NameInRequest'], request_name => 'agentAlias', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::GetAgentAliasResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AgentAlias => L<Paws::BedrockAgent::AgentAlias>

Contains information about the alias.


=head2 _request_id => Str


=cut

