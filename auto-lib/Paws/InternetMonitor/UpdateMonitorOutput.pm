
package Paws::InternetMonitor::UpdateMonitorOutput;
  use Moose;
  has MonitorArn => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::InternetMonitor::UpdateMonitorOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> MonitorArn => Str

The Amazon Resource Name (ARN) of the monitor.


=head2 B<REQUIRED> Status => Str

The status of a monitor.

Valid values are: C<"PENDING">, C<"ACTIVE">, C<"INACTIVE">, C<"ERROR">
=head2 _request_id => Str


=cut

