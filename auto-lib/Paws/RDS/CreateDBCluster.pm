
package Paws::RDS::CreateDBCluster;
  use Moose;
  has AllocatedStorage => (is => 'ro', isa => 'Int');
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Bool');
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has BacktrackWindow => (is => 'ro', isa => 'Int');
  has BackupRetentionPeriod => (is => 'ro', isa => 'Int');
  has CACertificateIdentifier => (is => 'ro', isa => 'Str');
  has CharacterSetName => (is => 'ro', isa => 'Str');
  has ClusterScalabilityType => (is => 'ro', isa => 'Str');
  has CopyTagsToSnapshot => (is => 'ro', isa => 'Bool');
  has DatabaseInsightsMode => (is => 'ro', isa => 'Str');
  has DatabaseName => (is => 'ro', isa => 'Str');
  has DBClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DBClusterInstanceClass => (is => 'ro', isa => 'Str');
  has DBClusterParameterGroupName => (is => 'ro', isa => 'Str');
  has DBSubnetGroupName => (is => 'ro', isa => 'Str');
  has DBSystemId => (is => 'ro', isa => 'Str');
  has DeletionProtection => (is => 'ro', isa => 'Bool');
  has Domain => (is => 'ro', isa => 'Str');
  has DomainIAMRoleName => (is => 'ro', isa => 'Str');
  has EnableCloudwatchLogsExports => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has EnableGlobalWriteForwarding => (is => 'ro', isa => 'Bool');
  has EnableHttpEndpoint => (is => 'ro', isa => 'Bool');
  has EnableIAMDatabaseAuthentication => (is => 'ro', isa => 'Bool');
  has EnableLimitlessDatabase => (is => 'ro', isa => 'Bool');
  has EnableLocalWriteForwarding => (is => 'ro', isa => 'Bool');
  has EnablePerformanceInsights => (is => 'ro', isa => 'Bool');
  has Engine => (is => 'ro', isa => 'Str', required => 1);
  has EngineLifecycleSupport => (is => 'ro', isa => 'Str');
  has EngineMode => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has GlobalClusterIdentifier => (is => 'ro', isa => 'Str');
  has Iops => (is => 'ro', isa => 'Int');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has ManageMasterUserPassword => (is => 'ro', isa => 'Bool');
  has MasterUsername => (is => 'ro', isa => 'Str');
  has MasterUserPassword => (is => 'ro', isa => 'Str');
  has MasterUserSecretKmsKeyId => (is => 'ro', isa => 'Str');
  has MonitoringInterval => (is => 'ro', isa => 'Int');
  has MonitoringRoleArn => (is => 'ro', isa => 'Str');
  has NetworkType => (is => 'ro', isa => 'Str');
  has OptionGroupName => (is => 'ro', isa => 'Str');
  has PerformanceInsightsKMSKeyId => (is => 'ro', isa => 'Str');
  has PerformanceInsightsRetentionPeriod => (is => 'ro', isa => 'Int');
  has Port => (is => 'ro', isa => 'Int');
  has PreferredBackupWindow => (is => 'ro', isa => 'Str');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has PreSignedUrl => (is => 'ro', isa => 'Str');
  has PubliclyAccessible => (is => 'ro', isa => 'Bool');
  has RdsCustomClusterConfiguration => (is => 'ro', isa => 'Paws::RDS::RdsCustomClusterConfiguration');
  has ReplicationSourceIdentifier => (is => 'ro', isa => 'Str');
  has ScalingConfiguration => (is => 'ro', isa => 'Paws::RDS::ScalingConfiguration');
  has ServerlessV2ScalingConfiguration => (is => 'ro', isa => 'Paws::RDS::ServerlessV2ScalingConfiguration');
  has StorageEncrypted => (is => 'ro', isa => 'Bool');
  has StorageType => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Tag]');
  has VpcSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDBCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::CreateDBClusterResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateDBClusterResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::CreateDBCluster - Arguments for method CreateDBCluster on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDBCluster on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method CreateDBCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDBCluster.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    # To create a DB cluster
    # This example creates a DB cluster.
    my $CreateDBClusterResult = $rds->CreateDBCluster(
      'AvailabilityZones'           => ['us-east-1a'],
      'BackupRetentionPeriod'       => 1,
      'DBClusterIdentifier'         => 'mydbcluster',
      'DBClusterParameterGroupName' => 'mydbclusterparametergroup',
      'DatabaseName'                => 'myauroradb',
      'Engine'                      => 'aurora',
      'EngineVersion'               => '5.6.10a',
      'MasterUserPassword'          => 'mypassword',
      'MasterUsername'              => 'myuser',
      'Port'                        => 3306,
      'StorageEncrypted'            => 1
    );

    # Results:
    my $DBCluster = $CreateDBClusterResult->DBCluster;

    # Returns a L<Paws::RDS::CreateDBClusterResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/CreateDBCluster>

