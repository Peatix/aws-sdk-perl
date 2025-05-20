
package Paws::NetworkMonitor::UpdateMonitorOutput;
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

Paws::NetworkMonitor::UpdateMonitorOutput

=head1 ATTRIBUTES


=head2 AggregationPeriod => Int

The changed aggregation period.


=head2 B<REQUIRED> MonitorArn => Str

The ARN of the monitor that was updated.


=head2 B<REQUIRED> MonitorName => Str

The name of the monitor that was updated.


=head2 B<REQUIRED> State => Str

The state of the updated monitor.

Valid values are: C<"PENDING">, C<"ACTIVE">, C<"INACTIVE">, C<"ERROR">, C<"DELETING">
=head2 Tags => L<Paws::NetworkMonitor::TagMap>

The list of key-value pairs associated with the monitor.


=head2 _request_id => Str


=cut

