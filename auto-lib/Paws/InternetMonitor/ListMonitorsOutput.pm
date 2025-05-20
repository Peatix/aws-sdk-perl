
package Paws::InternetMonitor::ListMonitorsOutput;
  use Moose;
  has Monitors => (is => 'ro', isa => 'ArrayRef[Paws::InternetMonitor::Monitor]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::InternetMonitor::ListMonitorsOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Monitors => ArrayRef[L<Paws::InternetMonitor::Monitor>]

A list of monitors.


=head2 NextToken => Str

The token for the next set of results. You receive this token from a
previous call.


=head2 _request_id => Str


=cut

