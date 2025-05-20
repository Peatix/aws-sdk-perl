
package Paws::BedrockAgent::GetAgentVersionResponse;
  use Moose;
  has AgentVersion => (is => 'ro', isa => 'Paws::BedrockAgent::AgentVersion', traits => ['NameInRequest'], request_name => 'agentVersion', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::GetAgentVersionResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AgentVersion => L<Paws::BedrockAgent::AgentVersion>

Contains details about the version of the agent.


=head2 _request_id => Str


=cut

