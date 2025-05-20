
package Paws::Connect::BatchGetFlowAssociationResponse;
  use Moose;
  has FlowAssociationSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::Connect::FlowAssociationSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::BatchGetFlowAssociationResponse

=head1 ATTRIBUTES


=head2 FlowAssociationSummaryList => ArrayRef[L<Paws::Connect::FlowAssociationSummary>]

Information about flow associations.


=head2 _request_id => Str


=cut

