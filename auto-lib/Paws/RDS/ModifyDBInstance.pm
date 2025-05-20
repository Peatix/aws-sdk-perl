
package Paws::RDS::ModifyDBInstance;
  use Moose;
  has AllocatedStorage => (is => 'ro', isa => 'Int');
  has AllowMajorVersionUpgrade => (is => 'ro', isa => 'Bool');
  has ApplyImmediately => (is => 'ro', isa => 'Bool');
  has AutomationMode => (is => 'ro', isa => 'Str');
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Bool');
  has AwsBackupRecoveryPointArn => (is => 'ro', isa => 'Str');
  has BackupRetentionPeriod => (is => 'ro', isa => 'Int');
  has CACertificateIdentifier => (is => 'ro', isa => 'Str');
  has CertificateRotationRestart => (is => 'ro', isa => 'Bool');
  has CloudwatchLogsExportConfiguration => (is => 'ro', isa => 'Paws::RDS::CloudwatchLogsExportConfiguration');
  has CopyTagsToSnapshot => (is => 'ro', isa => 'Bool');
  has DatabaseInsightsMode => (is => 'ro', isa => 'Str');
  has DBInstanceClass => (is => 'ro', isa => 'Str');
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DBParameterGroupName => (is => 'ro', isa => 'Str');
  has DBPortNumber => (is => 'ro', isa => 'Int');
  has DBSecurityGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has DBSubnetGroupName => (is => 'ro', isa => 'Str');
  has DedicatedLogVolume => (is => 'ro', isa => 'Bool');
  has DeletionProtection => (is => 'ro', isa => 'Bool');
  has DisableDomain => (is => 'ro', isa => 'Bool');
  has Domain => (is => 'ro', isa => 'Str');
  has DomainAuthSecretArn => (is => 'ro', isa => 'Str');
  has DomainDnsIps => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has DomainFqdn => (is => 'ro', isa => 'Str');
  has DomainIAMRoleName => (is => 'ro', isa => 'Str');
  has DomainOu => (is => 'ro', isa => 'Str');
  has EnableCustomerOwnedIp => (is => 'ro', isa => 'Bool');
  has EnableIAMDatabaseAuthentication => (is => 'ro', isa => 'Bool');
  has EnablePerformanceInsights => (is => 'ro', isa => 'Bool');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has Iops => (is => 'ro', isa => 'Int');
  has LicenseModel => (is => 'ro', isa => 'Str');
  has ManageMasterUserPassword => (is => 'ro', isa => 'Bool');
  has MasterUserPassword => (is => 'ro', isa => 'Str');
  has MasterUserSecretKmsKeyId => (is => 'ro', isa => 'Str');
  has MaxAllocatedStorage => (is => 'ro', isa => 'Int');
  has MonitoringInterval => (is => 'ro', isa => 'Int');
  has MonitoringRoleArn => (is => 'ro', isa => 'Str');
  has MultiAZ => (is => 'ro', isa => 'Bool');
  has MultiTenant => (is => 'ro', isa => 'Bool');
  has NetworkType => (is => 'ro', isa => 'Str');
  has NewDBInstanceIdentifier => (is => 'ro', isa => 'Str');
  has OptionGroupName => (is => 'ro', isa => 'Str');
  has PerformanceInsightsKMSKeyId => (is => 'ro', isa => 'Str');
  has PerformanceInsightsRetentionPeriod => (is => 'ro', isa => 'Int');
  has PreferredBackupWindow => (is => 'ro', isa => 'Str');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has ProcessorFeatures => (is => 'ro', isa => 'ArrayRef[Paws::RDS::ProcessorFeature]');
  has PromotionTier => (is => 'ro', isa => 'Int');
  has PubliclyAccessible => (is => 'ro', isa => 'Bool');
  has ReplicaMode => (is => 'ro', isa => 'Str');
  has ResumeFullAutomationModeMinutes => (is => 'ro', isa => 'Int');
  has RotateMasterUserPassword => (is => 'ro', isa => 'Bool');
  has StorageThroughput => (is => 'ro', isa => 'Int');
  has StorageType => (is => 'ro', isa => 'Str');
  has TdeCredentialArn => (is => 'ro', isa => 'Str');
  has TdeCredentialPassword => (is => 'ro', isa => 'Str');
  has UseDefaultProcessorFeatures => (is => 'ro', isa => 'Bool');
  has VpcSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyDBInstance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::ModifyDBInstanceResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyDBInstanceResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::ModifyDBInstance - Arguments for method ModifyDBInstance on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyDBInstance on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method ModifyDBInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyDBInstance.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
  # To change DB instance settings
  # This example immediately changes the specified settings for the specified DB
  # instance.
    my $ModifyDBInstanceResult = $rds->ModifyDBInstance(
      'AllocatedStorage'           => 10,
      'ApplyImmediately'           => 1,
      'BackupRetentionPeriod'      => 1,
      'DBInstanceClass'            => 'db.t2.small',
      'DBInstanceIdentifier'       => 'mymysqlinstance',
      'MasterUserPassword'         => 'mynewpassword',
      'PreferredBackupWindow'      => '04:00-04:30',
      'PreferredMaintenanceWindow' => 'Tue:05:00-Tue:05:30'
    );

    # Results:
    my $DBInstance = $ModifyDBInstanceResult->DBInstance;

    # Returns a L<Paws::RDS::ModifyDBInstanceResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/ModifyDBInstance>

