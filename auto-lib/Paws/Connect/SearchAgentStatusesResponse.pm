
package Paws::Connect::SearchAgentStatusesResponse;
  use Moose;
  has AgentStatuses => (is => 'ro', isa => 'ArrayRef[Paws::Connect::AgentStatus]');
  has ApproximateTotalCount => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::SearchAgentStatusesResponse

=head1 ATTRIBUTES


=head2 AgentStatuses => ArrayRef[L<Paws::Connect::AgentStatus>]

The search criteria to be used to return agent statuses.


=head2 ApproximateTotalCount => Int

The total number of agent statuses which matched your search query.


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 _request_id => Str


=cut

