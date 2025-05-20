
package Paws::NetworkFlowMonitor::ListMonitorsOutput;
  use Moose;
  has Monitors => (is => 'ro', isa => 'ArrayRef[Paws::NetworkFlowMonitor::MonitorSummary]', traits => ['NameInRequest'], request_name => 'monitors', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFlowMonitor::ListMonitorsOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Monitors => ArrayRef[L<Paws::NetworkFlowMonitor::MonitorSummary>]

The monitors that are in an account.


=head2 NextToken => Str

The token for the next set of results. You receive this token from a
previous call.


=head2 _request_id => Str


=cut