=head1 ATTRIBUTES


=head2 AllocatedStorage => Int

The new amount of storage in gibibytes (GiB) to allocate for the DB
instance.

For RDS for Db2, MariaDB, RDS for MySQL, RDS for Oracle, and RDS for
PostgreSQL, the value supplied must be at least 10% greater than the
current value. Values that are not at least 10% greater than the
existing value are rounded up so that they are 10% greater than the
current value.

For the valid values for allocated storage for each engine, see
C<CreateDBInstance>.

Constraints:

=over

=item *

When you increase the allocated storage for a DB instance that uses
Provisioned IOPS (C<gp3>, C<io1>, or C<io2> storage type), you must
also specify the C<Iops> parameter. You can use the current value for
C<Iops>.

=back




=head2 AllowMajorVersionUpgrade => Bool

Specifies whether major version upgrades are allowed. Changing this
parameter doesn't result in an outage and the change is asynchronously
applied as soon as possible.

This setting doesn't apply to RDS Custom DB instances.

Constraints:

=over

=item *

Major version upgrades must be allowed when specifying a value for the
C<EngineVersion> parameter that's a different major version than the DB
instance's current version.

=back




=head2 ApplyImmediately => Bool

Specifies whether the modifications in this request and any pending
modifications are asynchronously applied as soon as possible,
regardless of the C<PreferredMaintenanceWindow> setting for the DB
instance. By default, this parameter is disabled.

If this parameter is disabled, changes to the DB instance are applied
during the next maintenance window. Some parameter changes can cause an
outage and are applied on the next call to RebootDBInstance, or the
next failure reboot. Review the table of parameters in Modifying a DB
Instance
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.DBInstance.Modifying.html)
in the I<Amazon RDS User Guide> to see the impact of enabling or
disabling C<ApplyImmediately> for each modified parameter and to
determine when the changes are applied.



=head2 AutomationMode => Str

The automation mode of the RDS Custom DB instance. If C<full>, the DB
instance automates monitoring and instance recovery. If C<all paused>,
the instance pauses automation for the duration set by
C<ResumeFullAutomationModeMinutes>.

Valid values are: C<"full">, C<"all-paused">

=head2 AutoMinorVersionUpgrade => Bool

Specifies whether minor version upgrades are applied automatically to
the DB instance during the maintenance window. An outage occurs when
all the following conditions are met:

=over

=item *

The automatic upgrade is enabled for the maintenance window.

=item *

A newer minor version is available.

=item *

RDS has enabled automatic patching for the engine version.

=back

If any of the preceding conditions isn't met, Amazon RDS applies the
change as soon as possible and doesn't cause an outage.

For an RDS Custom DB instance, don't enable this setting. Otherwise,
the operation returns an error.

For more information about automatic minor version upgrades, see
Automatically upgrading the minor engine version
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Upgrading.html#USER_UpgradeDBInstance.Upgrading.AutoMinorVersionUpgrades).



=head2 AwsBackupRecoveryPointArn => Str

The Amazon Resource Name (ARN) of the recovery point in Amazon Web
Services Backup.

This setting doesn't apply to RDS Custom DB instances.



=head2 BackupRetentionPeriod => Int

The number of days to retain automated backups. Setting this parameter
to a positive number enables backups. Setting this parameter to 0
disables automated backups.

Enabling and disabling backups can result in a brief I/O suspension
that lasts from a few seconds to a few minutes, depending on the size
and class of your DB instance.

These changes are applied during the next maintenance window unless the
C<ApplyImmediately> parameter is enabled for this request. If you
change the parameter from one non-zero value to another non-zero value,
the change is asynchronously applied as soon as possible.

This setting doesn't apply to Amazon Aurora DB instances. The retention
period for automated backups is managed by the DB cluster. For more
information, see C<ModifyDBCluster>.

Default: Uses existing setting

Constraints:

=over

=item *

Must be a value from 0 to 35.

=item *

Can't be set to 0 if the DB instance is a source to read replicas.

=item *

Can't be set to 0 for an RDS Custom for Oracle DB instance.

=back




=head2 CACertificateIdentifier => Str

The CA certificate identifier to use for the DB instance's server
certificate.

This setting doesn't apply to RDS Custom DB instances.

For more information, see Using SSL/TLS to encrypt a connection to a DB
instance
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.SSL.html)
in the I<Amazon RDS User Guide> and Using SSL/TLS to encrypt a
connection to a DB cluster
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.SSL.html)
in the I<Amazon Aurora User Guide>.



=head2 CertificateRotationRestart => Bool

