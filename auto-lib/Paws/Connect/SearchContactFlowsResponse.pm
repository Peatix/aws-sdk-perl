
package Paws::Connect::SearchContactFlowsResponse;
  use Moose;
  has ApproximateTotalCount => (is => 'ro', isa => 'Int');
  has ContactFlows => (is => 'ro', isa => 'ArrayRef[Paws::Connect::ContactFlow]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::SearchContactFlowsResponse

=head1 ATTRIBUTES


=head2 ApproximateTotalCount => Int

The total number of flows which matched your search query.


=head2 ContactFlows => ArrayRef[L<Paws::Connect::ContactFlow>]

Information about the flows.


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 _request_id => Str


=cut

