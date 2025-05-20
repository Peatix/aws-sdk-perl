
package Paws::CostExplorer::ListCostAllocationTagsResponse;
  use Moose;
  has CostAllocationTags => (is => 'ro', isa => 'ArrayRef[Paws::CostExplorer::CostAllocationTag]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::ListCostAllocationTagsResponse

=head1 ATTRIBUTES


=head2 CostAllocationTags => ArrayRef[L<Paws::CostExplorer::CostAllocationTag>]

A list of cost allocation tags that includes the detailed metadata for
each one.


=head2 NextToken => Str

The token to retrieve the next set of results. Amazon Web Services
provides the token when the response from a previous call has more
results than the maximum page size.


=head2 _request_id => Str


=cut

1;