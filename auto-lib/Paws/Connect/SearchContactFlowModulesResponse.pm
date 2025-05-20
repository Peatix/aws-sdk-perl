
package Paws::Connect::SearchContactFlowModulesResponse;
  use Moose;
  has ApproximateTotalCount => (is => 'ro', isa => 'Int');
  has ContactFlowModules => (is => 'ro', isa => 'ArrayRef[Paws::Connect::ContactFlowModule]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::SearchContactFlowModulesResponse

=head1 ATTRIBUTES


=head2 ApproximateTotalCount => Int

The total number of flows which matched your search query.


=head2 ContactFlowModules => ArrayRef[L<Paws::Connect::ContactFlowModule>]

The search criteria to be used to return flow modules.


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 _request_id => Str


=cut