Specifies whether the DB instance is restarted when you rotate your
SSL/TLS certificate.

By default, the DB instance is restarted when you rotate your SSL/TLS
certificate. The certificate is not updated until the DB instance is
restarted.

Set this parameter only if you are I<not> using SSL/TLS to connect to
the DB instance.

If you are using SSL/TLS to connect to the DB instance, follow the
appropriate instructions for your DB engine to rotate your SSL/TLS
certificate:

=over

=item *

For more information about rotating your SSL/TLS certificate for RDS DB
engines, see Rotating Your SSL/TLS Certificate.
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.SSL-certificate-rotation.html)
in the I<Amazon RDS User Guide.>

=item *

For more information about rotating your SSL/TLS certificate for Aurora
DB engines, see Rotating Your SSL/TLS Certificate
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.SSL-certificate-rotation.html)
in the I<Amazon Aurora User Guide>.

=back

This setting doesn't apply to RDS Custom DB instances.



=head2 CloudwatchLogsExportConfiguration => L<Paws::RDS::CloudwatchLogsExportConfiguration>

The log types to be enabled for export to CloudWatch Logs for a
specific DB instance.

A change to the C<CloudwatchLogsExportConfiguration> parameter is
always applied to the DB instance immediately. Therefore, the
C<ApplyImmediately> parameter has no effect.

This setting doesn't apply to RDS Custom DB instances.

The following values are valid for each DB engine:

=over

=item *

Aurora MySQL - C<audit | error | general | slowquery |
iam-db-auth-error>

=item *

Aurora PostgreSQL - C<postgresql | iam-db-auth-error>

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

Specifies whether to copy all tags from the DB instance to snapshots of
the DB instance. By default, tags aren't copied.

This setting doesn't apply to Amazon Aurora DB instances. Copying tags
to snapshots is managed by the DB cluster. Setting this value for an
Aurora DB instance has no effect on the DB cluster setting. For more
information, see C<ModifyDBCluster>.



=head2 DatabaseInsightsMode => Str

Specifies the mode of Database Insights to enable for the DB instance.

Aurora DB instances inherit this value from the DB cluster, so you
can't change this value.

Valid values are: C<"standard">, C<"advanced">

=head2 DBInstanceClass => Str

The new compute and memory capacity of the DB instance, for example
C<db.m4.large>. Not all DB instance classes are available in all Amazon
Web Services Regions, or for all database engines. For the full list of
DB instance classes, and availability for your engine, see DB Instance
Class
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html)
in the I<Amazon RDS User Guide> or Aurora DB instance classes
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Concepts.DBInstanceClass.html)
in the I<Amazon Aurora User Guide>. For RDS Custom, see DB instance
class support for RDS Custom for Oracle
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/custom-reqs-limits.html#custom-reqs-limits.instances)
and DB instance class support for RDS Custom for SQL Server
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/custom-reqs-limits-MS.html#custom-reqs-limits.instancesMS).

If you modify the DB instance class, an outage occurs during the
change. The change is applied during the next maintenance window,
unless you specify C<ApplyImmediately> in your request.

Default: Uses existing setting

Constraints:

=over

=item *

If you are modifying the DB instance class and upgrading the engine
version at the same time, the currently running engine version must be
supported on the specified DB instance class. Otherwise, the operation
returns an error. In this case, first run the operation to upgrade the
engine version, and then run it again to modify the DB instance class.

=back




=head2 B<REQUIRED> DBInstanceIdentifier => Str

The identifier of DB instance to modify. This value is stored as a
lowercase string.

Constraints:

=over

=item *

Must match the identifier of an existing DB instance.

=back




=head2 DBParameterGroupName => Str

The name of the DB parameter group to apply to the DB instance.

Changing this setting doesn't result in an outage. The parameter group
name itself is changed immediately, but the actual parameter changes
are not applied until you reboot the instance without failover. In this
case, the DB instance isn't rebooted automatically, and the parameter
changes aren't applied during the next maintenance window. However, if
you modify dynamic parameters in the newly associated DB parameter
group, these changes are applied immediately without a reboot.

This setting doesn't apply to RDS Custom DB instances.

Default: Uses existing setting

Constraints:

=over

=item *

Must be in the same DB parameter group family as the DB instance.

=back




=head2 DBPortNumber => Int

The port number on which the database accepts connections.

The value of the C<DBPortNumber> parameter must not match any of the
port values specified for options in the option group for the DB
instance.

If you change the C<DBPortNumber> value, your database restarts
regardless of the value of the C<ApplyImmediately> parameter.

This setting doesn't apply to RDS Custom DB instances.

Valid Values: C<1150-65535>

Default:

=over

=item *

Amazon Aurora - C<3306>

=item *

RDS for Db2 - C<50000>

=item *

RDS for MariaDB - C<3306>

=item *

RDS for Microsoft SQL Server - C<1433>

=item *

RDS for MySQL - C<3306>

=item *

RDS for Oracle - C<1521>

=item *

RDS for PostgreSQL - C<5432>

=back

