
package Paws::BedrockAgentRuntime::ListInvocationsResponse;
  use Moose;
  has InvocationSummaries => (is => 'ro', isa => 'ArrayRef[Paws::BedrockAgentRuntime::InvocationSummary]', traits => ['NameInRequest'], request_name => 'invocationSummaries', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgentRuntime::ListInvocationsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> InvocationSummaries => ArrayRef[L<Paws::BedrockAgentRuntime::InvocationSummary>]

A list of invocation summaries associated with the session.


=head2 NextToken => Str

If the total number of results is greater than the C<maxResults> value
provided in the request, use this token when making another request in
the C<nextToken> field to return the next batch of results.


=head2 _request_id => Str


=cut

