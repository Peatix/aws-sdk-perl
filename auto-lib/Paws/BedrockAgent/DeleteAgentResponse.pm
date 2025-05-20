
package Paws::BedrockAgent::DeleteAgentResponse;
  use Moose;
  has AgentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'agentId', required => 1);
  has AgentStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'agentStatus', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::DeleteAgentResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AgentId => Str

The unique identifier of the agent that was deleted.


=head2 B<REQUIRED> AgentStatus => Str

The status of the agent.

Valid values are: C<"CREATING">, C<"PREPARING">, C<"PREPARED">, C<"NOT_PREPARED">, C<"DELETING">, C<"FAILED">, C<"VERSIONING">, C<"UPDATING">
=head2 _request_id => Str


=cut

