
package Paws::ElastiCache::ModifyReplicationGroup;
  use Moose;
  has ApplyImmediately => (is => 'ro', isa => 'Bool');
  has AuthToken => (is => 'ro', isa => 'Str');
  has AuthTokenUpdateStrategy => (is => 'ro', isa => 'Str');
  has AutomaticFailoverEnabled => (is => 'ro', isa => 'Bool');
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Bool');
  has CacheNodeType => (is => 'ro', isa => 'Str');
  has CacheParameterGroupName => (is => 'ro', isa => 'Str');
  has CacheSecurityGroupNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ClusterMode => (is => 'ro', isa => 'Str');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has IpDiscovery => (is => 'ro', isa => 'Str');
  has LogDeliveryConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::LogDeliveryConfigurationRequest]');
  has MultiAZEnabled => (is => 'ro', isa => 'Bool');
  has NodeGroupId => (is => 'ro', isa => 'Str');
  has NotificationTopicArn => (is => 'ro', isa => 'Str');
  has NotificationTopicStatus => (is => 'ro', isa => 'Str');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has PrimaryClusterId => (is => 'ro', isa => 'Str');
  has RemoveUserGroups => (is => 'ro', isa => 'Bool');
  has ReplicationGroupDescription => (is => 'ro', isa => 'Str');
  has ReplicationGroupId => (is => 'ro', isa => 'Str', required => 1);
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SnapshotRetentionLimit => (is => 'ro', isa => 'Int');
  has SnapshottingClusterId => (is => 'ro', isa => 'Str');
  has SnapshotWindow => (is => 'ro', isa => 'Str');
  has TransitEncryptionEnabled => (is => 'ro', isa => 'Bool');
  has TransitEncryptionMode => (is => 'ro', isa => 'Str');
  has UserGroupIdsToAdd => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has UserGroupIdsToRemove => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyReplicationGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElastiCache::ModifyReplicationGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyReplicationGroupResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::ModifyReplicationGroup - Arguments for method ModifyReplicationGroup on L<Paws::ElastiCache>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyReplicationGroup on the
L<Amazon ElastiCache|Paws::ElastiCache> service. Use the attributes of this class
as arguments to method ModifyReplicationGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyReplicationGroup.

=head1 SYNOPSIS

    my $elasticache = Paws->service('ElastiCache');
    # ModifyReplicationGroup
    my $ModifyReplicationGroupResult = $elasticache->ModifyReplicationGroup(
      'ApplyImmediately'            => 1,
      'ReplicationGroupDescription' => 'Modified replication group',
      'ReplicationGroupId'          => 'my-redis-rg',
      'SnapshotRetentionLimit'      => 30,
      'SnapshottingClusterId'       => 'my-redis-rg-001'
    );

    # Results:
    my $ReplicationGroup = $ModifyReplicationGroupResult->ReplicationGroup;

    # Returns a L<Paws::ElastiCache::ModifyReplicationGroupResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticache/ModifyReplicationGroup>

=head1 ATTRIBUTES


=head2 ApplyImmediately => Bool

If C<true>, this parameter causes the modifications in this request and
any pending modifications to be applied, asynchronously and as soon as
possible, regardless of the C<PreferredMaintenanceWindow> setting for
the replication group.

If C<false>, changes to the nodes in the replication group are applied
on the next maintenance reboot, or the next failure reboot, whichever
occurs first.

Valid values: C<true> | C<false>

Default: C<false>



=head2 AuthToken => Str

Reserved parameter. The password used to access a password protected
server. This parameter must be specified with the
C<auth-token-update-strategy > parameter. Password constraints:

=over

=item *

Must be only printable ASCII characters

=item *

Must be at least 16 characters and no more than 128 characters in
length

=item *

Cannot contain any of the following characters: '/', '"', or '@', '%'

=back

