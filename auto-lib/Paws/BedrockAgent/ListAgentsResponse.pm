
package Paws::BedrockAgent::ListAgentsResponse;
  use Moose;
  has AgentSummaries => (is => 'ro', isa => 'ArrayRef[Paws::BedrockAgent::AgentSummary]', traits => ['NameInRequest'], request_name => 'agentSummaries', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::ListAgentsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AgentSummaries => ArrayRef[L<Paws::BedrockAgent::AgentSummary>]

A list of objects, each of which contains information about an agent.


=head2 NextToken => Str

If the total number of results is greater than the C<maxResults> value
provided in the request, use this token when making another request in
the C<nextToken> field to return the next batch of results.


=head2 _request_id => Str


=cut