=head1 ATTRIBUTES


=head2 AllocatedStorage => Int

The amount of storage in gibibytes (GiB) to allocate to each DB
instance in the Multi-AZ DB cluster.

Valid for Cluster Type: Multi-AZ DB clusters only

This setting is required to create a Multi-AZ DB cluster.



=head2 AutoMinorVersionUpgrade => Bool

Specifies whether minor engine upgrades are applied automatically to
the DB cluster during the maintenance window. By default, minor engine
upgrades are applied automatically.

Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB cluster.

For more information about automatic minor version upgrades, see
Automatically upgrading the minor engine version
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Upgrading.html#USER_UpgradeDBInstance.Upgrading.AutoMinorVersionUpgrades).



=head2 AvailabilityZones => ArrayRef[Str|Undef]

A list of Availability Zones (AZs) where you specifically want to
create DB instances in the DB cluster.

For information on AZs, see Availability Zones
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Concepts.RegionsAndAvailabilityZones.html#Concepts.RegionsAndAvailabilityZones.AvailabilityZones)
in the I<Amazon Aurora User Guide>.

Valid for Cluster Type: Aurora DB clusters only

Constraints:

=over

=item *

Can't specify more than three AZs.

=back




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

The number of days for which automated backups are retained.

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



=head2 CharacterSetName => Str

The name of the character set (C<CharacterSet>) to associate the DB
cluster with.

Valid for Cluster Type: Aurora DB clusters only



=head2 ClusterScalabilityType => Str

Specifies the scalability mode of the Aurora DB cluster. When set to
C<limitless>, the cluster operates as an Aurora Limitless Database.
When set to C<standard> (the default), the cluster uses normal DB
instance creation.

Valid for: Aurora DB clusters only

You can't modify this setting after you create the DB cluster.

Valid values are: C<"standard">, C<"limitless">

=head2 CopyTagsToSnapshot => Bool

Specifies whether to copy all tags from the DB cluster to snapshots of
the DB cluster. The default is not to copy them.

Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters



=head2 DatabaseInsightsMode => Str

The mode of Database Insights to enable for the DB cluster.

If you set this value to C<advanced>, you must also set the
C<PerformanceInsightsEnabled> parameter to C<true> and the
C<PerformanceInsightsRetentionPeriod> parameter to 465.

Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters

Valid values are: C<"standard">, C<"advanced">

=head2 DatabaseName => Str

The name for your database of up to 64 alphanumeric characters. A
database named C<postgres> is always created. If this parameter is
specified, an additional database with this name is created.

Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters



=head2 B<REQUIRED> DBClusterIdentifier => Str

The identifier for this DB cluster. This parameter is stored as a
lowercase string.

Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters

Constraints:

=over

=item *

Must contain from 1 to 63 (for Aurora DB clusters) or 1 to 52 (for
Multi-AZ DB clusters) letters, numbers, or hyphens.

=item *

First character must be a letter.

=item *

Can't end with a hyphen or contain two consecutive hyphens.

=back

Example: C<my-cluster1>



=head2 DBClusterInstanceClass => Str

