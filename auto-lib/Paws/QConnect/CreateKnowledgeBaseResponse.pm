
package Paws::QConnect::CreateKnowledgeBaseResponse;
  use Moose;
  has KnowledgeBase => (is => 'ro', isa => 'Paws::QConnect::KnowledgeBaseData', traits => ['NameInRequest'], request_name => 'knowledgeBase');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::CreateKnowledgeBaseResponse

=head1 ATTRIBUTES


=head2 KnowledgeBase => L<Paws::QConnect::KnowledgeBaseData>

The knowledge base.


=head2 _request_id => Str


=cut

