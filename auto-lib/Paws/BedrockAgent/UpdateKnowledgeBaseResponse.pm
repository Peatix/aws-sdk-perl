
package Paws::BedrockAgent::UpdateKnowledgeBaseResponse;
  use Moose;
  has KnowledgeBase => (is => 'ro', isa => 'Paws::BedrockAgent::KnowledgeBase', traits => ['NameInRequest'], request_name => 'knowledgeBase', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::UpdateKnowledgeBaseResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> KnowledgeBase => L<Paws::BedrockAgent::KnowledgeBase>

Contains details about the knowledge base.


=head2 _request_id => Str


=cut

