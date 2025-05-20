
package Paws::Connect::ListContactFlowModulesResponse;
  use Moose;
  has ContactFlowModulesSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::Connect::ContactFlowModuleSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListContactFlowModulesResponse

=head1 ATTRIBUTES


=head2 ContactFlowModulesSummaryList => ArrayRef[L<Paws::Connect::ContactFlowModuleSummary>]

Information about the flow module.


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 _request_id => Str


=cut

