
package Paws::BedrockAgentRuntime::RetrieveResponse;
  use Moose;
  has GuardrailAction => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'guardrailAction');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has RetrievalResults => (is => 'ro', isa => 'ArrayRef[Paws::BedrockAgentRuntime::KnowledgeBaseRetrievalResult]', traits => ['NameInRequest'], request_name => 'retrievalResults', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgentRuntime::RetrieveResponse

=head1 ATTRIBUTES


=head2 GuardrailAction => Str

Specifies if there is a guardrail intervention in the response.

Valid values are: C<"INTERVENED">, C<"NONE">
=head2 NextToken => Str

If there are more results than can fit in the response, the response
returns a C<nextToken>. Use this token in the C<nextToken> field of
another request to retrieve the next batch of results.


=head2 B<REQUIRED> RetrievalResults => ArrayRef[L<Paws::BedrockAgentRuntime::KnowledgeBaseRetrievalResult>]

A list of results from querying the knowledge base.


=head2 _request_id => Str


=cut

