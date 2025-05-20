
package Paws::BedrockAgent::DeleteKnowledgeBaseDocumentsResponse;
  use Moose;
  has DocumentDetails => (is => 'ro', isa => 'ArrayRef[Paws::BedrockAgent::KnowledgeBaseDocumentDetail]', traits => ['NameInRequest'], request_name => 'documentDetails');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::DeleteKnowledgeBaseDocumentsResponse

=head1 ATTRIBUTES


=head2 DocumentDetails => ArrayRef[L<Paws::BedrockAgent::KnowledgeBaseDocumentDetail>]

A list of objects, each of which contains information about the
documents that were deleted.


=head2 _request_id => Str


=cut