The compute and memory capacity of each DB instance in the Multi-AZ DB
cluster, for example C<db.m6gd.xlarge>. Not all DB instance classes are
available in all Amazon Web Services Regions, or for all database
engines.

For the full list of DB instance classes and availability for your
engine, see DB instance class
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html)
in the I<Amazon RDS User Guide>.

This setting is required to create a Multi-AZ DB cluster.

Valid for Cluster Type: Multi-AZ DB clusters only



=head2 DBClusterParameterGroupName => Str

The name of the DB cluster parameter group to associate with this DB
cluster. If you don't specify a value, then the default DB cluster
parameter group for the specified DB engine and version is used.

Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters

Constraints:

=over

=item *

If supplied, must match the name of an existing DB cluster parameter
group.

=back




=head2 DBSubnetGroupName => Str

A DB subnet group to associate with this DB cluster.

This setting is required to create a Multi-AZ DB cluster.

Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters

Constraints:

=over

=item *

Must match the name of an existing DB subnet group.

=back

Example: C<mydbsubnetgroup>



=head2 DBSystemId => Str

Reserved for future use.



=head2 DeletionProtection => Bool

Specifies whether the DB cluster has deletion protection enabled. The
database can't be deleted when deletion protection is enabled. By
default, deletion protection isn't enabled.

Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters



=head2 Domain => Str

The Active Directory directory ID to create the DB cluster in.

For Amazon Aurora DB clusters, Amazon RDS can use Kerberos
authentication to authenticate users that connect to the DB cluster.

For more information, see Kerberos authentication
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/kerberos-authentication.html)
in the I<Amazon Aurora User Guide>.

Valid for Cluster Type: Aurora DB clusters only



=head2 DomainIAMRoleName => Str

The name of the IAM role to use when making API calls to the Directory
Service.

Valid for Cluster Type: Aurora DB clusters only



=head2 EnableCloudwatchLogsExports => ArrayRef[Str|Undef]

The list of log types that need to be enabled for exporting to
CloudWatch Logs.

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

Specifies whether to enable the HTTP endpoint for the DB cluster. By
default, the HTTP endpoint isn't enabled.

When enabled, the HTTP endpoint provides a connectionless web service
API (RDS Data API) for running SQL queries on the DB cluster. You can
also query your database from inside the RDS console with the RDS query
editor.

For more information, see Using RDS Data API
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/data-api.html)
in the I<Amazon Aurora User Guide>.

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
C<ClusterScalabilityType> setting.



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



=head2 B<REQUIRED> Engine => Str

The database engine to use for this DB cluster.

Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters

Valid Values:

=over

=item *

C<aurora-mysql>

=item *

C<aurora-postgresql>

=item *

C<mysql>

=item *

C<postgres>

=item *

C<neptune> - For information about using Amazon Neptune, see the
I<Amazon Neptune User Guide>
(https://docs.aws.amazon.com/neptune/latest/userguide/intro.html).

=back




=head2 EngineLifecycleSupport => Str

The life cycle type for this DB cluster.

By default, this value is set to C<open-source-rds-extended-support>,
which enrolls your DB cluster into Amazon RDS Extended Support. At the
end of standard support, you can avoid charges for Extended Support by
setting the value to C<open-source-rds-extended-support-disabled>. In
this case, creating the DB cluster will fail if the DB major version is
past its end of standard support date.

You can use this setting to enroll your DB cluster into Amazon RDS
Extended Support. With RDS Extended Support, you can run the selected
major engine version on your DB cluster past the end of standard
support for that engine version. For more information, see the
following sections:

=over

=item *

Amazon Aurora - Using Amazon RDS Extended Support
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/extended-support.html)
in the I<Amazon Aurora User Guide>

=item *

Amazon RDS - Using Amazon RDS Extended Support
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/extended-support.html)
in the I<Amazon RDS User Guide>

=back

Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters

Valid Values: C<open-source-rds-extended-support |
open-source-rds-extended-support-disabled>

