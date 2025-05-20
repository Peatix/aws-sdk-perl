
package Paws::BedrockAgentRuntime::ListSessionsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SessionSummaries => (is => 'ro', isa => 'ArrayRef[Paws::BedrockAgentRuntime::SessionSummary]', traits => ['NameInRequest'], request_name => 'sessionSummaries', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgentRuntime::ListSessionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If the total number of results is greater than the C<maxResults> value
provided in the request, use this token when making another request in
the C<nextToken> field to return the next batch of results.


=head2 B<REQUIRED> SessionSummaries => ArrayRef[L<Paws::BedrockAgentRuntime::SessionSummary>]

A list of summaries for each session in your Amazon Web Services
account.


=head2 _request_id => Str


=cut

