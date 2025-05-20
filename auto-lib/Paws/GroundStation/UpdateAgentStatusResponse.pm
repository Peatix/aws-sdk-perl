
package Paws::GroundStation::UpdateAgentStatusResponse;
  use Moose;
  has AgentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'agentId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::UpdateAgentStatusResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AgentId => Str

UUID of updated agent.


=head2 _request_id => Str


=cut

