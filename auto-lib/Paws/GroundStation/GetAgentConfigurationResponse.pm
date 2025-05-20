
package Paws::GroundStation::GetAgentConfigurationResponse;
  use Moose;
  has AgentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'agentId');
  has TaskingDocument => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'taskingDocument');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::GetAgentConfigurationResponse

=head1 ATTRIBUTES


=head2 AgentId => Str

UUID of agent.


=head2 TaskingDocument => Str

Tasking document for agent.


=head2 _request_id => Str


=cut

