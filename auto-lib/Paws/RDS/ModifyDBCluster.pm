
package Paws::RDS::ModifyDBCluster;
  use Moose;
  has AllocatedStorage => (is => 'ro', isa => 'Int');
  has AllowEngineModeChange => (is => 'ro', isa => 'Bool');
  has AllowMajorVersionUpgrade => (is => 'ro', isa => 'Bool');
  has ApplyImmediately => (is => 'ro', isa => 'Bool');
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Bool');
  has AwsBackupRecoveryPointArn => (is => 'ro', isa => 'Str');
  has BacktrackWindow => (is => 'ro', isa => 'Int');
  has BackupRetentionPeriod => (is => 'ro', isa => 'Int');
  has CACertificateIdentifier => (is => 'ro', isa => 'Str');
  has CloudwatchLogsExportConfiguration => (is => 'ro', isa => 'Paws::RDS::CloudwatchLogsExportConfiguration');
  has CopyTagsToSnapshot => (is => 'ro', isa => 'Bool');
  has DatabaseInsightsMode => (is => 'ro', isa => 'Str');
  has DBClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DBClusterInstanceClass => (is => 'ro', isa => 'Str');
  has DBClusterParameterGroupName => (is => 'ro', isa => 'Str');
  has DBInstanceParameterGroupName => (is => 'ro', isa => 'Str');
  has DeletionProtection => (is => 'ro', isa => 'Bool');
  has Domain => (is => 'ro', isa => 'Str');
  has DomainIAMRoleName => (is => 'ro', isa => 'Str');
  has EnableGlobalWriteForwarding => (is => 'ro', isa => 'Bool');
  has EnableHttpEndpoint => (is => 'ro', isa => 'Bool');
  has EnableIAMDatabaseAuthentication => (is => 'ro', isa => 'Bool');
  has EnableLimitlessDatabase => (is => 'ro', isa => 'Bool');
  has EnableLocalWriteForwarding => (is => 'ro', isa => 'Bool');
  has EnablePerformanceInsights => (is => 'ro', isa => 'Bool');
  has EngineMode => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has Iops => (is => 'ro', isa => 'Int');
  has ManageMasterUserPassword => (is => 'ro', isa => 'Bool');
  has MasterUserPassword => (is => 'ro', isa => 'Str');
  has MasterUserSecretKmsKeyId => (is => 'ro', isa => 'Str');
  has MonitoringInterval => (is => 'ro', isa => 'Int');
  has MonitoringRoleArn => (is => 'ro', isa => 'Str');
  has NetworkType => (is => 'ro', isa => 'Str');
  has NewDBClusterIdentifier => (is => 'ro', isa => 'Str');
  has OptionGroupName => (is => 'ro', isa => 'Str');
  has PerformanceInsightsKMSKeyId => (is => 'ro', isa => 'Str');
  has PerformanceInsightsRetentionPeriod => (is => 'ro', isa => 'Int');
  has Port => (is => 'ro', isa => 'Int');
  has PreferredBackupWindow => (is => 'ro', isa => 'Str');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has RotateMasterUserPassword => (is => 'ro', isa => 'Bool');
  has ScalingConfiguration => (is => 'ro', isa => 'Paws::RDS::ScalingConfiguration');
  has ServerlessV2ScalingConfiguration => (is => 'ro', isa => 'Paws::RDS::ServerlessV2ScalingConfiguration');
  has StorageType => (is => 'ro', isa => 'Str');
  has VpcSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyDBCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::ModifyDBClusterResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyDBClusterResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::ModifyDBCluster - Arguments for method ModifyDBCluster on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyDBCluster on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method ModifyDBCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyDBCluster.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    # To change DB cluster settings
    # This example changes the specified settings for the specified DB cluster.
    my $ModifyDBClusterResult = $rds->ModifyDBCluster(
      'ApplyImmediately'           => 1,
      'DBClusterIdentifier'        => 'mydbcluster',
      'MasterUserPassword'         => 'mynewpassword',
      'NewDBClusterIdentifier'     => 'mynewdbcluster',
      'PreferredBackupWindow'      => '04:00-04:30',
      'PreferredMaintenanceWindow' => 'Tue:05:00-Tue:05:30'
    );

    # Results:
    my $DBCluster = $ModifyDBClusterResult->DBCluster;

    # Returns a L<Paws::RDS::ModifyDBClusterResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/ModifyDBCluster>

