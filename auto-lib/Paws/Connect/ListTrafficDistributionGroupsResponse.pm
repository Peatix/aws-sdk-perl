
package Paws::Connect::ListTrafficDistributionGroupsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has TrafficDistributionGroupSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::Connect::TrafficDistributionGroupSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListTrafficDistributionGroupsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 TrafficDistributionGroupSummaryList => ArrayRef[L<Paws::Connect::TrafficDistributionGroupSummary>]

A list of traffic distribution groups.


=head2 _request_id => Str


=cut

