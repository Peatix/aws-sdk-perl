
package Paws::NetworkMonitor::GetMonitorOutput;
  use Moose;
  has AggregationPeriod => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'aggregationPeriod', required => 1);
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt', required => 1);
  has ModifiedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modifiedAt', required => 1);
  has MonitorArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'monitorArn', required => 1);
  has MonitorName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'monitorName', required => 1);
  has Probes => (is => 'ro', isa => 'ArrayRef[Paws::NetworkMonitor::Probe]', traits => ['NameInRequest'], request_name => 'probes');
  has State => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'state', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::NetworkMonitor::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkMonitor::GetMonitorOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> AggregationPeriod => Int

The aggregation period for the specified monitor.


=head2 B<REQUIRED> CreatedAt => Str

The time and date when the monitor was created.


=head2 B<REQUIRED> ModifiedAt => Str

The time and date when the monitor was last modified.


=head2 B<REQUIRED> MonitorArn => Str

The ARN of the selected monitor.


=head2 B<REQUIRED> MonitorName => Str

The name of the monitor.


=head2 Probes => ArrayRef[L<Paws::NetworkMonitor::Probe>]

The details about each probe associated with that monitor.


=head2 B<REQUIRED> State => Str

Lists the status of the C<state> of each monitor.

Valid values are: C<"PENDING">, C<"ACTIVE">, C<"INACTIVE">, C<"ERROR">, C<"DELETING">
=head2 Tags => L<Paws::NetworkMonitor::TagMap>

The list of key-value pairs assigned to the monitor.


=head2 _request_id => Str


=cut