Default: C<open-source-rds-extended-support>



=head2 EngineMode => Str

The DB engine mode of the DB cluster, either C<provisioned> or
C<serverless>.

The C<serverless> engine mode only applies for Aurora Serverless v1 DB
clusters. Aurora Serverless v2 DB clusters use the C<provisioned>
engine mode.

For information about limitations and requirements for Serverless DB
clusters, see the following sections in the I<Amazon Aurora User
Guide>:

=over

=item *

Limitations of Aurora Serverless v1
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html#aurora-serverless.limitations)

=item *

Requirements for Aurora Serverless v2
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless-v2.requirements.html)

=back

Valid for Cluster Type: Aurora DB clusters only



=head2 EngineVersion => Str

The version number of the database engine to use.

To list all of the available engine versions for Aurora MySQL version 2
(5.7-compatible) and version 3 (MySQL 8.0-compatible), use the
following command:

C<aws rds describe-db-engine-versions --engine aurora-mysql --query
"DBEngineVersions[].EngineVersion">

You can supply either C<5.7> or C<8.0> to use the default engine
version for Aurora MySQL version 2 or version 3, respectively.

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

For information about a specific engine, see the following topics:

=over

=item *

Aurora MySQL - see Database engine updates for Amazon Aurora MySQL
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraMySQL.Updates.html)
in the I<Amazon Aurora User Guide>.

=item *

Aurora PostgreSQL - see Amazon Aurora PostgreSQL releases and engine
versions
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraPostgreSQL.Updates.20180305.html)
in the I<Amazon Aurora User Guide>.

=item *

RDS for MySQL - see Amazon RDS for MySQL
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_MySQL.html#MySQL.Concepts.VersionMgmt)
in the I<Amazon RDS User Guide>.

=item *

RDS for PostgreSQL - see Amazon RDS for PostgreSQL
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_PostgreSQL.html#PostgreSQL.Concepts)
in the I<Amazon RDS User Guide>.

=back

Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters



=head2 GlobalClusterIdentifier => Str

The global cluster ID of an Aurora cluster that becomes the primary
cluster in the new global database cluster.

Valid for Cluster Type: Aurora DB clusters only



=head2 Iops => Int

The amount of Provisioned IOPS (input/output operations per second) to
be initially allocated for each DB instance in the Multi-AZ DB cluster.

For information about valid IOPS values, see Provisioned IOPS storage
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#USER_PIOPS)
in the I<Amazon RDS User Guide>.

This setting is required to create a Multi-AZ DB cluster.

Valid for Cluster Type: Multi-AZ DB clusters only

Constraints:

=over

=item *

Must be a multiple between .5 and 50 of the storage amount for the DB
cluster.

=back




=head2 KmsKeyId => Str

The Amazon Web Services KMS key identifier for an encrypted DB cluster.

The Amazon Web Services KMS key identifier is the key ARN, key ID,
alias ARN, or alias name for the KMS key. To use a KMS key in a
different Amazon Web Services account, specify the key ARN or alias
ARN.

When a KMS key isn't specified in C<KmsKeyId>:

=over

=item *

If C<ReplicationSourceIdentifier> identifies an encrypted source, then
Amazon RDS uses the KMS key used to encrypt the source. Otherwise,
Amazon RDS uses your default KMS key.

=item *

If the C<StorageEncrypted> parameter is enabled and
C<ReplicationSourceIdentifier> isn't specified, then Amazon RDS uses
your default KMS key.

=back

There is a default KMS key for your Amazon Web Services account. Your
Amazon Web Services account has a different default KMS key for each
Amazon Web Services Region.

If you create a read replica of an encrypted DB cluster in another
Amazon Web Services Region, make sure to set C<KmsKeyId> to a KMS key
identifier that is valid in the destination Amazon Web Services Region.
This KMS key is used to encrypt the read replica in that Amazon Web
Services Region.

Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters



=head2 ManageMasterUserPassword => Bool

Specifies whether to manage the master user password with Amazon Web
Services Secrets Manager.

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

