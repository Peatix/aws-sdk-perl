
package Paws::Connect::ListFlowAssociationsResponse;
  use Moose;
  has FlowAssociationSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::Connect::FlowAssociationSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListFlowAssociationsResponse

=head1 ATTRIBUTES


=head2 FlowAssociationSummaryList => ArrayRef[L<Paws::Connect::FlowAssociationSummary>]

Summary of flow associations.


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 _request_id => Str


=cut

