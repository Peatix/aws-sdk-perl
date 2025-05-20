
package Paws::Wisdom::CreateKnowledgeBaseResponse;
  use Moose;
  has KnowledgeBase => (is => 'ro', isa => 'Paws::Wisdom::KnowledgeBaseData', traits => ['NameInRequest'], request_name => 'knowledgeBase');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Wisdom::CreateKnowledgeBaseResponse

=head1 ATTRIBUTES


=head2 KnowledgeBase => L<Paws::Wisdom::KnowledgeBaseData>

The knowledge base.


=head2 _request_id => Str


=cut

