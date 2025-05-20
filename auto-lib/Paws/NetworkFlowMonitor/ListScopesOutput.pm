
package Paws::NetworkFlowMonitor::ListScopesOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Scopes => (is => 'ro', isa => 'ArrayRef[Paws::NetworkFlowMonitor::ScopeSummary]', traits => ['NameInRequest'], request_name => 'scopes', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFlowMonitor::ListScopesOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next set of results. You receive this token from a
previous call.


=head2 B<REQUIRED> Scopes => ArrayRef[L<Paws::NetworkFlowMonitor::ScopeSummary>]

The scopes returned by the call.


=head2 _request_id => Str


=cut

