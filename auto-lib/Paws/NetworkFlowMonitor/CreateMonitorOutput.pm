
package Paws::NetworkFlowMonitor::CreateMonitorOutput;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt', required => 1);
  has LocalResources => (is => 'ro', isa => 'ArrayRef[Paws::NetworkFlowMonitor::MonitorLocalResource]', traits => ['NameInRequest'], request_name => 'localResources', required => 1);
  has ModifiedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modifiedAt', required => 1);
  has MonitorArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'monitorArn', required => 1);
  has MonitorName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'monitorName', required => 1);
  has MonitorStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'monitorStatus', required => 1);
  has RemoteResources => (is => 'ro', isa => 'ArrayRef[Paws::NetworkFlowMonitor::MonitorRemoteResource]', traits => ['NameInRequest'], request_name => 'remoteResources', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::NetworkFlowMonitor::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFlowMonitor::CreateMonitorOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatedAt => Str

The date and time when the monitor was created.


=head2 B<REQUIRED> LocalResources => ArrayRef[L<Paws::NetworkFlowMonitor::MonitorLocalResource>]

The local resources to monitor. A local resource, in a bi-directional
flow of a workload, is the host where the agent is installed.


=head2 B<REQUIRED> ModifiedAt => Str

The last date and time that the monitor was modified.


=head2 B<REQUIRED> MonitorArn => Str

The Amazon Resource Name (ARN) of the monitor.


=head2 B<REQUIRED> MonitorName => Str

The name of the monitor.


=head2 B<REQUIRED> MonitorStatus => Str

The status of a monitor. The status can be one of the following

=over

=item *

C<PENDING>: The monitor is in the process of being created.

=item *

C<ACTIVE>: The monitor is active.

=item *

C<INACTIVE>: The monitor is inactive.

=item *

C<ERROR>: Monitor creation failed due to an error.

=item *

C<DELETING>: The monitor is in the process of being deleted.

=back


Valid values are: C<"PENDING">, C<"ACTIVE">, C<"INACTIVE">, C<"ERROR">, C<"DELETING">
=head2 B<REQUIRED> RemoteResources => ArrayRef[L<Paws::NetworkFlowMonitor::MonitorRemoteResource>]

The remote resources to monitor. A remote resource is the other
endpoint in the bi-directional flow of a workload, with a local
resource. For example, Amazon Relational Database Service (RDS) can be
a remote resource. The remote resource is identified by its ARN or an
identifier.


=head2 Tags => L<Paws::NetworkFlowMonitor::TagMap>

The tags for a monitor.


=head2 _request_id => Str


=cut

