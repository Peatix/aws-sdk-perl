
package Paws::OpenSearch::DescribeDomainHealthResponse;
  use Moose;
  has ActiveAvailabilityZoneCount => (is => 'ro', isa => 'Str');
  has AvailabilityZoneCount => (is => 'ro', isa => 'Str');
  has ClusterHealth => (is => 'ro', isa => 'Str');
  has DataNodeCount => (is => 'ro', isa => 'Str');
  has DedicatedMaster => (is => 'ro', isa => 'Bool');
  has DomainState => (is => 'ro', isa => 'Str');
  has EnvironmentInformation => (is => 'ro', isa => 'ArrayRef[Paws::OpenSearch::EnvironmentInfo]');
  has MasterEligibleNodeCount => (is => 'ro', isa => 'Str');
  has MasterNode => (is => 'ro', isa => 'Str');
  has StandByAvailabilityZoneCount => (is => 'ro', isa => 'Str');
  has TotalShards => (is => 'ro', isa => 'Str');
  has TotalUnAssignedShards => (is => 'ro', isa => 'Str');
  has WarmNodeCount => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::DescribeDomainHealthResponse

=head1 ATTRIBUTES


=head2 ActiveAvailabilityZoneCount => Str

The number of active Availability Zones configured for the domain. If
the service is unable to fetch this information, it will return
C<NotAvailable>.


=head2 AvailabilityZoneCount => Str

The number of Availability Zones configured for the domain. If the
service is unable to fetch this information, it will return
C<NotAvailable>.


=head2 ClusterHealth => Str

The current health status of your cluster.

=over

=item *

C<Red> - At least one primary shard is not allocated to any node.

=item *

C<Yellow> - All primary shards are allocated to nodes, but some
replicas arenE<rsquo>t.

=item *

C<Green> - All primary shards and their replicas are allocated to
nodes.

=item *

C<NotAvailable> - Unable to retrieve cluster health.

=back


Valid values are: C<"Red">, C<"Yellow">, C<"Green">, C<"NotAvailable">
=head2 DataNodeCount => Str

The number of data nodes configured for the domain. If the service is
unable to fetch this information, it will return C<NotAvailable>.


=head2 DedicatedMaster => Bool

A boolean that indicates if dedicated master nodes are activated for
the domain.


=head2 DomainState => Str

The current state of the domain.

=over

=item *

C<Processing> - The domain has updates in progress.

=item *

C<Active> - Requested changes have been processed and deployed to the
domain.

=back


Valid values are: C<"Active">, C<"Processing">, C<"NotAvailable">
=head2 EnvironmentInformation => ArrayRef[L<Paws::OpenSearch::EnvironmentInfo>]

A list of C<EnvironmentInfo> for the domain.


=head2 MasterEligibleNodeCount => Str

The number of nodes that can be elected as a master node. If dedicated
master nodes is turned on, this value is the number of dedicated master
nodes configured for the domain. If the service is unable to fetch this
information, it will return C<NotAvailable>.


=head2 MasterNode => Str

Indicates whether the domain has an elected master node.

=over

=item *

B<Available> - The domain has an elected master node.

=item *

B<UnAvailable> - The master node hasn't yet been elected, and a quorum
to elect a new master node hasn't been reached.

=back


Valid values are: C<"Available">, C<"UnAvailable">
=head2 StandByAvailabilityZoneCount => Str

The number of standby Availability Zones configured for the domain. If
the service is unable to fetch this information, it will return
C<NotAvailable>.


=head2 TotalShards => Str

The total number of primary and replica shards for the domain.


=head2 TotalUnAssignedShards => Str

The total number of primary and replica shards not allocated to any of
the nodes for the cluster.


=head2 WarmNodeCount => Str

The number of warm nodes configured for the domain.


=head2 _request_id => Str


=cut

