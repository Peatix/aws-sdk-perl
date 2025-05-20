
package Paws::MemoryDB::UpdateCluster;
  use Moose;
  has ACLName => (is => 'ro', isa => 'Str');
  has ClusterName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has IpDiscovery => (is => 'ro', isa => 'Str');
  has MaintenanceWindow => (is => 'ro', isa => 'Str');
  has NodeType => (is => 'ro', isa => 'Str');
  has ParameterGroupName => (is => 'ro', isa => 'Str');
  has ReplicaConfiguration => (is => 'ro', isa => 'Paws::MemoryDB::ReplicaConfigurationRequest');
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ShardConfiguration => (is => 'ro', isa => 'Paws::MemoryDB::ShardConfigurationRequest');
  has SnapshotRetentionLimit => (is => 'ro', isa => 'Int');
  has SnapshotWindow => (is => 'ro', isa => 'Str');
  has SnsTopicArn => (is => 'ro', isa => 'Str');
  has SnsTopicStatus => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MemoryDB::UpdateClusterResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MemoryDB::UpdateCluster - Arguments for method UpdateCluster on L<Paws::MemoryDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateCluster on the
L<Amazon MemoryDB|Paws::MemoryDB> service. Use the attributes of this class
as arguments to method UpdateCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateCluster.

=head1 SYNOPSIS

    my $memory-db = Paws->service('MemoryDB');
    my $UpdateClusterResponse = $memory -db->UpdateCluster(
      ClusterName          => 'MyString',
      ACLName              => 'MyACLName',    # OPTIONAL
      Description          => 'MyString',     # OPTIONAL
      Engine               => 'MyString',     # OPTIONAL
      EngineVersion        => 'MyString',     # OPTIONAL
      IpDiscovery          => 'ipv4',         # OPTIONAL
      MaintenanceWindow    => 'MyString',     # OPTIONAL
      NodeType             => 'MyString',     # OPTIONAL
      ParameterGroupName   => 'MyString',     # OPTIONAL
      ReplicaConfiguration => {
        ReplicaCount => 1,                    # OPTIONAL
      },    # OPTIONAL
      SecurityGroupIds   => [ 'MyString', ... ],    # OPTIONAL
      ShardConfiguration => {
        ShardCount => 1,                            # OPTIONAL
      },    # OPTIONAL
      SnapshotRetentionLimit => 1,             # OPTIONAL
      SnapshotWindow         => 'MyString',    # OPTIONAL
      SnsTopicArn            => 'MyString',    # OPTIONAL
      SnsTopicStatus         => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Cluster = $UpdateClusterResponse->Cluster;

    # Returns a L<Paws::MemoryDB::UpdateClusterResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/memory-db/UpdateCluster>

=head1 ATTRIBUTES


=head2 ACLName => Str

The Access Control List that is associated with the cluster.



=head2 B<REQUIRED> ClusterName => Str

The name of the cluster to update.



=head2 Description => Str

The description of the cluster to update.



=head2 Engine => Str

The name of the engine to be used for the cluster.



=head2 EngineVersion => Str

The upgraded version of the engine to be run on the nodes. You can
upgrade to a newer engine version, but you cannot downgrade to an
earlier engine version. If you want to use an earlier engine version,
you must delete the existing cluster and create it anew with the
earlier engine version.



=head2 IpDiscovery => Str

The mechanism for discovering IP addresses for the cluster discovery
protocol. Valid values are 'ipv4' or 'ipv6'. When set to 'ipv4',
cluster discovery functions such as cluster slots, cluster shards, and
cluster nodes will return IPv4 addresses for cluster nodes. When set to
'ipv6', the cluster discovery functions return IPv6 addresses for
cluster nodes. The value must be compatible with the NetworkType
parameter. If not specified, the default is 'ipv4'.

Valid values are: C<"ipv4">, C<"ipv6">

=head2 MaintenanceWindow => Str

Specifies the weekly time range during which maintenance on the cluster
is performed. It is specified as a range in the format
ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance window
is a 60 minute period.

Valid values for C<ddd> are:

=over

=item *

C<sun>

=item *

C<mon>

=item *

C<tue>

=item *

C<wed>

=item *

C<thu>

=item *

C<fri>

=item *

C<sat>

=back

Example: C<sun:23:00-mon:01:30>



=head2 NodeType => Str

A valid node type that you want to scale this cluster up or down to.



=head2 ParameterGroupName => Str

The name of the parameter group to update.



=head2 ReplicaConfiguration => L<Paws::MemoryDB::ReplicaConfigurationRequest>

The number of replicas that will reside in each shard.



=head2 SecurityGroupIds => ArrayRef[Str|Undef]

The SecurityGroupIds to update.



=head2 ShardConfiguration => L<Paws::MemoryDB::ShardConfigurationRequest>

The number of shards in the cluster.



=head2 SnapshotRetentionLimit => Int

The number of days for which MemoryDB retains automatic cluster
snapshots before deleting them. For example, if you set
SnapshotRetentionLimit to 5, a snapshot that was taken today is
retained for 5 days before being deleted.



=head2 SnapshotWindow => Str

The daily time range (in UTC) during which MemoryDB begins taking a
daily snapshot of your cluster.



=head2 SnsTopicArn => Str

The SNS topic ARN to update.



=head2 SnsTopicStatus => Str

The status of the Amazon SNS notification topic. Notifications are sent
only if the status is active.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateCluster in L<Paws::MemoryDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

