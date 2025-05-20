
package Paws::QConnect::ListAIAgentVersionsResponse;
  use Moose;
  has AiAgentVersionSummaries => (is => 'ro', isa => 'ArrayRef[Paws::QConnect::AIAgentVersionSummary]', traits => ['NameInRequest'], request_name => 'aiAgentVersionSummaries', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::ListAIAgentVersionsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AiAgentVersionSummaries => ArrayRef[L<Paws::QConnect::AIAgentVersionSummary>]

The summaries of AI Agent versions.


=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.


=head2 _request_id => Str


=cut

