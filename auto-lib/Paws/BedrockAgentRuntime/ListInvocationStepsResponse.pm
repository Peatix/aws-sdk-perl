
package Paws::BedrockAgentRuntime::ListInvocationStepsResponse;
  use Moose;
  has InvocationStepSummaries => (is => 'ro', isa => 'ArrayRef[Paws::BedrockAgentRuntime::InvocationStepSummary]', traits => ['NameInRequest'], request_name => 'invocationStepSummaries', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgentRuntime::ListInvocationStepsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> InvocationStepSummaries => ArrayRef[L<Paws::BedrockAgentRuntime::InvocationStepSummary>]

A list of summaries for each invocation step associated with a session
and if you specified it, an invocation within the session.


=head2 NextToken => Str

If the total number of results is greater than the C<maxResults> value
provided in the request, use this token when making another request in
the C<nextToken> field to return the next batch of results.


=head2 _request_id => Str


=cut

