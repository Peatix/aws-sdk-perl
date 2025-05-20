
package Paws::QConnect::ListAIAgentsResponse;
  use Moose;
  has AiAgentSummaries => (is => 'ro', isa => 'ArrayRef[Paws::QConnect::AIAgentSummary]', traits => ['NameInRequest'], request_name => 'aiAgentSummaries', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::ListAIAgentsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AiAgentSummaries => ArrayRef[L<Paws::QConnect::AIAgentSummary>]

The summaries of AI Agents.


=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.


=head2 _request_id => Str


=cut

