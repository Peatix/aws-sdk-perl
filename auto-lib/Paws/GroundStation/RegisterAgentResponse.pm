
package Paws::GroundStation::RegisterAgentResponse;
  use Moose;
  has AgentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'agentId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::RegisterAgentResponse

=head1 ATTRIBUTES


=head2 AgentId => Str

UUID of registered agent.


=head2 _request_id => Str


=cut

