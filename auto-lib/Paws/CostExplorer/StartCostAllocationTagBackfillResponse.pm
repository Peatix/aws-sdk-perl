
package Paws::CostExplorer::StartCostAllocationTagBackfillResponse;
  use Moose;
  has BackfillRequest => (is => 'ro', isa => 'Paws::CostExplorer::CostAllocationTagBackfillRequest');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::StartCostAllocationTagBackfillResponse

=head1 ATTRIBUTES


=head2 BackfillRequest => L<Paws::CostExplorer::CostAllocationTagBackfillRequest>

An object containing detailed metadata of your new backfill request.


=head2 _request_id => Str


=cut

1;