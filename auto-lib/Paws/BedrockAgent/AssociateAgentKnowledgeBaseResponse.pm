
package Paws::BedrockAgent::AssociateAgentKnowledgeBaseResponse;
  use Moose;
  has AgentKnowledgeBase => (is => 'ro', isa => 'Paws::BedrockAgent::AgentKnowledgeBase', traits => ['NameInRequest'], request_name => 'agentKnowledgeBase', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::AssociateAgentKnowledgeBaseResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AgentKnowledgeBase => L<Paws::BedrockAgent::AgentKnowledgeBase>

Contains details about the knowledge base that has been associated with
the agent.


=head2 _request_id => Str


=cut

