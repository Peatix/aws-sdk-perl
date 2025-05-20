
package Paws::BedrockAgent::DeleteAgentAliasResponse;
  use Moose;
  has AgentAliasId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'agentAliasId', required => 1);
  has AgentAliasStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'agentAliasStatus', required => 1);
  has AgentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'agentId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::DeleteAgentAliasResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AgentAliasId => Str

The unique identifier of the alias that was deleted.


=head2 B<REQUIRED> AgentAliasStatus => Str

The status of the alias.

Valid values are: C<"CREATING">, C<"PREPARED">, C<"FAILED">, C<"UPDATING">, C<"DELETING">, C<"DISSOCIATED">
=head2 B<REQUIRED> AgentId => Str

The unique identifier of the agent that the alias belongs to.


=head2 _request_id => Str


=cut