Can't manage the master user password with Amazon Web Services Secrets
Manager if C<MasterUserPassword> is specified.

=back




=head2 MasterUsername => Str

The name of the master user for the DB cluster.

Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters

Constraints:

=over

=item *

Must be 1 to 16 letters or numbers.

=item *

First character must be a letter.

=item *

Can't be a reserved word for the chosen database engine.

=back




=head2 MasterUserPassword => Str

The password for the master database user.

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

This setting is valid only if the master user password is managed by
RDS in Amazon Web Services Secrets Manager for the DB cluster.

The Amazon Web Services KMS key identifier is the key ARN, key ID,
alias ARN, or alias name for the KMS key. To use a KMS key in a
different Amazon Web Services account, specify the key ARN or alias
ARN.

If you don't specify C<MasterUserSecretKmsKeyId>, then the
C<aws/secretsmanager> KMS key is used to encrypt the secret. If the
secret is in a different Amazon Web Services account, then you can't
use the C<aws/secretsmanager> KMS key to encrypt the secret, and you
must use a customer managed KMS key.

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

Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters

Valid Values: C<0 | 1 | 5 | 10 | 15 | 30 | 60>

Default: C<0>



=head2 MonitoringRoleArn => Str

The Amazon Resource Name (ARN) for the IAM role that permits RDS to
send Enhanced Monitoring metrics to Amazon CloudWatch Logs. An example
is C<arn:aws:iam:123456789012:role/emaccess>. For information on
creating a monitoring role, see Setting up and enabling Enhanced
Monitoring
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.OS.html#USER_Monitoring.OS.Enabling)
in the I<Amazon RDS User Guide>.

If C<MonitoringInterval> is set to a value other than C<0>, supply a
C<MonitoringRoleArn> value.

Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters



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

The port number on which the instances in the DB cluster accept
connections.

Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters

Valid Values: C<1150-65535>

Default:

=over

=item *

RDS for MySQL and Aurora MySQL - C<3306>

=item *

RDS for PostgreSQL and Aurora PostgreSQL - C<5432>

=back




=head2 PreferredBackupWindow => Str

The daily time range during which automated backups are created if
automated backups are enabled using the C<BackupRetentionPeriod>
parameter.

Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters

The default is a 30-minute window selected at random from an 8-hour
block of time for each Amazon Web Services Region. To view the time
blocks available, see Backup window
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Managing.Backups.html#Aurora.Managing.Backups.BackupWindow)
in the I<Amazon Aurora User Guide>.

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

The weekly time range during which system maintenance can occur.

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




=head2 PreSignedUrl => Str

When you are replicating a DB cluster from one Amazon Web Services
GovCloud (US) Region to another, an URL that contains a Signature
Version 4 signed request for the C<CreateDBCluster> operation to be
called in the source Amazon Web Services Region where the DB cluster is
replicated from. Specify C<PreSignedUrl> only when you are performing
cross-Region replication from an encrypted DB cluster.

The presigned URL must be a valid request for the C<CreateDBCluster>
API operation that can run in the source Amazon Web Services Region
that contains the encrypted DB cluster to copy.

The presigned URL request must contain the following parameter values:

=over

=item *

C<KmsKeyId> - The KMS key identifier for the KMS key to use to encrypt
the copy of the DB cluster in the destination Amazon Web Services
Region. This should refer to the same KMS key for both the
C<CreateDBCluster> operation that is called in the destination Amazon
Web Services Region, and the operation contained in the presigned URL.

=item *

C<DestinationRegion> - The name of the Amazon Web Services Region that
Aurora read replica will be created in.

=item *

C<ReplicationSourceIdentifier> - The DB cluster identifier for the
encrypted DB cluster to be copied. This identifier must be in the
Amazon Resource Name (ARN) format for the source Amazon Web Services
Region. For example, if you are copying an encrypted DB cluster from
the us-west-2 Amazon Web Services Region, then your
C<ReplicationSourceIdentifier> would look like Example:
C<arn:aws:rds:us-west-2:123456789012:cluster:aurora-cluster1>.

