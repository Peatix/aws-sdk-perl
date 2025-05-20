
package Paws::BedrockAgentRuntime::RerankResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Results => (is => 'ro', isa => 'ArrayRef[Paws::BedrockAgentRuntime::RerankResult]', traits => ['NameInRequest'], request_name => 'results', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgentRuntime::RerankResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If the total number of results is greater than can fit in the response,
use this token in the C<nextToken> field when making another request to
return the next batch of results.


=head2 B<REQUIRED> Results => ArrayRef[L<Paws::BedrockAgentRuntime::RerankResult>]

An array of objects, each of which contains information about the
results of reranking.


=head2 _request_id => Str


=cut

