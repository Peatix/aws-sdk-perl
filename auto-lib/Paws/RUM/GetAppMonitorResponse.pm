
package Paws::RUM::GetAppMonitorResponse;
  use Moose;
  has AppMonitor => (is => 'ro', isa => 'Paws::RUM::AppMonitor');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RUM::GetAppMonitorResponse

=head1 ATTRIBUTES


=head2 AppMonitor => L<Paws::RUM::AppMonitor>

A structure containing all the configuration information for the app
monitor.


=head2 _request_id => Str


=cut

