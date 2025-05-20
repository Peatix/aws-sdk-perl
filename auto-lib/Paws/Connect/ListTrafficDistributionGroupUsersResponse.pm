
package Paws::Connect::ListTrafficDistributionGroupUsersResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has TrafficDistributionGroupUserSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::Connect::TrafficDistributionGroupUserSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListTrafficDistributionGroupUsersResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 TrafficDistributionGroupUserSummaryList => ArrayRef[L<Paws::Connect::TrafficDistributionGroupUserSummary>]

A list of traffic distribution group users.


=head2 _request_id => Str


=cut