=head1 ATTRIBUTES


=head2 AllocatedStorage => Int

The amount of storage in gibibytes (GiB) to allocate to each DB
instance in the Multi-AZ DB cluster.

Valid for Cluster Type: Multi-AZ DB clusters only



=head2 AllowEngineModeChange => Bool

Specifies whether engine mode changes from C<serverless> to
C<provisioned> are allowed.

Valid for Cluster Type: Aurora Serverless v1 DB clusters only

Constraints:

=over

=item *

You must allow engine mode changes when specifying a different value
for the C<EngineMode> parameter from the DB cluster's current engine
mode.

=back




=head2 AllowMajorVersionUpgrade => Bool

Specifies whether major version upgrades are allowed.

Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters

Constraints:

=over

=item *

You must allow major version upgrades when specifying a value for the
C<EngineVersion> parameter that is a different major version than the
DB cluster's current version.

=back




=head2 ApplyImmediately => Bool

Specifies whether the modifications in this request are asynchronously
applied as soon as possible, regardless of the
C<PreferredMaintenanceWindow> setting for the DB cluster. If this
parameter is disabled, changes to the DB cluster are applied during the
next maintenance window.

Most modifications can be applied immediately or during the next
scheduled maintenance window. Some modifications, such as turning on
deletion protection and changing the master password, are applied
immediatelyE<mdash>regardless of when you choose to apply them.

By default, this parameter is disabled.

Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters



=head2 AutoMinorVersionUpgrade => Bool

Specifies whether minor engine upgrades are applied automatically to
the DB cluster during the maintenance window. By default, minor engine
upgrades are applied automatically.

Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters.

For more information about automatic minor version upgrades, see
Automatically upgrading the minor engine version
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Upgrading.html#USER_UpgradeDBInstance.Upgrading.AutoMinorVersionUpgrades).



=head2 AwsBackupRecoveryPointArn => Str

The Amazon Resource Name (ARN) of the recovery point in Amazon Web
Services Backup.



=head2 BacktrackWindow => Int

The target backtrack window, in seconds. To disable backtracking, set
this value to C<0>.

Valid for Cluster Type: Aurora MySQL DB clusters only

Default: C<0>

Constraints:

=over

=item *

If specified, this value must be set to a number from 0 to 259,200 (72
hours).

=back




=head2 BackupRetentionPeriod => Int

The number of days for which automated backups are retained. Specify a
minimum value of C<1>.

Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters

Default: C<1>

Constraints:

=over

=item *

Must be a value from 1 to 35.

=back




=head2 CACertificateIdentifier => Str

The CA certificate identifier to use for the DB cluster's server
certificate.

For more information, see Using SSL/TLS to encrypt a connection to a DB
instance
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.SSL.html)
in the I<Amazon RDS User Guide>.

Valid for Cluster Type: Multi-AZ DB clusters



=head2 CloudwatchLogsExportConfiguration => L<Paws::RDS::CloudwatchLogsExportConfiguration>

The configuration setting for the log types to be enabled for export to
CloudWatch Logs for a specific DB cluster.

Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters

The following values are valid for each DB engine:

=over

=item *

Aurora MySQL - C<audit | error | general | instance | slowquery |
iam-db-auth-error>

=item *

Aurora PostgreSQL - C<instance | postgresql | iam-db-auth-error>

=item *

RDS for MySQL - C<error | general | slowquery | iam-db-auth-error>

=item *

RDS for PostgreSQL - C<postgresql | upgrade | iam-db-auth-error>

=back

For more information about exporting CloudWatch Logs for Amazon RDS,
see Publishing Database Logs to Amazon CloudWatch Logs
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch)
in the I<Amazon RDS User Guide>.

For more information about exporting CloudWatch Logs for Amazon Aurora,
see Publishing Database Logs to Amazon CloudWatch Logs
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch)
in the I<Amazon Aurora User Guide>.



=head2 CopyTagsToSnapshot => Bool

Specifies whether to copy all tags from the DB cluster to snapshots of
the DB cluster. The default is not to copy them.

Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters



