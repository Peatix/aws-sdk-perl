
package Paws::ElastiCache::CreateReplicationGroup;
  use Moose;
  has AtRestEncryptionEnabled => (is => 'ro', isa => 'Bool');
  has AuthToken => (is => 'ro', isa => 'Str');
  has AutomaticFailoverEnabled => (is => 'ro', isa => 'Bool');
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Bool');
  has CacheNodeType => (is => 'ro', isa => 'Str');
  has CacheParameterGroupName => (is => 'ro', isa => 'Str');
  has CacheSecurityGroupNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has CacheSubnetGroupName => (is => 'ro', isa => 'Str');
  has ClusterMode => (is => 'ro', isa => 'Str');
  has DataTieringEnabled => (is => 'ro', isa => 'Bool');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has GlobalReplicationGroupId => (is => 'ro', isa => 'Str');
  has IpDiscovery => (is => 'ro', isa => 'Str');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has LogDeliveryConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::LogDeliveryConfigurationRequest]');
  has MultiAZEnabled => (is => 'ro', isa => 'Bool');
  has NetworkType => (is => 'ro', isa => 'Str');
  has NodeGroupConfiguration => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::NodeGroupConfiguration]');
  has NotificationTopicArn => (is => 'ro', isa => 'Str');
  has NumCacheClusters => (is => 'ro', isa => 'Int');
  has NumNodeGroups => (is => 'ro', isa => 'Int');
  has Port => (is => 'ro', isa => 'Int');
  has PreferredCacheClusterAZs => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has PrimaryClusterId => (is => 'ro', isa => 'Str');
  has ReplicasPerNodeGroup => (is => 'ro', isa => 'Int');
  has ReplicationGroupDescription => (is => 'ro', isa => 'Str', required => 1);
  has ReplicationGroupId => (is => 'ro', isa => 'Str', required => 1);
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ServerlessCacheSnapshotName => (is => 'ro', isa => 'Str');
  has SnapshotArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SnapshotName => (is => 'ro', isa => 'Str');
  has SnapshotRetentionLimit => (is => 'ro', isa => 'Int');
  has SnapshotWindow => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::Tag]');
  has TransitEncryptionEnabled => (is => 'ro', isa => 'Bool');
  has TransitEncryptionMode => (is => 'ro', isa => 'Str');
  has UserGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateReplicationGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElastiCache::CreateReplicationGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateReplicationGroupResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::CreateReplicationGroup - Arguments for method CreateReplicationGroup on L<Paws::ElastiCache>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateReplicationGroup on the
L<Amazon ElastiCache|Paws::ElastiCache> service. Use the attributes of this class
as arguments to method CreateReplicationGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateReplicationGroup.

=head1 SYNOPSIS

    my $elasticache = Paws->service('ElastiCache');
    # CreateCacheReplicationGroup
    # Creates a Redis replication group with 3 nodes.
    my $CreateReplicationGroupResult = $elasticache->CreateReplicationGroup(
      'AutomaticFailoverEnabled'    => 1,
      'CacheNodeType'               => 'cache.m3.medium',
      'Engine'                      => 'redis',
      'EngineVersion'               => '2.8.24',
      'NumCacheClusters'            => 3,
      'ReplicationGroupDescription' => 'A Redis replication group.',
      'ReplicationGroupId'          => 'my-redis-rg',
      'SnapshotRetentionLimit'      => 30
    );

    # Results:
    my $ReplicationGroup = $CreateReplicationGroupResult->ReplicationGroup;

 # Returns a L<Paws::ElastiCache::CreateReplicationGroupResult> object.
 # CreateReplicationGroup
 # Creates a Redis (cluster mode enabled) replication group with two shards. One
 # shard has one read replica node and the other shard has two read replicas.
    my $CreateReplicationGroupResult = $elasticache->CreateReplicationGroup(
      'AutoMinorVersionUpgrade' => 1,
      'CacheNodeType'           => 'cache.m3.medium',
      'CacheParameterGroupName' => 'default.redis3.2.cluster.on',
      'Engine'                  => 'redis',
      'EngineVersion'           => '3.2.4',
      'NodeGroupConfiguration'  => [

        {
          'PrimaryAvailabilityZone'  => 'us-east-1c',
          'ReplicaAvailabilityZones' => ['us-east-1b'],
          'ReplicaCount'             => 1,
          'Slots'                    => '0-8999'
        },

        {
          'PrimaryAvailabilityZone'  => 'us-east-1a',
          'ReplicaAvailabilityZones' => [ 'us-east-1a', 'us-east-1c' ],
          'ReplicaCount'             => 2,
          'Slots'                    => '9000-16383'
        }
      ],
      'NumNodeGroups'               => 2,
      'ReplicationGroupDescription' => 'A multi-sharded replication group',
      'ReplicationGroupId'          => 'clustered-redis-rg',
      'SnapshotRetentionLimit'      => 8
    );

    # Results:
    my $ReplicationGroup = $CreateReplicationGroupResult->ReplicationGroup;

    # Returns a L<Paws::ElastiCache::CreateReplicationGroupResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticache/CreateReplicationGroup>

