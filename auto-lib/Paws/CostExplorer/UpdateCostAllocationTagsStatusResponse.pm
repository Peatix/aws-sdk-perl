
package Paws::CostExplorer::UpdateCostAllocationTagsStatusResponse;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::CostExplorer::UpdateCostAllocationTagsStatusError]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::UpdateCostAllocationTagsStatusResponse

=head1 ATTRIBUTES


=head2 Errors => ArrayRef[L<Paws::CostExplorer::UpdateCostAllocationTagsStatusError>]

A list of C<UpdateCostAllocationTagsStatusError> objects with error
details about each cost allocation tag that can't be updated. If
there's no failure, an empty array returns.


=head2 _request_id => Str


=cut

1;