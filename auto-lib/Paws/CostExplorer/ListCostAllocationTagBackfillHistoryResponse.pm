
package Paws::CostExplorer::ListCostAllocationTagBackfillHistoryResponse;
  use Moose;
  has BackfillRequests => (is => 'ro', isa => 'ArrayRef[Paws::CostExplorer::CostAllocationTagBackfillRequest]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::ListCostAllocationTagBackfillHistoryResponse

=head1 ATTRIBUTES


=head2 BackfillRequests => ArrayRef[L<Paws::CostExplorer::CostAllocationTagBackfillRequest>]

The list of historical cost allocation tag backfill requests.


=head2 NextToken => Str

The token to retrieve the next set of results. Amazon Web Services
provides the token when the response from a previous call has more
results than the maximum page size.


=head2 _request_id => Str


=cut

1;