=head1 ATTRIBUTES


=head2 AtRestEncryptionEnabled => Bool

A flag that enables encryption at rest when set to C<true>.

You cannot modify the value of C<AtRestEncryptionEnabled> after the
replication group is created. To enable encryption at rest on a
replication group you must set C<AtRestEncryptionEnabled> to C<true>
when you create the replication group.

B<Required:> Only available when creating a replication group in an
Amazon VPC using Valkey 7.2 and later, Redis OSS version C<3.2.6>, or
Redis OSS C<4.x> and later.

Default: C<true> when using Valkey, C<false> when using Redis OSS



=head2 AuthToken => Str

B<Reserved parameter.> The password used to access a password protected
server.

C<AuthToken> can be specified only on replication groups where
C<TransitEncryptionEnabled> is C<true>.

For HIPAA compliance, you must specify C<TransitEncryptionEnabled> as
C<true>, an C<AuthToken>, and a C<CacheSubnetGroup>.

Password constraints:

=over

=item *

Must be only printable ASCII characters.

=item *

Must be at least 16 characters and no more than 128 characters in
length.

=item *

The only permitted printable special characters are !, &, #, $, ^,
E<lt>, E<gt>, and -. Other printable special characters cannot be used
in the AUTH token.

=back

For more information, see AUTH password (http://redis.io/commands/AUTH)
at http://redis.io/commands/AUTH.



=head2 AutomaticFailoverEnabled => Bool

Specifies whether a read-only replica is automatically promoted to
read/write primary if the existing primary fails.

C<AutomaticFailoverEnabled> must be enabled for Valkey or Redis OSS
(cluster mode enabled) replication groups.

Default: false



=head2 AutoMinorVersionUpgrade => Bool

If you are running Valkey 7.2 and above or Redis OSS engine version 6.0
and above, set this parameter to yes to opt-in to the next auto minor
version upgrade campaign. This parameter is disabled for previous
versions.



=head2 CacheNodeType => Str

The compute and memory capacity of the nodes in the node group (shard).

The following node types are supported by ElastiCache. Generally
speaking, the current generation types provide more memory and
computational power at lower cost when compared to their equivalent
previous generation counterparts.

=over

=item *

General purpose:

=over

=item *

Current generation:

B<M7g node types>: C<cache.m7g.large>, C<cache.m7g.xlarge>,
C<cache.m7g.2xlarge>, C<cache.m7g.4xlarge>, C<cache.m7g.8xlarge>,
C<cache.m7g.12xlarge>, C<cache.m7g.16xlarge>

For region availability, see Supported Node Types
(https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion)

B<M6g node types> (available only for Redis OSS engine version 5.0.6
onward and for Memcached engine version 1.5.16 onward):
C<cache.m6g.large>, C<cache.m6g.xlarge>, C<cache.m6g.2xlarge>,
C<cache.m6g.4xlarge>, C<cache.m6g.8xlarge>, C<cache.m6g.12xlarge>,
C<cache.m6g.16xlarge>

B<M5 node types:> C<cache.m5.large>, C<cache.m5.xlarge>,
C<cache.m5.2xlarge>, C<cache.m5.4xlarge>, C<cache.m5.12xlarge>,
C<cache.m5.24xlarge>

B<M4 node types:> C<cache.m4.large>, C<cache.m4.xlarge>,
C<cache.m4.2xlarge>, C<cache.m4.4xlarge>, C<cache.m4.10xlarge>

B<T4g node types> (available only for Redis OSS engine version 5.0.6
onward and Memcached engine version 1.5.16 onward): C<cache.t4g.micro>,
C<cache.t4g.small>, C<cache.t4g.medium>

B<T3 node types:> C<cache.t3.micro>, C<cache.t3.small>,
C<cache.t3.medium>

B<T2 node types:> C<cache.t2.micro>, C<cache.t2.small>,
C<cache.t2.medium>

=item *

Previous generation: (not recommended. Existing clusters are still
supported but creation of new clusters is not supported for these
types.)

B<T1 node types:> C<cache.t1.micro>

B<M1 node types:> C<cache.m1.small>, C<cache.m1.medium>,
C<cache.m1.large>, C<cache.m1.xlarge>

B<M3 node types:> C<cache.m3.medium>, C<cache.m3.large>,
C<cache.m3.xlarge>, C<cache.m3.2xlarge>

=back

=item *

Compute optimized:

=over

=item *

Previous generation: (not recommended. Existing clusters are still
supported but creation of new clusters is not supported for these
types.)

B<C1 node types:> C<cache.c1.xlarge>

=back

=item *

Memory optimized:

=over

=item *

Current generation:

B<R7g node types>: C<cache.r7g.large>, C<cache.r7g.xlarge>,
C<cache.r7g.2xlarge>, C<cache.r7g.4xlarge>, C<cache.r7g.8xlarge>,
C<cache.r7g.12xlarge>, C<cache.r7g.16xlarge>

For region availability, see Supported Node Types
(https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion)

B<R6g node types> (available only for Redis OSS engine version 5.0.6
onward and for Memcached engine version 1.5.16 onward):
C<cache.r6g.large>, C<cache.r6g.xlarge>, C<cache.r6g.2xlarge>,
C<cache.r6g.4xlarge>, C<cache.r6g.8xlarge>, C<cache.r6g.12xlarge>,
C<cache.r6g.16xlarge>

B<R5 node types:> C<cache.r5.large>, C<cache.r5.xlarge>,
C<cache.r5.2xlarge>, C<cache.r5.4xlarge>, C<cache.r5.12xlarge>,
C<cache.r5.24xlarge>

B<R4 node types:> C<cache.r4.large>, C<cache.r4.xlarge>,
C<cache.r4.2xlarge>, C<cache.r4.4xlarge>, C<cache.r4.8xlarge>,
C<cache.r4.16xlarge>

=item *

Previous generation: (not recommended. Existing clusters are still
supported but creation of new clusters is not supported for these
types.)

B<M2 node types:> C<cache.m2.xlarge>, C<cache.m2.2xlarge>,
C<cache.m2.4xlarge>

B<R3 node types:> C<cache.r3.large>, C<cache.r3.xlarge>,
C<cache.r3.2xlarge>, C<cache.r3.4xlarge>, C<cache.r3.8xlarge>

=back

=back

B<Additional node type info>

=over

=item *

All current generation instance types are created in Amazon VPC by
default.

=item *

Valkey or Redis OSS append-only files (AOF) are not supported for T1 or
T2 instances.

=item *

Valkey or Redis OSS Multi-AZ with automatic failover is not supported
on T1 instances.

=item *

The configuration variables C<appendonly> and C<appendfsync> are not
supported on Valkey, or on Redis OSS version 2.8.22 and later.

=back




=head2 CacheParameterGroupName => Str

The name of the parameter group to associate with this replication
group. If this argument is omitted, the default cache parameter group
for the specified engine is used.

If you are running Valkey or Redis OSS version 3.2.4 or later, only one
node group (shard), and want to use a default parameter group, we
recommend that you specify the parameter group by name.

=over

=item *

To create a Valkey or Redis OSS (cluster mode disabled) replication
group, use C<CacheParameterGroupName=default.redis3.2>.

=item *

To create a Valkey or Redis OSS (cluster mode enabled) replication
group, use C<CacheParameterGroupName=default.redis3.2.cluster.on>.

=back




=head2 CacheSecurityGroupNames => ArrayRef[Str|Undef]

A list of cache security group names to associate with this replication
group.



=head2 CacheSubnetGroupName => Str

The name of the cache subnet group to be used for the replication
group.

If you're going to launch your cluster in an Amazon VPC, you need to
create a subnet group before you start creating a cluster. For more
information, see Subnets and Subnet Groups
(https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/SubnetGroups.html).



=head2 ClusterMode => Str

Enabled or Disabled. To modify cluster mode from Disabled to Enabled,
you must first set the cluster mode to Compatible. Compatible mode
allows your Valkey or Redis OSS clients to connect using both cluster
mode enabled and cluster mode disabled. After you migrate all Valkey or
Redis OSS clients to use cluster mode enabled, you can then complete
cluster mode configuration and set the cluster mode to Enabled.

Valid values are: C<"enabled">, C<"disabled">, C<"compatible">

=head2 DataTieringEnabled => Bool

Enables data tiering. Data tiering is only supported for replication
groups using the r6gd node type. This parameter must be set to true
when using r6gd nodes. For more information, see Data tiering
(https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/data-tiering.html).



=head2 Engine => Str

The name of the cache engine to be used for the clusters in this
replication group. The value must be set to C<valkey> or C<redis>.



=head2 EngineVersion => Str

The version number of the cache engine to be used for the clusters in
this replication group. To view the supported cache engine versions,
use the C<DescribeCacheEngineVersions> operation.

B<Important:> You can upgrade to a newer engine version (see Selecting
a Cache Engine and Version
(https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/SelectEngine.html#VersionManagement))
in the I<ElastiCache User Guide>, but you cannot downgrade to an
earlier engine version. If you want to use an earlier engine version,
you must delete the existing cluster or replication group and create it
anew with the earlier engine version.



=head2 GlobalReplicationGroupId => Str

The name of the Global datastore



=head2 IpDiscovery => Str

The network type you choose when creating a replication group, either
C<ipv4> | C<ipv6>. IPv6 is supported for workloads using Valkey 7.2 and
above, Redis OSS engine version 6.2 to 7.1 or Memcached engine version
1.6.6 and above on all instances built on the Nitro system
(http://aws.amazon.com/ec2/nitro/).

Valid values are: C<"ipv4">, C<"ipv6">

=head2 KmsKeyId => Str

The ID of the KMS key used to encrypt the disk in the cluster.



=head2 LogDeliveryConfigurations => ArrayRef[L<Paws::ElastiCache::LogDeliveryConfigurationRequest>]

Specifies the destination, format and type of the logs.



=head2 MultiAZEnabled => Bool

A flag indicating if you have Multi-AZ enabled to enhance fault
tolerance. For more information, see Minimizing Downtime: Multi-AZ
(http://docs.aws.amazon.com/AmazonElastiCache/latest/dg/AutoFailover.html).



=head2 NetworkType => Str

Must be either C<ipv4> | C<ipv6> | C<dual_stack>. IPv6 is supported for
workloads using Valkey 7.2 and above, Redis OSS engine version 6.2 to
7.1 and Memcached engine version 1.6.6 and above on all instances built
on the Nitro system (http://aws.amazon.com/ec2/nitro/).

Valid values are: C<"ipv4">, C<"ipv6">, C<"dual_stack">

=head2 NodeGroupConfiguration => ArrayRef[L<Paws::ElastiCache::NodeGroupConfiguration>]

A list of node group (shard) configuration options. Each node group
(shard) configuration has the following members:
C<PrimaryAvailabilityZone>, C<ReplicaAvailabilityZones>,
C<ReplicaCount>, and C<Slots>.

If you're creating a Valkey or Redis OSS (cluster mode disabled) or a
Valkey or Redis OSS (cluster mode enabled) replication group, you can
use this parameter to individually configure each node group (shard),
or you can omit this parameter. However, it is required when seeding a
Valkey or Redis OSS (cluster mode enabled) cluster from a S3 rdb file.
You must configure each node group (shard) using this parameter because
you must specify the slots for each node group.



=head2 NotificationTopicArn => Str

The Amazon Resource Name (ARN) of the Amazon Simple Notification
Service (SNS) topic to which notifications are sent.

The Amazon SNS topic owner must be the same as the cluster owner.



=head2 NumCacheClusters => Int

The number of clusters this replication group initially has.

This parameter is not used if there is more than one node group
(shard). You should use C<ReplicasPerNodeGroup> instead.

If C<AutomaticFailoverEnabled> is C<true>, the value of this parameter
must be at least 2. If C<AutomaticFailoverEnabled> is C<false> you can
omit this parameter (it will default to 1), or you can explicitly set
it to a value between 2 and 6.

The maximum permitted value for C<NumCacheClusters> is 6 (1 primary
plus 5 replicas).



=head2 NumNodeGroups => Int

An optional parameter that specifies the number of node groups (shards)
for this Valkey or Redis OSS (cluster mode enabled) replication group.
For Valkey or Redis OSS (cluster mode disabled) either omit this
parameter or set it to 1.

Default: 1



=head2 Port => Int

The port number on which each member of the replication group accepts
connections.



=head2 PreferredCacheClusterAZs => ArrayRef[Str|Undef]

A list of EC2 Availability Zones in which the replication group's
clusters are created. The order of the Availability Zones in the list
is the order in which clusters are allocated. The primary cluster is
created in the first AZ in the list.

This parameter is not used if there is more than one node group
(shard). You should use C<NodeGroupConfiguration> instead.

If you are creating your replication group in an Amazon VPC
(recommended), you can only locate clusters in Availability Zones
associated with the subnets in the selected subnet group.

The number of Availability Zones listed must equal the value of
C<NumCacheClusters>.

Default: system chosen Availability Zones.



=head2 PreferredMaintenanceWindow => Str

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



=head2 PrimaryClusterId => Str

The identifier of the cluster that serves as the primary for this
replication group. This cluster must already exist and have a status of
C<available>.

This parameter is not required if C<NumCacheClusters>,
C<NumNodeGroups>, or C<ReplicasPerNodeGroup> is specified.



=head2 ReplicasPerNodeGroup => Int

An optional parameter that specifies the number of replica nodes in
each node group (shard). Valid values are 0 to 5.



=head2 B<REQUIRED> ReplicationGroupDescription => Str

A user-created description for the replication group.



=head2 B<REQUIRED> ReplicationGroupId => Str

The replication group identifier. This parameter is stored as a
lowercase string.

Constraints:

=over

=item *

A name must contain from 1 to 40 alphanumeric characters or hyphens.

=item *

The first character must be a letter.

=item *

A name cannot end with a hyphen or contain two consecutive hyphens.

=back




=head2 SecurityGroupIds => ArrayRef[Str|Undef]

One or more Amazon VPC security groups associated with this replication
group.

Use this parameter only when you are creating a replication group in an
Amazon Virtual Private Cloud (Amazon VPC).



=head2 ServerlessCacheSnapshotName => Str

The name of the snapshot used to create a replication group. Available
for Valkey, Redis OSS only.



=head2 SnapshotArns => ArrayRef[Str|Undef]

A list of Amazon Resource Names (ARN) that uniquely identify the Valkey
or Redis OSS RDB snapshot files stored in Amazon S3. The snapshot files
are used to populate the new replication group. The Amazon S3 object
name in the ARN cannot contain any commas. The new replication group
will have the number of node groups (console: shards) specified by the
parameter I<NumNodeGroups> or the number of node groups configured by
I<NodeGroupConfiguration> regardless of the number of ARNs specified
here.

Example of an Amazon S3 ARN: C<arn:aws:s3:::my_bucket/snapshot1.rdb>



=head2 SnapshotName => Str

The name of a snapshot from which to restore data into the new
replication group. The snapshot status changes to C<restoring> while
the new replication group is being created.



=head2 SnapshotRetentionLimit => Int

The number of days for which ElastiCache retains automatic snapshots
before deleting them. For example, if you set C<SnapshotRetentionLimit>
to 5, a snapshot that was taken today is retained for 5 days before
being deleted.

Default: 0 (i.e., automatic backups are disabled for this cluster).



=head2 SnapshotWindow => Str

The daily time range (in UTC) during which ElastiCache begins taking a
daily snapshot of your node group (shard).

Example: C<05:00-09:00>

If you do not specify this parameter, ElastiCache automatically chooses
an appropriate time range.



=head2 Tags => ArrayRef[L<Paws::ElastiCache::Tag>]

A list of tags to be added to this resource. Tags are comma-separated
key,value pairs (e.g. Key=C<myKey>, Value=C<myKeyValue>. You can
include multiple tags as shown following: Key=C<myKey>,
Value=C<myKeyValue> Key=C<mySecondKey>, Value=C<mySecondKeyValue>. Tags
on replication groups will be replicated to all nodes.



=head2 TransitEncryptionEnabled => Bool

A flag that enables in-transit encryption when set to C<true>.

This parameter is valid only if the C<Engine> parameter is C<redis>,
the C<EngineVersion> parameter is C<3.2.6>, C<4.x> or later, and the
cluster is being created in an Amazon VPC.

If you enable in-transit encryption, you must also specify a value for
C<CacheSubnetGroup>.

B<Required:> Only available when creating a replication group in an
Amazon VPC using Redis OSS version C<3.2.6>, C<4.x> or later.

Default: C<false>

For HIPAA compliance, you must specify C<TransitEncryptionEnabled> as
C<true>, an C<AuthToken>, and a C<CacheSubnetGroup>.



=head2 TransitEncryptionMode => Str

A setting that allows you to migrate your clients to use in-transit
encryption, with no downtime.

When setting C<TransitEncryptionEnabled> to C<true>, you can set your
C<TransitEncryptionMode> to C<preferred> in the same request, to allow
both encrypted and unencrypted connections at the same time. Once you
migrate all your Valkey or Redis OSS clients to use encrypted
connections you can modify the value to C<required> to allow encrypted
connections only.

Setting C<TransitEncryptionMode> to C<required> is a two-step process
that requires you to first set the C<TransitEncryptionMode> to
C<preferred>, after that you can set C<TransitEncryptionMode> to
C<required>.

This process will not trigger the replacement of the replication group.

Valid values are: C<"preferred">, C<"required">

=head2 UserGroupIds => ArrayRef[Str|Undef]

The user group to associate with the replication group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateReplicationGroup in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