=head2 DatabaseInsightsMode => Str

Specifies the mode of Database Insights to enable for the DB cluster.

If you change the value from C<standard> to C<advanced>, you must set
the C<PerformanceInsightsEnabled> parameter to C<true> and the
C<PerformanceInsightsRetentionPeriod> parameter to 465.

If you change the value from C<advanced> to C<standard>, you must set
the C<PerformanceInsightsEnabled> parameter to C<false>.

Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters

Valid values are: C<"standard">, C<"advanced">

=head2 B<REQUIRED> DBClusterIdentifier => Str

The DB cluster identifier for the cluster being modified. This
parameter isn't case-sensitive.

Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters

Constraints:

=over

=item *

Must match the identifier of an existing DB cluster.

=back




=head2 DBClusterInstanceClass => Str

The compute and memory capacity of each DB instance in the Multi-AZ DB
cluster, for example C<db.m6gd.xlarge>. Not all DB instance classes are
available in all Amazon Web Services Regions, or for all database
engines.

For the full list of DB instance classes and availability for your
engine, see DB Instance Class
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html)
in the I<Amazon RDS User Guide>.

Valid for Cluster Type: Multi-AZ DB clusters only



=head2 DBClusterParameterGroupName => Str

The name of the DB cluster parameter group to use for the DB cluster.

Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters



=head2 DBInstanceParameterGroupName => Str

The name of the DB parameter group to apply to all instances of the DB
cluster.

When you apply a parameter group using the
C<DBInstanceParameterGroupName> parameter, the DB cluster isn't
rebooted automatically. Also, parameter changes are applied immediately
rather than during the next maintenance window.

Valid for Cluster Type: Aurora DB clusters only

Default: The existing name setting

Constraints:

=over

=item *

The DB parameter group must be in the same DB parameter group family as
this DB cluster.

=item *

The C<DBInstanceParameterGroupName> parameter is valid in combination
with the C<AllowMajorVersionUpgrade> parameter for a major version
upgrade only.

=back




=head2 DeletionProtection => Bool

Specifies whether the DB cluster has deletion protection enabled. The
database can't be deleted when deletion protection is enabled. By
default, deletion protection isn't enabled.

Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters



=head2 Domain => Str

The Active Directory directory ID to move the DB cluster to. Specify
C<none> to remove the cluster from its current domain. The domain must
be created prior to this operation.

For more information, see Kerberos Authentication
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/kerberos-authentication.html)
in the I<Amazon Aurora User Guide>.

Valid for Cluster Type: Aurora DB clusters only



=head2 DomainIAMRoleName => Str

The name of the IAM role to use when making API calls to the Directory
Service.

Valid for Cluster Type: Aurora DB clusters only



=head2 EnableGlobalWriteForwarding => Bool

Specifies whether to enable this DB cluster to forward write operations
to the primary cluster of a global cluster (Aurora global database). By
default, write operations are not allowed on Aurora DB clusters that
are secondary clusters in an Aurora global database.

You can set this value only on Aurora DB clusters that are members of
an Aurora global database. With this parameter enabled, a secondary
cluster can forward writes to the current primary cluster, and the
resulting changes are replicated back to this cluster. For the primary
DB cluster of an Aurora global database, this value is used immediately
if the primary is demoted by a global cluster API operation, but it
does nothing until then.

Valid for Cluster Type: Aurora DB clusters only



=head2 EnableHttpEndpoint => Bool

Specifies whether to enable the HTTP endpoint for an Aurora Serverless
v1 DB cluster. By default, the HTTP endpoint isn't enabled.

When enabled, the HTTP endpoint provides a connectionless web service
API (RDS Data API) for running SQL queries on the Aurora Serverless v1
DB cluster. You can also query your database from inside the RDS
console with the RDS query editor.

For more information, see Using RDS Data API
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/data-api.html)
in the I<Amazon Aurora User Guide>.

This parameter applies only to Aurora Serverless v1 DB clusters. To
enable or disable the HTTP endpoint for an Aurora Serverless v2 or
provisioned DB cluster, use the C<EnableHttpEndpoint> and
C<DisableHttpEndpoint> operations.

Valid for Cluster Type: Aurora DB clusters only



=head2 EnableIAMDatabaseAuthentication => Bool