For more information, see AUTH password at AUTH
(http://redis.io/commands/AUTH).



=head2 AuthTokenUpdateStrategy => Str

Specifies the strategy to use to update the AUTH token. This parameter
must be specified with the C<auth-token> parameter. Possible values:

=over

=item *

ROTATE - default, if no update strategy is provided

=item *

SET - allowed only after ROTATE

=item *

DELETE - allowed only when transitioning to RBAC

=back

For more information, see Authenticating Users with AUTH
(http://docs.aws.amazon.com/AmazonElastiCache/latest/dg/auth.html)

Valid values are: C<"SET">, C<"ROTATE">, C<"DELETE">

=head2 AutomaticFailoverEnabled => Bool

Determines whether a read replica is automatically promoted to
read/write primary if the existing primary encounters a failure.

Valid values: C<true> | C<false>



=head2 AutoMinorVersionUpgrade => Bool

If you are running Valkey or Redis OSS engine version 6.0 or later, set
this parameter to yes if you want to opt-in to the next auto minor
version upgrade campaign. This parameter is disabled for previous
versions.



=head2 CacheNodeType => Str

A valid cache node type that you want to scale this replication group
to.



=head2 CacheParameterGroupName => Str

The name of the cache parameter group to apply to all of the clusters
in this replication group. This change is asynchronously applied as
soon as possible for parameters when the C<ApplyImmediately> parameter
is specified as C<true> for this request.



=head2 CacheSecurityGroupNames => ArrayRef[Str|Undef]

A list of cache security group names to authorize for the clusters in
this replication group. This change is asynchronously applied as soon
as possible.

This parameter can be used only with replication group containing
clusters running outside of an Amazon Virtual Private Cloud (Amazon
VPC).

Constraints: Must contain no more than 255 alphanumeric characters.
Must not be C<Default>.



=head2 ClusterMode => Str

Enabled or Disabled. To modify cluster mode from Disabled to Enabled,
you must first set the cluster mode to Compatible. Compatible mode
allows your Valkey or Redis OSS clients to connect using both cluster
mode enabled and cluster mode disabled. After you migrate all Valkey or
Redis OSS clients to use cluster mode enabled, you can then complete
cluster mode configuration and set the cluster mode to Enabled.

Valid values are: C<"enabled">, C<"disabled">, C<"compatible">

=head2 Engine => Str

Modifies the engine listed in a replication group message. The options
are redis, memcached or valkey.



=head2 EngineVersion => Str

The upgraded version of the cache engine to be run on the clusters in
the replication group.

B<Important:> You can upgrade to a newer engine version (see Selecting
a Cache Engine and Version
(https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/SelectEngine.html#VersionManagement)),
but you cannot downgrade to an earlier engine version. If you want to
use an earlier engine version, you must delete the existing replication
group and create it anew with the earlier engine version.



=head2 IpDiscovery => Str

The network type you choose when modifying a cluster, either C<ipv4> |
C<ipv6>. IPv6 is supported for workloads using Valkey 7.2 and above,
Redis OSS engine version 6.2 to 7.1 and Memcached engine version 1.6.6
and above on all instances built on the Nitro system
(http://aws.amazon.com/ec2/nitro/).

Valid values are: C<"ipv4">, C<"ipv6">

=head2 LogDeliveryConfigurations => ArrayRef[L<Paws::ElastiCache::LogDeliveryConfigurationRequest>]

Specifies the destination, format and type of the logs.



=head2 MultiAZEnabled => Bool

A flag to indicate MultiAZ is enabled.



=head2 NodeGroupId => Str

Deprecated. This parameter is not used.



=head2 NotificationTopicArn => Str

The Amazon Resource Name (ARN) of the Amazon SNS topic to which
notifications are sent.

The Amazon SNS topic owner must be same as the replication group owner.



=head2 NotificationTopicStatus => Str

The status of the Amazon SNS notification topic for the replication
group. Notifications are sent only if the status is C<active>.

Valid values: C<active> | C<inactive>



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

For replication groups with a single primary, if this parameter is
specified, ElastiCache promotes the specified cluster in the specified
replication group to the primary role. The nodes of all other clusters
in the replication group are read replicas.



=head2 RemoveUserGroups => Bool

Removes the user group associated with this replication group.



=head2 ReplicationGroupDescription => Str

A description for the replication group. Maximum length is 255
characters.



=head2 B<REQUIRED> ReplicationGroupId => Str

The identifier of the replication group to modify.



=head2 SecurityGroupIds => ArrayRef[Str|Undef]

Specifies the VPC Security Groups associated with the clusters in the
replication group.

This parameter can be used only with replication group containing
clusters running in an Amazon Virtual Private Cloud (Amazon VPC).



=head2 SnapshotRetentionLimit => Int

The number of days for which ElastiCache retains automatic node group
(shard) snapshots before deleting them. For example, if you set
C<SnapshotRetentionLimit> to 5, a snapshot that was taken today is
retained for 5 days before being deleted.

B<Important> If the value of SnapshotRetentionLimit is set to zero (0),
backups are turned off.



=head2 SnapshottingClusterId => Str

The cluster ID that is used as the daily snapshot source for the
replication group. This parameter cannot be set for Valkey or Redis OSS
(cluster mode enabled) replication groups.



=head2 SnapshotWindow => Str

The daily time range (in UTC) during which ElastiCache begins taking a
daily snapshot of the node group (shard) specified by
C<SnapshottingClusterId>.

Example: C<05:00-09:00>

If you do not specify this parameter, ElastiCache automatically chooses
an appropriate time range.



=head2 TransitEncryptionEnabled => Bool

A flag that enables in-transit encryption when set to true. If you are
enabling in-transit encryption for an existing cluster, you must also
set C<TransitEncryptionMode> to C<preferred>.



=head2 TransitEncryptionMode => Str

A setting that allows you to migrate your clients to use in-transit
encryption, with no downtime.

You must set C<TransitEncryptionEnabled> to C<true>, for your existing
cluster, and set C<TransitEncryptionMode> to C<preferred> in the same
request to allow both encrypted and unencrypted connections at the same
time. Once you migrate all your Valkey or Redis OSS clients to use
encrypted connections you can set the value to C<required> to allow
encrypted connections only.

Setting C<TransitEncryptionMode> to C<required> is a two-step process
that requires you to first set the C<TransitEncryptionMode> to
C<preferred>, after that you can set C<TransitEncryptionMode> to
C<required>.

Valid values are: C<"preferred">, C<"required">

=head2 UserGroupIdsToAdd => ArrayRef[Str|Undef]

The ID of the user group you are associating with the replication
group.



=head2 UserGroupIdsToRemove => ArrayRef[Str|Undef]

The ID of the user group to disassociate from the replication group,
meaning the users in the group no longer can access the replication
group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyReplicationGroup in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

