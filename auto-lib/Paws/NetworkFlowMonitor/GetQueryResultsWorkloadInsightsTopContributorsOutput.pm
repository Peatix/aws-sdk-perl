
package Paws::NetworkFlowMonitor::GetQueryResultsWorkloadInsightsTopContributorsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has TopContributors => (is => 'ro', isa => 'ArrayRef[Paws::NetworkFlowMonitor::WorkloadInsightsTopContributorsRow]', traits => ['NameInRequest'], request_name => 'topContributors');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFlowMonitor::GetQueryResultsWorkloadInsightsTopContributorsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next set of results. You receive this token from a
previous call.


=head2 TopContributors => ArrayRef[L<Paws::NetworkFlowMonitor::WorkloadInsightsTopContributorsRow>]

The top contributor network flows overall for a specific metric type,
for example, the number of retransmissions.


=head2 _request_id => Str


=cut