Constraints:

=over

=item *

For RDS for Microsoft SQL Server, the value can't be C<1234>, C<1434>,
C<3260>, C<3343>, C<3389>, C<47001>, or C<49152-49156>.

=back




=head2 DBSecurityGroups => ArrayRef[Str|Undef]

A list of DB security groups to authorize on this DB instance. Changing
this setting doesn't result in an outage and the change is
asynchronously applied as soon as possible.

This setting doesn't apply to RDS Custom DB instances.

Constraints:

=over

=item *

If supplied, must match existing DB security groups.

=back




=head2 DBSubnetGroupName => Str

The new DB subnet group for the DB instance. You can use this parameter
to move your DB instance to a different VPC. If your DB instance isn't
in a VPC, you can also use this parameter to move your DB instance into
a VPC. For more information, see Working with a DB instance in a VPC
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_VPC.WorkingWithRDSInstanceinaVPC.html#USER_VPC.Non-VPC2VPC)
in the I<Amazon RDS User Guide>.

Changing the subnet group causes an outage during the change. The
change is applied during the next maintenance window, unless you enable
C<ApplyImmediately>.

This setting doesn't apply to RDS Custom DB instances.

Constraints:

=over

=item *

If supplied, must match existing DB subnet group.

=back

Example: C<mydbsubnetgroup>



=head2 DedicatedLogVolume => Bool

Indicates whether the DB instance has a dedicated log volume (DLV)
enabled.



=head2 DeletionProtection => Bool

Specifies whether the DB instance has deletion protection enabled. The
database can't be deleted when deletion protection is enabled. By
default, deletion protection isn't enabled. For more information, see
Deleting a DB Instance
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html).

This setting doesn't apply to Amazon Aurora DB instances. You can
enable or disable deletion protection for the DB cluster. For more
information, see C<ModifyDBCluster>. DB instances in a DB cluster can
be deleted even when deletion protection is enabled for the DB cluster.



=head2 DisableDomain => Bool

Specifies whether to remove the DB instance from the Active Directory
domain.



=head2 Domain => Str

The Active Directory directory ID to move the DB instance to. Specify
C<none> to remove the instance from its current domain. You must create
the domain before this operation. Currently, you can create only Db2,
MySQL, Microsoft SQL Server, Oracle, and PostgreSQL DB instances in an
Active Directory Domain.

For more information, see Kerberos Authentication
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/kerberos-authentication.html)
in the I<Amazon RDS User Guide>.

This setting doesn't apply to RDS Custom DB instances.



=head2 DomainAuthSecretArn => Str

The ARN for the Secrets Manager secret with the credentials for the
user joining the domain.

Example:
C<arn:aws:secretsmanager:region:account-number:secret:myselfmanagedADtestsecret-123456>



=head2 DomainDnsIps => ArrayRef[Str|Undef]

The IPv4 DNS IP addresses of your primary and secondary Active
Directory domain controllers.

Constraints:

=over

=item *

Two IP addresses must be provided. If there isn't a secondary domain
controller, use the IP address of the primary domain controller for
both entries in the list.

=back

Example: C<123.124.125.126,234.235.236.237>



=head2 DomainFqdn => Str

The fully qualified domain name (FQDN) of an Active Directory domain.

Constraints:

=over

=item *

Can't be longer than 64 characters.

=back

Example: C<mymanagedADtest.mymanagedAD.mydomain>



=head2 DomainIAMRoleName => Str

The name of the IAM role to use when making API calls to the Directory
Service.

This setting doesn't apply to RDS Custom DB instances.



=head2 DomainOu => Str

The Active Directory organizational unit for your DB instance to join.

Constraints:

=over

=item *

Must be in the distinguished name format.

=item *

Can't be longer than 64 characters.

=back

Example:
C<OU=mymanagedADtestOU,DC=mymanagedADtest,DC=mymanagedAD,DC=mydomain>



=head2 EnableCustomerOwnedIp => Bool

Specifies whether to enable a customer-owned IP address (CoIP) for an
RDS on Outposts DB instance.

A I<CoIP> provides local or external connectivity to resources in your
Outpost subnets through your on-premises network. For some use cases, a
CoIP can provide lower latency for connections to the DB instance from
outside of its virtual private cloud (VPC) on your local network.

For more information about RDS on Outposts, see Working with Amazon RDS
on Amazon Web Services Outposts
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html)
in the I<Amazon RDS User Guide>.

For more information about CoIPs, see Customer-owned IP addresses
(https://docs.aws.amazon.com/outposts/latest/userguide/routing.html#ip-addressing)
in the I<Amazon Web Services Outposts User Guide>.



=head2 EnableIAMDatabaseAuthentication => Bool

Specifies whether to enable mapping of Amazon Web Services Identity and
Access Management (IAM) accounts to database accounts. By default,
mapping isn't enabled.

This setting doesn't apply to Amazon Aurora. Mapping Amazon Web
Services IAM accounts to database accounts is managed by the DB
cluster.

For more information about IAM database authentication, see IAM
Database Authentication for MySQL and PostgreSQL
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAMDBAuth.html)
in the I<Amazon RDS User Guide.>

