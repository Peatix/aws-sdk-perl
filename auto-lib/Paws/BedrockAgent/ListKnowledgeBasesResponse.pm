
package Paws::BedrockAgent::ListKnowledgeBasesResponse;
  use Moose;
  has KnowledgeBaseSummaries => (is => 'ro', isa => 'ArrayRef[Paws::BedrockAgent::KnowledgeBaseSummary]', traits => ['NameInRequest'], request_name => 'knowledgeBaseSummaries', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::ListKnowledgeBasesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> KnowledgeBaseSummaries => ArrayRef[L<Paws::BedrockAgent::KnowledgeBaseSummary>]

A list of knowledge bases with information about each knowledge base.


=head2 NextToken => Str

If the total number of results is greater than the C<maxResults> value
provided in the request, use this token when making another request in
the C<nextToken> field to return the next batch of results.


=head2 _request_id => Str


=cut

