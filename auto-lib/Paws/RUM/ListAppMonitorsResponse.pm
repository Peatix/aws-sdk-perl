
package Paws::RUM::ListAppMonitorsResponse;
  use Moose;
  has AppMonitorSummaries => (is => 'ro', isa => 'ArrayRef[Paws::RUM::AppMonitorSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RUM::ListAppMonitorsResponse

=head1 ATTRIBUTES


=head2 AppMonitorSummaries => ArrayRef[L<Paws::RUM::AppMonitorSummary>]

An array of structures that contain information about the returned app
monitors.


=head2 NextToken => Str

A token that you can use in a subsequent operation to retrieve the next
set of results.


=head2 _request_id => Str


=cut