Specifies whether to enable mapping of Amazon Web Services Identity and
Access Management (IAM) accounts to database accounts. By default,
mapping isn't enabled.

For more information, see IAM Database Authentication
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.IAMDBAuth.html)
in the I<Amazon Aurora User Guide> or IAM database authentication for
MariaDB, MySQL, and PostgreSQL
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAMDBAuth.html)
in the I<Amazon RDS User Guide>.

Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters



=head2 EnableLimitlessDatabase => Bool

Specifies whether to enable Aurora Limitless Database. You must enable
Aurora Limitless Database to create a DB shard group.

Valid for: Aurora DB clusters only

This setting is no longer used. Instead use the
C<ClusterScalabilityType> setting when you create your Aurora Limitless
Database DB cluster.



=head2 EnableLocalWriteForwarding => Bool

Specifies whether read replicas can forward write operations to the
writer DB instance in the DB cluster. By default, write operations
aren't allowed on reader DB instances.

Valid for: Aurora DB clusters only



=head2 EnablePerformanceInsights => Bool

Specifies whether to turn on Performance Insights for the DB cluster.

For more information, see Using Amazon Performance Insights
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html)
in the I<Amazon RDS User Guide>.

Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters



=head2 EngineMode => Str

The DB engine mode of the DB cluster, either C<provisioned> or
C<serverless>.

The DB engine mode can be modified only from C<serverless> to
C<provisioned>.

For more information, see CreateDBCluster
(https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBCluster.html).

Valid for Cluster Type: Aurora DB clusters only



=head2 EngineVersion => Str

The version number of the database engine to which you want to upgrade.
Changing this parameter results in an outage. The change is applied
during the next maintenance window unless C<ApplyImmediately> is
enabled.

If the cluster that you're modifying has one or more read replicas, all
replicas must be running an engine version that's the same or later
than the version you specify.

To list all of the available engine versions for Aurora MySQL, use the
following command:

C<aws rds describe-db-engine-versions --engine aurora-mysql --query
"DBEngineVersions[].EngineVersion">

To list all of the available engine versions for Aurora PostgreSQL, use
the following command:

C<aws rds describe-db-engine-versions --engine aurora-postgresql
--query "DBEngineVersions[].EngineVersion">

To list all of the available engine versions for RDS for MySQL, use the
following command:

C<aws rds describe-db-engine-versions --engine mysql --query
"DBEngineVersions[].EngineVersion">

To list all of the available engine versions for RDS for PostgreSQL,
use the following command:

C<aws rds describe-db-engine-versions --engine postgres --query
"DBEngineVersions[].EngineVersion">

Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters



=head2 Iops => Int

The amount of Provisioned IOPS (input/output operations per second) to
be initially allocated for each DB instance in the Multi-AZ DB cluster.

For information about valid IOPS values, see Amazon RDS Provisioned
IOPS storage
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#USER_PIOPS)
in the I<Amazon RDS User Guide>.

Valid for Cluster Type: Multi-AZ DB clusters only

Constraints:

=over

=item *

Must be a multiple between .5 and 50 of the storage amount for the DB
cluster.

=back




=head2 ManageMasterUserPassword => Bool

Specifies whether to manage the master user password with Amazon Web
Services Secrets Manager.

If the DB cluster doesn't manage the master user password with Amazon
Web Services Secrets Manager, you can turn on this management. In this
case, you can't specify C<MasterUserPassword>.

If the DB cluster already manages the master user password with Amazon
Web Services Secrets Manager, and you specify that the master user
password is not managed with Amazon Web Services Secrets Manager, then
you must specify C<MasterUserPassword>. In this case, RDS deletes the
secret and uses the new password for the master user specified by
C<MasterUserPassword>.

For more information, see Password management with Amazon Web Services
Secrets Manager
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-secrets-manager.html)
in the I<Amazon RDS User Guide> and Password management with Amazon Web
Services Secrets Manager
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/rds-secrets-manager.html)
in the I<Amazon Aurora User Guide.>

Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters



=head2 MasterUserPassword => Str

The new password for the master database user.

Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters

Constraints:

=over

=item *

Must contain from 8 to 41 characters.

=item *