This setting doesn't apply to RDS Custom DB instances.



=head2 EnablePerformanceInsights => Bool

Specifies whether to enable Performance Insights for the DB instance.

For more information, see Using Amazon Performance Insights
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html)
in the I<Amazon RDS User Guide>.

This setting doesn't apply to RDS Custom DB instances.



=head2 Engine => Str

The target Oracle DB engine when you convert a non-CDB to a CDB. This
intermediate step is necessary to upgrade an Oracle Database 19c
non-CDB to an Oracle Database 21c CDB.

Note the following requirements:

=over

=item *

Make sure that you specify C<oracle-ee-cdb> or C<oracle-se2-cdb>.

=item *

Make sure that your DB engine runs Oracle Database 19c with an April
2021 or later RU.

=back

Note the following limitations:

=over

=item *

You can't convert a CDB to a non-CDB.

=item *

You can't convert a replica database.

=item *

You can't convert a non-CDB to a CDB and upgrade the engine version in
the same command.

=item *

You can't convert the existing custom parameter or option group when it
has options or parameters that are permanent or persistent. In this
situation, the DB instance reverts to the default option and parameter
group. To avoid reverting to the default, specify a new parameter group
with C<--db-parameter-group-name> and a new option group with
C<--option-group-name>.

=back




=head2 EngineVersion => Str

The version number of the database engine to upgrade to. Changing this
parameter results in an outage and the change is applied during the
next maintenance window unless the C<ApplyImmediately> parameter is
enabled for this request.

For major version upgrades, if a nondefault DB parameter group is
currently in use, a new DB parameter group in the DB parameter group
family for the new engine version must be specified. The new DB
parameter group can be the default for that DB parameter group family.

If you specify only a major version, Amazon RDS updates the DB instance
to the default minor version if the current minor version is lower. For
information about valid engine versions, see C<CreateDBInstance>, or
call C<DescribeDBEngineVersions>.

If the instance that you're modifying is acting as a read replica, the
engine version that you specify must be the same or higher than the
version that the source DB instance or cluster is running.

In RDS Custom for Oracle, this parameter is supported for read replicas
only if they are in the C<PATCH_DB_FAILURE> lifecycle.

Constraints:

=over

=item *

If you are upgrading the engine version and modifying the DB instance
class at the same time, the currently running engine version must be
supported on the specified DB instance class. Otherwise, the operation
returns an error. In this case, first run the operation to upgrade the
engine version, and then run it again to modify the DB instance class.

=back




=head2 Iops => Int

The new Provisioned IOPS (I/O operations per second) value for the RDS
instance.

Changing this setting doesn't result in an outage and the change is
applied during the next maintenance window unless the
C<ApplyImmediately> parameter is enabled for this request. If you are
migrating from Provisioned IOPS to standard storage, set this value to
0. The DB instance will require a reboot for the change in storage type
to take effect.

If you choose to migrate your DB instance from using standard storage
to Provisioned IOPS (io1), or from Provisioned IOPS to standard
storage, the process can take time. The duration of the migration
depends on several factors such as database load, storage size, storage
type (standard or Provisioned IOPS), amount of IOPS provisioned (if
any), and the number of prior scale storage operations. Typical
migration times are under 24 hours, but the process can take up to
several days in some cases. During the migration, the DB instance is
available for use, but might experience performance degradation. While
the migration takes place, nightly backups for the instance are
suspended. No other Amazon RDS operations can take place for the
instance, including modifying the instance, rebooting the instance,
deleting the instance, creating a read replica for the instance, and
creating a DB snapshot of the instance.

Constraints:

=over

=item *

For RDS for MariaDB, RDS for MySQL, RDS for Oracle, and RDS for
PostgreSQL - The value supplied must be at least 10% greater than the
current value. Values that are not at least 10% greater than the
existing value are rounded up so that they are 10% greater than the
current value.

=item *

When you increase the Provisioned IOPS, you must also specify the
C<AllocatedStorage> parameter. You can use the current value for
C<AllocatedStorage>.

=back

Default: Uses existing setting



=head2 LicenseModel => Str

The license model for the DB instance.

This setting doesn't apply to Amazon Aurora or RDS Custom DB instances.

Valid Values:

=over

=item *

RDS for Db2 - C<bring-your-own-license>

=item *

RDS for MariaDB - C<general-public-license>

=item *

RDS for Microsoft SQL Server - C<license-included>

=item *

RDS for MySQL - C<general-public-license>

=item *

RDS for Oracle - C<bring-your-own-license | license-included>

=item *

RDS for PostgreSQL - C<postgresql-license>

=back




=head2 ManageMasterUserPassword => Bool

Specifies whether to manage the master user password with Amazon Web
Services Secrets Manager.

If the DB instance doesn't manage the master user password with Amazon
Web Services Secrets Manager, you can turn on this management. In this
case, you can't specify C<MasterUserPassword>.

