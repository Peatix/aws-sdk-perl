
package Paws::BedrockAgent::UpdateAgentActionGroupResponse;
  use Moose;
  has AgentActionGroup => (is => 'ro', isa => 'Paws::BedrockAgent::AgentActionGroup', traits => ['NameInRequest'], request_name => 'agentActionGroup', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::UpdateAgentActionGroupResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AgentActionGroup => L<Paws::BedrockAgent::AgentActionGroup>

Contains details about the action group that was updated.


=head2 _request_id => Str


=cut

