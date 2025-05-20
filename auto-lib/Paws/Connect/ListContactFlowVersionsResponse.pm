
package Paws::Connect::ListContactFlowVersionsResponse;
  use Moose;
  has ContactFlowVersionSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::Connect::ContactFlowVersionSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListContactFlowVersionsResponse

=head1 ATTRIBUTES


=head2 ContactFlowVersionSummaryList => ArrayRef[L<Paws::Connect::ContactFlowVersionSummary>]

A list of flow version summaries.


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 _request_id => Str


=cut