If the DB instance already manages the master user password with Amazon
Web Services Secrets Manager, and you specify that the master user
password is not managed with Amazon Web Services Secrets Manager, then
you must specify C<MasterUserPassword>. In this case, Amazon RDS
deletes the secret and uses the new password for the master user
specified by C<MasterUserPassword>.

For more information, see Password management with Amazon Web Services
Secrets Manager
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-secrets-manager.html)
in the I<Amazon RDS User Guide.>

Constraints:

=over

=item *

Can't manage the master user password with Amazon Web Services Secrets
Manager if C<MasterUserPassword> is specified.

=item *

Can't specify for RDS for Oracle CDB instances in the multi-tenant
configuration. Use C<ModifyTenantDatabase> instead.

=item *

Can't specify the parameters C<ManageMasterUserPassword> and
C<MultiTenant> in the same operation.

=back




=head2 MasterUserPassword => Str

The new password for the master user.

Changing this parameter doesn't result in an outage and the change is
asynchronously applied as soon as possible. Between the time of the
request and the completion of the request, the C<MasterUserPassword>
element exists in the C<PendingModifiedValues> element of the operation
response.

Amazon RDS API operations never return the password, so this operation
provides a way to regain access to a primary instance user if the
password is lost. This includes restoring privileges that might have
been accidentally revoked.

This setting doesn't apply to the following DB instances:

=over

=item *

Amazon Aurora

The password for the master user is managed by the DB cluster. For more
information, see C<ModifyDBCluster>.

=item *

RDS Custom

=item *

RDS for Oracle CDBs in the multi-tenant configuration

Specify the master password in C<ModifyTenantDatabase> instead.

=back

Default: Uses existing setting

Constraints:

=over

=item *

Can't be specified if C<ManageMasterUserPassword> is turned on.

=item *

