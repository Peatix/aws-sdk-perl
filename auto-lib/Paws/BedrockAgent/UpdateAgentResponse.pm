
package Paws::BedrockAgent::UpdateAgentResponse;
  use Moose;
  has Agent => (is => 'ro', isa => 'Paws::BedrockAgent::Agent', traits => ['NameInRequest'], request_name => 'agent', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::UpdateAgentResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Agent => L<Paws::BedrockAgent::Agent>

Contains details about the agent that was updated.


=head2 _request_id => Str


=cut

