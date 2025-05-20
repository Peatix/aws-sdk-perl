
package Paws::MemoryDB::CreateCluster;
  use Moose;
  has ACLName => (is => 'ro', isa => 'Str', required => 1);
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Bool');
  has ClusterName => (is => 'ro', isa => 'Str', required => 1);
  has DataTiering => (is => 'ro', isa => 'Bool');
  has Description => (is => 'ro', isa => 'Str');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has IpDiscovery => (is => 'ro', isa => 'Str');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has MaintenanceWindow => (is => 'ro', isa => 'Str');
  has MultiRegionClusterName => (is => 'ro', isa => 'Str');
  has NetworkType => (is => 'ro', isa => 'Str');
  has NodeType => (is => 'ro', isa => 'Str', required => 1);
  has NumReplicasPerShard => (is => 'ro', isa => 'Int');
  has NumShards => (is => 'ro', isa => 'Int');
  has ParameterGroupName => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SnapshotArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SnapshotName => (is => 'ro', isa => 'Str');
  has SnapshotRetentionLimit => (is => 'ro', isa => 'Int');
  has SnapshotWindow => (is => 'ro', isa => 'Str');
  has SnsTopicArn => (is => 'ro', isa => 'Str');
  has SubnetGroupName => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::MemoryDB::Tag]');
  has TLSEnabled => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MemoryDB::CreateClusterResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MemoryDB::CreateCluster - Arguments for method CreateCluster on L<Paws::MemoryDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCluster on the
L<Amazon MemoryDB|Paws::MemoryDB> service. Use the attributes of this class
as arguments to method CreateCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCluster.

=head1 SYNOPSIS

    my $memory-db = Paws->service('MemoryDB');
    my $CreateClusterResponse = $memory -db->CreateCluster(
      ACLName                 => 'MyACLName',
      ClusterName             => 'MyString',
      NodeType                => 'MyString',
      AutoMinorVersionUpgrade => 1,                      # OPTIONAL
      DataTiering             => 1,                      # OPTIONAL
      Description             => 'MyString',             # OPTIONAL
      Engine                  => 'MyString',             # OPTIONAL
      EngineVersion           => 'MyString',             # OPTIONAL
      IpDiscovery             => 'ipv4',                 # OPTIONAL
      KmsKeyId                => 'MyString',             # OPTIONAL
      MaintenanceWindow       => 'MyString',             # OPTIONAL
      MultiRegionClusterName  => 'MyString',             # OPTIONAL
      NetworkType             => 'ipv4',                 # OPTIONAL
      NumReplicasPerShard     => 1,                      # OPTIONAL
      NumShards               => 1,                      # OPTIONAL
      ParameterGroupName      => 'MyString',             # OPTIONAL
      Port                    => 1,                      # OPTIONAL
      SecurityGroupIds        => [ 'MyString', ... ],    # OPTIONAL
      SnapshotArns            => [ 'MyString', ... ],    # OPTIONAL
      SnapshotName            => 'MyString',             # OPTIONAL
      SnapshotRetentionLimit  => 1,                      # OPTIONAL
      SnapshotWindow          => 'MyString',             # OPTIONAL
      SnsTopicArn             => 'MyString',             # OPTIONAL
      SubnetGroupName         => 'MyString',             # OPTIONAL
      TLSEnabled              => 1,                      # OPTIONAL
      Tags                    => [
        {
          Key   => 'MyString',
          Value => 'MyString',
        },
        ...
      ],                                                 # OPTIONAL
    );

    # Results:
    my $Cluster = $CreateClusterResponse->Cluster;

    # Returns a L<Paws::MemoryDB::CreateClusterResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/memory-db/CreateCluster>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ACLName => Str

The name of the Access Control List to associate with the cluster.



=head2 AutoMinorVersionUpgrade => Bool

When set to true, the cluster will automatically receive minor engine
version upgrades after launch.



=head2 B<REQUIRED> ClusterName => Str

The name of the cluster. This value must be unique as it also serves as
the cluster identifier.