=back

To learn how to generate a Signature Version 4 signed request, see
Authenticating Requests: Using Query Parameters (Amazon Web Services
Signature Version 4)
(https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html)
and Signature Version 4 Signing Process
(https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).

If you are using an Amazon Web Services SDK tool or the CLI, you can
specify C<SourceRegion> (or C<--source-region> for the CLI) instead of
specifying C<PreSignedUrl> manually. Specifying C<SourceRegion>
autogenerates a presigned URL that is a valid request for the operation
that can run in the source Amazon Web Services Region.

Valid for Cluster Type: Aurora DB clusters only



=head2 PubliclyAccessible => Bool

Specifies whether the DB cluster is publicly accessible.

When the DB cluster is publicly accessible and you connect from outside
of the DB cluster's virtual private cloud (VPC), its Domain Name System
(DNS) endpoint resolves to the public IP address. When you connect from
within the same VPC as the DB cluster, the endpoint resolves to the
private IP address. Access to the DB cluster is ultimately controlled
by the security group it uses. That public access isn't permitted if
the security group assigned to the DB cluster doesn't permit it.

When the DB cluster isn't publicly accessible, it is an internal DB
cluster with a DNS name that resolves to a private IP address.

Valid for Cluster Type: Multi-AZ DB clusters only

Default: The default behavior varies depending on whether
C<DBSubnetGroupName> is specified.

If C<DBSubnetGroupName> isn't specified, and C<PubliclyAccessible>
isn't specified, the following applies:

=over

=item *

If the default VPC in the target Region doesnE<rsquo>t have an internet
gateway attached to it, the DB cluster is private.

=item *

If the default VPC in the target Region has an internet gateway
attached to it, the DB cluster is public.

=back

If C<DBSubnetGroupName> is specified, and C<PubliclyAccessible> isn't
specified, the following applies:

=over

=item *

If the subnets are part of a VPC that doesnE<rsquo>t have an internet
gateway attached to it, the DB cluster is private.

=item *

If the subnets are part of a VPC that has an internet gateway attached
to it, the DB cluster is public.

=back




=head2 RdsCustomClusterConfiguration => L<Paws::RDS::RdsCustomClusterConfiguration>

Reserved for future use.



=head2 ReplicationSourceIdentifier => Str

The Amazon Resource Name (ARN) of the source DB instance or DB cluster
if this DB cluster is created as a read replica.

Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters



=head2 ScalingConfiguration => L<Paws::RDS::ScalingConfiguration>

For DB clusters in C<serverless> DB engine mode, the scaling properties
of the DB cluster.

Valid for Cluster Type: Aurora DB clusters only



=head2 ServerlessV2ScalingConfiguration => L<Paws::RDS::ServerlessV2ScalingConfiguration>





=head2 StorageEncrypted => Bool

Specifies whether the DB cluster is encrypted.

Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters



=head2 StorageType => Str

The storage type to associate with the DB cluster.

For information on storage types for Aurora DB clusters, see Storage
configurations for Amazon Aurora DB clusters
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Overview.StorageReliability.html#aurora-storage-type).
For information on storage types for Multi-AZ DB clusters, see Settings
for creating Multi-AZ DB clusters
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/create-multi-az-db-cluster.html#create-multi-az-db-cluster-settings).

This setting is required to create a Multi-AZ DB cluster.

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

When you create an Aurora DB cluster with the storage type set to
C<aurora-iopt1>, the storage type is returned in the response. The
storage type isn't returned when you set it to C<aurora>.



=head2 Tags => ArrayRef[L<Paws::RDS::Tag>]

Tags to assign to the DB cluster.

Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters



=head2 VpcSecurityGroupIds => ArrayRef[Str|Undef]

A list of EC2 VPC security groups to associate with this DB cluster.

Valid for Cluster Type: Aurora DB clusters and Multi-AZ DB clusters




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDBCluster in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

