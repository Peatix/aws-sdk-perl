
package Paws::BedrockAgent::IngestKnowledgeBaseDocumentsResponse;
  use Moose;
  has DocumentDetails => (is => 'ro', isa => 'ArrayRef[Paws::BedrockAgent::KnowledgeBaseDocumentDetail]', traits => ['NameInRequest'], request_name => 'documentDetails');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::IngestKnowledgeBaseDocumentsResponse

=head1 ATTRIBUTES


=head2 DocumentDetails => ArrayRef[L<Paws::BedrockAgent::KnowledgeBaseDocumentDetail>]

A list of objects, each of which contains information about the
documents that were ingested.


=head2 _request_id => Str


=cut

