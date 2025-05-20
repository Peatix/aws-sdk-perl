
package Paws::Connect::ListAgentStatusResponse;
  use Moose;
  has AgentStatusSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::Connect::AgentStatusSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListAgentStatusResponse

=head1 ATTRIBUTES


=head2 AgentStatusSummaryList => ArrayRef[L<Paws::Connect::AgentStatusSummary>]

A summary of agent statuses.


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 _request_id => Str


=cut

