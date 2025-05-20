
package Paws::BedrockAgent::UpdateAgentCollaboratorResponse;
  use Moose;
  has AgentCollaborator => (is => 'ro', isa => 'Paws::BedrockAgent::AgentCollaborator', traits => ['NameInRequest'], request_name => 'agentCollaborator', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::UpdateAgentCollaboratorResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AgentCollaborator => L<Paws::BedrockAgent::AgentCollaborator>

Details about the collaborator.


=head2 _request_id => Str


=cut

