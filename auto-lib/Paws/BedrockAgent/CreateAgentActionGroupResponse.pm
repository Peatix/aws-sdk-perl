
package Paws::BedrockAgent::CreateAgentActionGroupResponse;
  use Moose;
  has AgentActionGroup => (is => 'ro', isa => 'Paws::BedrockAgent::AgentActionGroup', traits => ['NameInRequest'], request_name => 'agentActionGroup', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::CreateAgentActionGroupResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AgentActionGroup => L<Paws::BedrockAgent::AgentActionGroup>

Contains details about the action group that was created.


=head2 _request_id => Str


=cut

