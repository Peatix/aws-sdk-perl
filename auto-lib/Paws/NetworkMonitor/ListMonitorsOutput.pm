
package Paws::NetworkMonitor::ListMonitorsOutput;
  use Moose;
  has Monitors => (is => 'ro', isa => 'ArrayRef[Paws::NetworkMonitor::MonitorSummary]', traits => ['NameInRequest'], request_name => 'monitors', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkMonitor::ListMonitorsOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Monitors => ArrayRef[L<Paws::NetworkMonitor::MonitorSummary>]

Lists individual details about each of your monitors.


=head2 NextToken => Str

The token for the next page of results.


=head2 _request_id => Str


=cut