=head2 DataTiering => Bool

Enables data tiering. Data tiering is only supported for clusters using
the r6gd node type. This parameter must be set when using r6gd nodes.
For more information, see Data tiering
(https://docs.aws.amazon.com/memorydb/latest/devguide/data-tiering.html).



=head2 Description => Str

An optional description of the cluster.



=head2 Engine => Str

The name of the engine to be used for the cluster.



=head2 EngineVersion => Str

The version number of the Redis OSS engine to be used for the cluster.



=head2 IpDiscovery => Str

The mechanism for discovering IP addresses for the cluster discovery
protocol. Valid values are 'ipv4' or 'ipv6'. When set to 'ipv4',
cluster discovery functions such as cluster slots, cluster shards, and
cluster nodes return IPv4 addresses for cluster nodes. When set to
'ipv6', the cluster discovery functions return IPv6 addresses for
cluster nodes. The value must be compatible with the NetworkType
parameter. If not specified, the default is 'ipv4'.

Valid values are: C<"ipv4">, C<"ipv6">

=head2 KmsKeyId => Str

The ID of the KMS key used to encrypt the cluster.



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



=head2 MultiRegionClusterName => Str

The name of the multi-Region cluster to be created.



=head2 NetworkType => Str

Specifies the IP address type for the cluster. Valid values are 'ipv4',
'ipv6', or 'dual_stack'. When set to 'ipv4', the cluster will only be
accessible via IPv4 addresses. When set to 'ipv6', the cluster will
only be accessible via IPv6 addresses. When set to 'dual_stack', the
cluster will be accessible via both IPv4 and IPv6 addresses. If not
specified, the default is 'ipv4'.

Valid values are: C<"ipv4">, C<"ipv6">, C<"dual_stack">

=head2 B<REQUIRED> NodeType => Str

The compute and memory capacity of the nodes in the cluster.



=head2 NumReplicasPerShard => Int

The number of replicas to apply to each shard. The default value is 1.
The maximum is 5.



=head2 NumShards => Int

The number of shards the cluster will contain. The default value is 1.



=head2 ParameterGroupName => Str

The name of the parameter group associated with the cluster.



=head2 Port => Int

The port number on which each of the nodes accepts connections.



=head2 SecurityGroupIds => ArrayRef[Str|Undef]

A list of security group names to associate with this cluster.



=head2 SnapshotArns => ArrayRef[Str|Undef]

A list of Amazon Resource Names (ARN) that uniquely identify the RDB
snapshot files stored in Amazon S3. The snapshot files are used to
populate the new cluster. The Amazon S3 object name in the ARN cannot
contain any commas.



=head2 SnapshotName => Str

The name of a snapshot from which to restore data into the new cluster.
The snapshot status changes to restoring while the new cluster is being
created.



=head2 SnapshotRetentionLimit => Int

The number of days for which MemoryDB retains automatic snapshots
before deleting them. For example, if you set SnapshotRetentionLimit to
5, a snapshot that was taken today is retained for 5 days before being
deleted.



=head2 SnapshotWindow => Str

The daily time range (in UTC) during which MemoryDB begins taking a
daily snapshot of your shard.

Example: 05:00-09:00

If you do not specify this parameter, MemoryDB automatically chooses an
appropriate time range.



=head2 SnsTopicArn => Str

The Amazon Resource Name (ARN) of the Amazon Simple Notification
Service (SNS) topic to which notifications are sent.



=head2 SubnetGroupName => Str

The name of the subnet group to be used for the cluster.



=head2 Tags => ArrayRef[L<Paws::MemoryDB::Tag>]

A list of tags to be added to this resource. Tags are comma-separated
key,value pairs (e.g. Key=myKey, Value=myKeyValue. You can include
multiple tags as shown following: Key=myKey, Value=myKeyValue
Key=mySecondKey, Value=mySecondKeyValue.



=head2 TLSEnabled => Bool

A flag to enable in-transit encryption on the cluster.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCluster in L<Paws::MemoryDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