Can include any printable ASCII character except "/", """, or "@". For
RDS for Oracle, can't include the "&" (ampersand) or the "'" (single
quotes) character.

=back

Length Constraints:

=over

=item *

RDS for Db2 - Must contain from 8 to 255 characters.

=item *

RDS for MariaDB - Must contain from 8 to 41 characters.

=item *

RDS for Microsoft SQL Server - Must contain from 8 to 128 characters.

=item *

RDS for MySQL - Must contain from 8 to 41 characters.

=item *

RDS for Oracle - Must contain from 8 to 30 characters.

=item *

RDS for PostgreSQL - Must contain from 8 to 128 characters.

=back




=head2 MasterUserSecretKmsKeyId => Str

The Amazon Web Services KMS key identifier to encrypt a secret that is
automatically generated and managed in Amazon Web Services Secrets
Manager.

This setting is valid only if both of the following conditions are met:

=over

=item *

The DB instance doesn't manage the master user password in Amazon Web
Services Secrets Manager.

If the DB instance already manages the master user password in Amazon
Web Services Secrets Manager, you can't change the KMS key used to
encrypt the secret.

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



=head2 MaxAllocatedStorage => Int

The upper limit in gibibytes (GiB) to which Amazon RDS can
automatically scale the storage of the DB instance.

For more information about this setting, including limitations that
apply to it, see Managing capacity automatically with Amazon RDS
storage autoscaling
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PIOPS.StorageTypes.html#USER_PIOPS.Autoscaling)
in the I<Amazon RDS User Guide>.

This setting doesn't apply to RDS Custom DB instances.



=head2 MonitoringInterval => Int

The interval, in seconds, between points when Enhanced Monitoring
metrics are collected for the DB instance. To disable collection of
Enhanced Monitoring metrics, specify C<0>.

If C<MonitoringRoleArn> is specified, set C<MonitoringInterval> to a
value other than C<0>.

This setting doesn't apply to RDS Custom DB instances.

Valid Values: C<0 | 1 | 5 | 10 | 15 | 30 | 60>

Default: C<0>



=head2 MonitoringRoleArn => Str

The ARN for the IAM role that permits RDS to send enhanced monitoring
metrics to Amazon CloudWatch Logs. For example,
C<arn:aws:iam:123456789012:role/emaccess>. For information on creating
a monitoring role, see To create an IAM role for Amazon RDS Enhanced
Monitoring
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.html#USER_Monitoring.OS.IAMRole)
in the I<Amazon RDS User Guide.>

If C<MonitoringInterval> is set to a value other than C<0>, supply a
C<MonitoringRoleArn> value.

This setting doesn't apply to RDS Custom DB instances.



=head2 MultiAZ => Bool

Specifies whether the DB instance is a Multi-AZ deployment. Changing
this parameter doesn't result in an outage. The change is applied
during the next maintenance window unless the C<ApplyImmediately>
parameter is enabled for this request.

This setting doesn't apply to RDS Custom DB instances.



=head2 MultiTenant => Bool

Specifies whether the to convert your DB instance from the
single-tenant conguration to the multi-tenant conguration. This
parameter is supported only for RDS for Oracle CDB instances.

During the conversion, RDS creates an initial tenant database and
associates the DB name, master user name, character set, and national
character set metadata with this database. The tags associated with the
instance also propagate to the initial tenant database. You can add
more tenant databases to your DB instance by using the
C<CreateTenantDatabase> operation.

The conversion to the multi-tenant configuration is permanent and
irreversible, so you can't later convert back to the single-tenant
configuration. When you specify this parameter, you must also specify
C<ApplyImmediately>.



=head2 NetworkType => Str

The network type of the DB instance.

The network type is determined by the C<DBSubnetGroup> specified for
the DB instance. A C<DBSubnetGroup> can support only the IPv4 protocol
or the IPv4 and the IPv6 protocols (C<DUAL>).

For more information, see Working with a DB instance in a VPC
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_VPC.WorkingWithRDSInstanceinaVPC.html)
in the I<Amazon RDS User Guide.>

Valid Values: C<IPV4 | DUAL>



=head2 NewDBInstanceIdentifier => Str

The new identifier for the DB instance when renaming a DB instance.
When you change the DB instance identifier, an instance reboot occurs
immediately if you enable C<ApplyImmediately>, or will occur during the
next maintenance window if you disable C<ApplyImmediately>. This value
is stored as a lowercase string.

This setting doesn't apply to RDS Custom DB instances.

Constraints:

=over

=item *

Must contain from 1 to 63 letters, numbers, or hyphens.

=item *

The first character must be a letter.

=item *

Can't end with a hyphen or contain two consecutive hyphens.

=back

Example: C<mydbinstance>



=head2 OptionGroupName => Str

The option group to associate the DB instance with.

Changing this parameter doesn't result in an outage, with one
exception. If the parameter change results in an option group that
enables OEM, it can cause a brief period, lasting less than a second,
during which new connections are rejected but existing connections
aren't interrupted.

The change is applied during the next maintenance window unless the
C<ApplyImmediately> parameter is enabled for this request.

Permanent options, such as the TDE option for Oracle Advanced Security
TDE, can't be removed from an option group, and that option group can't
be removed from a DB instance after it is associated with a DB
instance.

This setting doesn't apply to RDS Custom DB instances.



=head2 PerformanceInsightsKMSKeyId => Str

The Amazon Web Services KMS key identifier for encryption of
Performance Insights data.

The Amazon Web Services KMS key identifier is the key ARN, key ID,
alias ARN, or alias name for the KMS key.

If you don't specify a value for C<PerformanceInsightsKMSKeyId>, then
Amazon RDS uses your default KMS key. There is a default KMS key for
your Amazon Web Services account. Your Amazon Web Services account has
a different default KMS key for each Amazon Web Services Region.

This setting doesn't apply to RDS Custom DB instances.



=head2 PerformanceInsightsRetentionPeriod => Int

The number of days to retain Performance Insights data.

This setting doesn't apply to RDS Custom DB instances.

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
Amazon RDS returns an error.



=head2 PreferredBackupWindow => Str

The daily time range during which automated backups are created if
automated backups are enabled, as determined by the
C<BackupRetentionPeriod> parameter. Changing this parameter doesn't
result in an outage and the change is asynchronously applied as soon as
possible. The default is a 30-minute window selected at random from an
8-hour block of time for each Amazon Web Services Region. For more
information, see Backup window
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_WorkingWithAutomatedBackups.html#USER_WorkingWithAutomatedBackups.BackupWindow)
in the I<Amazon RDS User Guide>.

This setting doesn't apply to Amazon Aurora DB instances. The daily
time range for creating automated backups is managed by the DB cluster.
For more information, see C<ModifyDBCluster>.

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

The weekly time range during which system maintenance can occur, which
might result in an outage. Changing this parameter doesn't result in an
outage, except in the following situation, and the change is
asynchronously applied as soon as possible. If there are pending
actions that cause a reboot, and the maintenance window is changed to
include the current time, then changing this parameter causes a reboot
of the DB instance. If you change this window to the current time,
there must be at least 30 minutes between the current time and end of
the window to ensure pending changes are applied.

For more information, see Amazon RDS Maintenance Window
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Maintenance.html#Concepts.DBMaintenance)
in the I<Amazon RDS User Guide.>

Default: Uses existing setting

Constraints:

=over

=item *

Must be in the format C<ddd:hh24:mi-ddd:hh24:mi>.

=item *

The day values must be C<mon | tue | wed | thu | fri | sat | sun>.

=item *

Must be in Universal Coordinated Time (UTC).

=item *

Must not conflict with the preferred backup window.

=item *

Must be at least 30 minutes.

=back




=head2 ProcessorFeatures => ArrayRef[L<Paws::RDS::ProcessorFeature>]

The number of CPU cores and the number of threads per core for the DB
instance class of the DB instance.

This setting doesn't apply to RDS Custom DB instances.



=head2 PromotionTier => Int

The order of priority in which an Aurora Replica is promoted to the
primary instance after a failure of the existing primary instance. For
more information, see Fault Tolerance for an Aurora DB Cluster
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Concepts.AuroraHighAvailability.html#Aurora.Managing.FaultTolerance)
in the I<Amazon Aurora User Guide>.

This setting doesn't apply to RDS Custom DB instances.

Default: C<1>

Valid Values: C<0 - 15>



=head2 PubliclyAccessible => Bool

Specifies whether the DB instance is publicly accessible.

When the DB instance is publicly accessible and you connect from
outside of the DB instance's virtual private cloud (VPC), its Domain
Name System (DNS) endpoint resolves to the public IP address. When you
connect from within the same VPC as the DB instance, the endpoint
resolves to the private IP address. Access to the DB instance is
ultimately controlled by the security group it uses. That public access
isn't permitted if the security group assigned to the DB instance
doesn't permit it.

When the DB instance isn't publicly accessible, it is an internal DB
instance with a DNS name that resolves to a private IP address.

C<PubliclyAccessible> only applies to DB instances in a VPC. The DB
instance must be part of a public subnet and C<PubliclyAccessible> must
be enabled for it to be publicly accessible.

Changes to the C<PubliclyAccessible> parameter are applied immediately
regardless of the value of the C<ApplyImmediately> parameter.



=head2 ReplicaMode => Str

A value that sets the open mode of a replica database to either mounted
or read-only.

Currently, this parameter is only supported for Oracle DB instances.

Mounted DB replicas are included in Oracle Enterprise Edition. The main
use case for mounted replicas is cross-Region disaster recovery. The
primary database doesn't use Active Data Guard to transmit information
to the mounted replica. Because it doesn't accept user connections, a
mounted replica can't serve a read-only workload. For more information,
see Working with Oracle Read Replicas for Amazon RDS
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/oracle-read-replicas.html)
in the I<Amazon RDS User Guide>.

This setting doesn't apply to RDS Custom DB instances.

Valid values are: C<"open-read-only">, C<"mounted">

=head2 ResumeFullAutomationModeMinutes => Int

The number of minutes to pause the automation. When the time period
ends, RDS Custom resumes full automation.

Default: C<60>

Constraints:

=over

=item *

Must be at least 60.

=item *

Must be no more than 1,440.

=back




=head2 RotateMasterUserPassword => Bool

Specifies whether to rotate the secret managed by Amazon Web Services
Secrets Manager for the master user password.

This setting is valid only if the master user password is managed by
RDS in Amazon Web Services Secrets Manager for the DB instance. The
secret value contains the updated password.

For more information, see Password management with Amazon Web Services
Secrets Manager
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-secrets-manager.html)
in the I<Amazon RDS User Guide.>

Constraints:

=over

=item *

You must apply the change immediately when rotating the master user
password.

=back




=head2 StorageThroughput => Int

The storage throughput value for the DB instance.

This setting applies only to the C<gp3> storage type.

This setting doesn't apply to Amazon Aurora or RDS Custom DB instances.



=head2 StorageType => Str

The storage type to associate with the DB instance.

If you specify C<io1>, C<io2>, or C<gp3> you must also include a value
for the C<Iops> parameter.

If you choose to migrate your DB instance from using standard storage
to gp2 (General Purpose SSD), gp3, or Provisioned IOPS (io1), or from
these storage types to standard storage, the process can take time. The
duration of the migration depends on several factors such as database
load, storage size, storage type (standard or Provisioned IOPS), amount
of IOPS provisioned (if any), and the number of prior scale storage
operations. Typical migration times are under 24 hours, but the process
can take up to several days in some cases. During the migration, the DB
instance is available for use, but might experience performance
degradation. While the migration takes place, nightly backups for the
instance are suspended. No other Amazon RDS operations can take place
for the instance, including modifying the instance, rebooting the
instance, deleting the instance, creating a read replica for the
instance, and creating a DB snapshot of the instance.

Valid Values: C<gp2 | gp3 | io1 | io2 | standard>

Default: C<io1>, if the C<Iops> parameter is specified. Otherwise,
C<gp2>.



=head2 TdeCredentialArn => Str

The ARN from the key store with which to associate the instance for TDE
encryption.

This setting doesn't apply to RDS Custom DB instances.



=head2 TdeCredentialPassword => Str

The password for the given ARN from the key store in order to access
the device.

This setting doesn't apply to RDS Custom DB instances.



=head2 UseDefaultProcessorFeatures => Bool

Specifies whether the DB instance class of the DB instance uses its
default processor features.

This setting doesn't apply to RDS Custom DB instances.



=head2 VpcSecurityGroupIds => ArrayRef[Str|Undef]

A list of Amazon EC2 VPC security groups to associate with this DB
instance. This change is asynchronously applied as soon as possible.

This setting doesn't apply to the following DB instances:

=over

=item *

Amazon Aurora (The associated list of EC2 VPC security groups is
managed by the DB cluster. For more information, see
C<ModifyDBCluster>.)

=item *

RDS Custom

=back

Constraints:

=over

=item *

If supplied, must match existing VPC security group IDs.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyDBInstance in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