Can contain any printable ASCII character except "/", """, or "@".

=item *

Can't be specified if C<ManageMasterUserPassword> is turned on.

=back




=head2 MasterUserSecretKmsKeyId => Str

The Amazon Web Services KMS key identifier to encrypt a secret that is
automatically generated and managed in Amazon Web Services Secrets
Manager.

This setting is valid only if both of the following conditions are met:

=over

=item *

The DB cluster doesn't manage the master user password in Amazon Web
Services Secrets Manager.

If the DB cluster already manages the master user password in Amazon
Web Services Secrets Manager, you can't change the KMS key that is used
to encrypt the secret.

=item *

You are turning on C<ManageMasterUserPassword> to manage the master
user password in Amazon Web Services Secrets Manager.

If you are turning on C<ManageMasterUserPassword> and don't specify
C<MasterUserSecretKmsKeyId>, then the C<aws/secretsmanager> KMS key is
used to encrypt the secret. If the secret is in a different Amazon Web
Services account, then you can't use the C<aws/secretsmanager> KMS key
to encrypt the secret, and you must use a customer managed KMS key.

=back

The Amazon Web Services KMS key identifier is the key ARN, key ID,
alias ARN, or alias name for the KMS key. To use a KMS key in a
different Amazon Web Services account, specify the key ARN or alias
ARN.

There is a default KMS key for your Amazon Web Services account. Your
Amazon Web Services account has a different default KMS key for each
Amazon Web Services Region.

Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters



=head2 MonitoringInterval => Int

The interval, in seconds, between points when Enhanced Monitoring
metrics are collected for the DB cluster. To turn off collecting
Enhanced Monitoring metrics, specify C<0>.

If C<MonitoringRoleArn> is specified, also set C<MonitoringInterval> to
a value other than C<0>.

Valid for Cluster Type: Multi-AZ DB clusters only

Valid Values: C<0 | 1 | 5 | 10 | 15 | 30 | 60>

Default: C<0>



=head2 MonitoringRoleArn => Str

The Amazon Resource Name (ARN) for the IAM role that permits RDS to
send Enhanced Monitoring metrics to Amazon CloudWatch Logs. An example
is C<arn:aws:iam:123456789012:role/emaccess>. For information on
creating a monitoring role, see To create an IAM role for Amazon RDS
Enhanced Monitoring
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.html#USER_Monitoring.OS.IAMRole)
in the I<Amazon RDS User Guide.>

If C<MonitoringInterval> is set to a value other than C<0>, supply a
C<MonitoringRoleArn> value.

Valid for Cluster Type: Multi-AZ DB clusters only



=head2 NetworkType => Str

The network type of the DB cluster.

The network type is determined by the C<DBSubnetGroup> specified for
the DB cluster. A C<DBSubnetGroup> can support only the IPv4 protocol
or the IPv4 and the IPv6 protocols (C<DUAL>).

For more information, see Working with a DB instance in a VPC
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_VPC.WorkingWithRDSInstanceinaVPC.html)
in the I<Amazon Aurora User Guide.>

Valid for Cluster Type: Aurora DB clusters only

Valid Values: C<IPV4 | DUAL>



=head2 NewDBClusterIdentifier => Str

The new DB cluster identifier for the DB cluster when renaming a DB
cluster. This value is stored as a lowercase string.

Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters

Constraints:

=over

=item *

Must contain from 1 to 63 letters, numbers, or hyphens.

=item *

The first character must be a letter.

=item *

Can't end with a hyphen or contain two consecutive hyphens.

=back

Example: C<my-cluster2>



=head2 OptionGroupName => Str

The option group to associate the DB cluster with.

DB clusters are associated with a default option group that can't be
modified.



=head2 PerformanceInsightsKMSKeyId => Str

The Amazon Web Services KMS key identifier for encryption of
Performance Insights data.

The Amazon Web Services KMS key identifier is the key ARN, key ID,
alias ARN, or alias name for the KMS key.

If you don't specify a value for C<PerformanceInsightsKMSKeyId>, then
Amazon RDS uses your default KMS key. There is a default KMS key for
your Amazon Web Services account. Your Amazon Web Services account has
a different default KMS key for each Amazon Web Services Region.

Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters



=head2 PerformanceInsightsRetentionPeriod => Int

The number of days to retain Performance Insights data.

Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters

Valid Values:

=over

=item *

C<7>

=item *

I<month> * 31, where I<month> is a number of months from 1-23.
Examples: C<93> (3 months * 31), C<341> (11 months * 31), C<589> (19
months * 31)

=item *

C<731>

=back

Default: C<7> days

If you specify a retention period that isn't valid, such as C<94>,
Amazon RDS issues an error.



=head2 Port => Int

The port number on which the DB cluster accepts connections.

Valid for Cluster Type: Aurora DB clusters only

Valid Values: C<1150-65535>

Default: The same port as the original DB cluster.



=head2 PreferredBackupWindow => Str

The daily time range during which automated backups are created if
automated backups are enabled, using the C<BackupRetentionPeriod>
parameter.

The default is a 30-minute window selected at random from an 8-hour
block of time for each Amazon Web Services Region. To view the time
blocks available, see Backup window
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Managing.Backups.html#Aurora.Managing.Backups.BackupWindow)
in the I<Amazon Aurora User Guide>.

Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters

Constraints:

=over

=item *

Must be in the format C<hh24:mi-hh24:mi>.

=item *

Must be in Universal Coordinated Time (UTC).

=item *

Must not conflict with the preferred maintenance window.

=item *

Must be at least 30 minutes.

=back




=head2 PreferredMaintenanceWindow => Str

The weekly time range during which system maintenance can occur, in
Universal Coordinated Time (UTC).

Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters

The default is a 30-minute window selected at random from an 8-hour
block of time for each Amazon Web Services Region, occurring on a
random day of the week. To see the time blocks available, see Adjusting
the Preferred DB Cluster Maintenance Window
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_UpgradeDBInstance.Maintenance.html#AdjustingTheMaintenanceWindow.Aurora)
in the I<Amazon Aurora User Guide>.

Constraints:

=over

=item *

Must be in the format C<ddd:hh24:mi-ddd:hh24:mi>.

=item *

Days must be one of C<Mon | Tue | Wed | Thu | Fri | Sat | Sun>.

=item *

Must be in Universal Coordinated Time (UTC).

=item *

Must be at least 30 minutes.

=back




=head2 RotateMasterUserPassword => Bool

Specifies whether to rotate the secret managed by Amazon Web Services
Secrets Manager for the master user password.

This setting is valid only if the master user password is managed by
RDS in Amazon Web Services Secrets Manager for the DB cluster. The
secret value contains the updated password.

For more information, see Password management with Amazon Web Services
Secrets Manager
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-secrets-manager.html)
in the I<Amazon RDS User Guide> and Password management with Amazon Web
Services Secrets Manager
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/rds-secrets-manager.html)
in the I<Amazon Aurora User Guide.>

Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters

Constraints:

=over

=item *

You must apply the change immediately when rotating the master user
password.

=back




=head2 ScalingConfiguration => L<Paws::RDS::ScalingConfiguration>

The scaling properties of the DB cluster. You can only modify scaling
properties for DB clusters in C<serverless> DB engine mode.

Valid for Cluster Type: Aurora DB clusters only



=head2 ServerlessV2ScalingConfiguration => L<Paws::RDS::ServerlessV2ScalingConfiguration>





=head2 StorageType => Str

The storage type to associate with the DB cluster.

For information on storage types for Aurora DB clusters, see Storage
configurations for Amazon Aurora DB clusters
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Overview.StorageReliability.html#aurora-storage-type).
For information on storage types for Multi-AZ DB clusters, see Settings
for creating Multi-AZ DB clusters
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/create-multi-az-db-cluster.html#create-multi-az-db-cluster-settings).

When specified for a Multi-AZ DB cluster, a value for the C<Iops>
parameter is required.

Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters

Valid Values:

=over

=item *

Aurora DB clusters - C<aurora | aurora-iopt1>

=item *

Multi-AZ DB clusters - C<io1 | io2 | gp3>

=back

Default:

=over

=item *

Aurora DB clusters - C<aurora>

=item *

Multi-AZ DB clusters - C<io1>

=back




=head2 VpcSecurityGroupIds => ArrayRef[Str|Undef]

A list of EC2 VPC security groups to associate with this DB cluster.

Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyDBCluster in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

