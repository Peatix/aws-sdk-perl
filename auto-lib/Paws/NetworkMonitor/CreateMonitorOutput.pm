
package Paws::NetworkMonitor::CreateMonitorOutput;
  use Moose;
  has AggregationPeriod => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'aggregationPeriod');
  has MonitorArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'monitorArn', required => 1);
  has MonitorName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'monitorName', required => 1);
  has State => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'state', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::NetworkMonitor::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkMonitor::CreateMonitorOutput

=head1 ATTRIBUTES


=head2 AggregationPeriod => Int

The number of seconds that metrics are aggregated by and sent to Amazon
CloudWatch. This will be either C<30> or C<60>.


=head2 B<REQUIRED> MonitorArn => Str

The ARN of the monitor.


=head2 B<REQUIRED> MonitorName => Str

The name of the monitor.


=head2 B<REQUIRED> State => Str

The state of the monitor.

Valid values are: C<"PENDING">, C<"ACTIVE">, C<"INACTIVE">, C<"ERROR">, C<"DELETING">
=head2 Tags => L<Paws::NetworkMonitor::TagMap>

The list of key-value pairs assigned to the monitor.


=head2 _request_id => Str


=cut

