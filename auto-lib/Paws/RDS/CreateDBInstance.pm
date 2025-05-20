
package Paws::RDS::CreateDBInstance;
  use Moose;
  has AllocatedStorage => (is => 'ro', isa => 'Int');
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Bool');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has BackupRetentionPeriod => (is => 'ro', isa => 'Int');
  has BackupTarget => (is => 'ro', isa => 'Str');
  has CACertificateIdentifier => (is => 'ro', isa => 'Str');
  has CharacterSetName => (is => 'ro', isa => 'Str');
  has CopyTagsToSnapshot => (is => 'ro', isa => 'Bool');
  has CustomIamInstanceProfile => (is => 'ro', isa => 'Str');
  has DatabaseInsightsMode => (is => 'ro', isa => 'Str');
  has DBClusterIdentifier => (is => 'ro', isa => 'Str');
  has DBInstanceClass => (is => 'ro', isa => 'Str', required => 1);
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DBName => (is => 'ro', isa => 'Str');
  has DBParameterGroupName => (is => 'ro', isa => 'Str');
  has DBSecurityGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has DBSubnetGroupName => (is => 'ro', isa => 'Str');
  has DBSystemId => (is => 'ro', isa => 'Str');
  has DedicatedLogVolume => (is => 'ro', isa => 'Bool');
  has DeletionProtection => (is => 'ro', isa => 'Bool');
  has Domain => (is => 'ro', isa => 'Str');
  has DomainAuthSecretArn => (is => 'ro', isa => 'Str');
  has DomainDnsIps => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has DomainFqdn => (is => 'ro', isa => 'Str');
  has DomainIAMRoleName => (is => 'ro', isa => 'Str');
  has DomainOu => (is => 'ro', isa => 'Str');
  has EnableCloudwatchLogsExports => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has EnableCustomerOwnedIp => (is => 'ro', isa => 'Bool');
  has EnableIAMDatabaseAuthentication => (is => 'ro', isa => 'Bool');
  has EnablePerformanceInsights => (is => 'ro', isa => 'Bool');
  has Engine => (is => 'ro', isa => 'Str', required => 1);
  has EngineLifecycleSupport => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has Iops => (is => 'ro', isa => 'Int');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has LicenseModel => (is => 'ro', isa => 'Str');
  has ManageMasterUserPassword => (is => 'ro', isa => 'Bool');
  has MasterUsername => (is => 'ro', isa => 'Str');
  has MasterUserPassword => (is => 'ro', isa => 'Str');
  has MasterUserSecretKmsKeyId => (is => 'ro', isa => 'Str');
  has MaxAllocatedStorage => (is => 'ro', isa => 'Int');
  has MonitoringInterval => (is => 'ro', isa => 'Int');
  has MonitoringRoleArn => (is => 'ro', isa => 'Str');
  has MultiAZ => (is => 'ro', isa => 'Bool');
  has MultiTenant => (is => 'ro', isa => 'Bool');
  has NcharCharacterSetName => (is => 'ro', isa => 'Str');
  has NetworkType => (is => 'ro', isa => 'Str');
  has OptionGroupName => (is => 'ro', isa => 'Str');
  has PerformanceInsightsKMSKeyId => (is => 'ro', isa => 'Str');
  has PerformanceInsightsRetentionPeriod => (is => 'ro', isa => 'Int');
  has Port => (is => 'ro', isa => 'Int');
  has PreferredBackupWindow => (is => 'ro', isa => 'Str');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has ProcessorFeatures => (is => 'ro', isa => 'ArrayRef[Paws::RDS::ProcessorFeature]');
  has PromotionTier => (is => 'ro', isa => 'Int');
  has PubliclyAccessible => (is => 'ro', isa => 'Bool');
  has StorageEncrypted => (is => 'ro', isa => 'Bool');
  has StorageThroughput => (is => 'ro', isa => 'Int');
  has StorageType => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Tag]');
  has TdeCredentialArn => (is => 'ro', isa => 'Str');
  has TdeCredentialPassword => (is => 'ro', isa => 'Str');
  has Timezone => (is => 'ro', isa => 'Str');
  has VpcSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDBInstance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::CreateDBInstanceResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateDBInstanceResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::CreateDBInstance - Arguments for method CreateDBInstance on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDBInstance on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method CreateDBInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDBInstance.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    # To create a DB instance.
    # This example creates a DB instance.
    my $CreateDBInstanceResult = $rds->CreateDBInstance(
      'AllocatedStorage'     => 5,
      'DBInstanceClass'      => 'db.t2.micro',
      'DBInstanceIdentifier' => 'mymysqlinstance',
      'Engine'               => 'MySQL',
      'MasterUserPassword'   => 'MyPassword',
      'MasterUsername'       => 'MyUser'
    );

    # Results:
    my $DBInstance = $CreateDBInstanceResult->DBInstance;

    # Returns a L<Paws::RDS::CreateDBInstanceResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/CreateDBInstance>

=head1 ATTRIBUTES


=head2 AllocatedStorage => Int

The amount of storage in gibibytes (GiB) to allocate for the DB
instance.

This setting doesn't apply to Amazon Aurora DB instances. Aurora
cluster volumes automatically grow as the amount of data in your
database increases, though you are only charged for the space that you
use in an Aurora cluster volume.

=over

=item Amazon RDS Custom

Constraints to the amount of storage for each storage type are the
following:

=over

=item *

General Purpose (SSD) storage (gp2, gp3): Must be an integer from 40 to
65536 for RDS Custom for Oracle, 16384 for RDS Custom for SQL Server.

=item *

Provisioned IOPS storage (io1, io2): Must be an integer from 40 to
65536 for RDS Custom for Oracle, 16384 for RDS Custom for SQL Server.

=back

=item RDS for Db2

Constraints to the amount of storage for each storage type are the
following:

=over

=item *

General Purpose (SSD) storage (gp3): Must be an integer from 20 to
65536.

=item *

Provisioned IOPS storage (io1, io2): Must be an integer from 100 to
65536.

=back

=item RDS for MariaDB

Constraints to the amount of storage for each storage type are the
following:

=over

=item *

General Purpose (SSD) storage (gp2, gp3): Must be an integer from 20 to
65536.

=item *

Provisioned IOPS storage (io1, io2): Must be an integer from 100 to
65536.

=item *

Magnetic storage (standard): Must be an integer from 5 to 3072.

=back

=item RDS for MySQL

Constraints to the amount of storage for each storage type are the
following:

=over

=item *

General Purpose (SSD) storage (gp2, gp3): Must be an integer from 20 to
65536.

=item *

Provisioned IOPS storage (io1, io2): Must be an integer from 100 to
65536.

=item *

Magnetic storage (standard): Must be an integer from 5 to 3072.

=back

=item RDS for Oracle

Constraints to the amount of storage for each storage type are the
following:

=over

=item *

General Purpose (SSD) storage (gp2, gp3): Must be an integer from 20 to
65536.

=item *

Provisioned IOPS storage (io1, io2): Must be an integer from 100 to
65536.

=item *

Magnetic storage (standard): Must be an integer from 10 to 3072.

=back

=item RDS for PostgreSQL

Constraints to the amount of storage for each storage type are the
following:

=over

=item *

General Purpose (SSD) storage (gp2, gp3): Must be an integer from 20 to
65536.

=item *

Provisioned IOPS storage (io1, io2): Must be an integer from 100 to
65536.

=item *

Magnetic storage (standard): Must be an integer from 5 to 3072.

=back

=item RDS for SQL Server

Constraints to the amount of storage for each storage type are the
following:

=over

=item *

General Purpose (SSD) storage (gp2, gp3):

=over

=item *

Enterprise and Standard editions: Must be an integer from 20 to 16384.

=item *

Web and Express editions: Must be an integer from 20 to 16384.

=back

=item *

Provisioned IOPS storage (io1, io2):

=over

=item *

Enterprise and Standard editions: Must be an integer from 100 to 16384.

=item *

Web and Express editions: Must be an integer from 100 to 16384.

=back

=item *

Magnetic storage (standard):

=over

=item *

Enterprise and Standard editions: Must be an integer from 20 to 1024.

=item *

Web and Express editions: Must be an integer from 20 to 1024.

=back

=back

=back




=head2 AutoMinorVersionUpgrade => Bool

Specifies whether minor engine upgrades are applied automatically to
the DB instance during the maintenance window. By default, minor engine
upgrades are applied automatically.

If you create an RDS Custom DB instance, you must set
C<AutoMinorVersionUpgrade> to C<false>.

For more information about automatic minor version upgrades, see
Automatically upgrading the minor engine version
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Upgrading.html#USER_UpgradeDBInstance.Upgrading.AutoMinorVersionUpgrades).



=head2 AvailabilityZone => Str

The Availability Zone (AZ) where the database will be created. For
information on Amazon Web Services Regions and Availability Zones, see
Regions and Availability Zones
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.RegionsAndAvailabilityZones.html).

For Amazon Aurora, each Aurora DB cluster hosts copies of its storage
in three separate Availability Zones. Specify one of these Availability
Zones. Aurora automatically chooses an appropriate Availability Zone if
you don't specify one.

Default: A random, system-chosen Availability Zone in the endpoint's
Amazon Web Services Region.

Constraints:

=over

=item *

The C<AvailabilityZone> parameter can't be specified if the DB instance
is a Multi-AZ deployment.

=item *

The specified Availability Zone must be in the same Amazon Web Services
Region as the current endpoint.

=back

Example: C<us-east-1d>



=head2 BackupRetentionPeriod => Int

The number of days for which automated backups are retained. Setting
this parameter to a positive number enables backups. Setting this
parameter to C<0> disables automated backups.

This setting doesn't apply to Amazon Aurora DB instances. The retention
period for automated backups is managed by the DB cluster.

Default: C<1>

Constraints:

=over

=item *

Must be a value from 0 to 35.

=item *

Can't be set to 0 if the DB instance is a source to read replicas.

=item *

Can't be set to 0 for an RDS Custom for Oracle DB instance.

=back




=head2 BackupTarget => Str

The location for storing automated backups and manual snapshots.

Valid Values:

=over

=item *

C<outposts> (Amazon Web Services Outposts)

=item *

C<region> (Amazon Web Services Region)

=back

Default: C<region>

For more information, see Working with Amazon RDS on Amazon Web
Services Outposts
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html)
in the I<Amazon RDS User Guide>.



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



=head2 CharacterSetName => Str

For supported engines, the character set (C<CharacterSet>) to associate
the DB instance with.

This setting doesn't apply to the following DB instances:

=over

=item *

Amazon Aurora - The character set is managed by the DB cluster. For
more information, see C<CreateDBCluster>.

=item *

RDS Custom - However, if you need to change the character set, you can
change it on the database itself.

=back




=head2 CopyTagsToSnapshot => Bool

Specifies whether to copy tags from the DB instance to snapshots of the
DB instance. By default, tags are not copied.

This setting doesn't apply to Amazon Aurora DB instances. Copying tags
to snapshots is managed by the DB cluster. Setting this value for an
Aurora DB instance has no effect on the DB cluster setting.



=head2 CustomIamInstanceProfile => Str

The instance profile associated with the underlying Amazon EC2 instance
of an RDS Custom DB instance.

This setting is required for RDS Custom.

Constraints:

=over

=item *

The profile must exist in your account.

=item *

The profile must have an IAM role that Amazon EC2 has permissions to
assume.

=item *

The instance profile name and the associated IAM role name must start
with the prefix C<AWSRDSCustom>.

=back

For the list of permissions required for the IAM role, see Configure
IAM and your VPC
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/custom-setup-orcl.html#custom-setup-orcl.iam-vpc)
in the I<Amazon RDS User Guide>.



=head2 DatabaseInsightsMode => Str

The mode of Database Insights to enable for the DB instance.

Aurora DB instances inherit this value from the DB cluster, so you
can't change this value.

Valid values are: C<"standard">, C<"advanced">

=head2 DBClusterIdentifier => Str

The identifier of the DB cluster that this DB instance will belong to.

This setting doesn't apply to RDS Custom DB instances.



=head2 B<REQUIRED> DBInstanceClass => Str

The compute and memory capacity of the DB instance, for example
C<db.m5.large>. Not all DB instance classes are available in all Amazon
Web Services Regions, or for all database engines. For the full list of
DB instance classes, and availability for your engine, see DB instance
classes
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html)
in the I<Amazon RDS User Guide> or Aurora DB instance classes
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Concepts.DBInstanceClass.html)
in the I<Amazon Aurora User Guide>.



=head2 B<REQUIRED> DBInstanceIdentifier => Str

The identifier for this DB instance. This parameter is stored as a
lowercase string.

Constraints:

=over

=item *

Must contain from 1 to 63 letters, numbers, or hyphens.

=item *

First character must be a letter.

=item *

Can't end with a hyphen or contain two consecutive hyphens.

=back

Example: C<mydbinstance>



=head2 DBName => Str

The meaning of this parameter differs according to the database engine
you use.

=over

=item Amazon Aurora MySQL

The name of the database to create when the primary DB instance of the
Aurora MySQL DB cluster is created. If this parameter isn't specified
for an Aurora MySQL DB cluster, no database is created in the DB
cluster.

Constraints:

=over

=item *

Must contain 1 to 64 alphanumeric characters.

=item *

Must begin with a letter. Subsequent characters can be letters,
underscores, or digits (0-9).

=item *

Can't be a word reserved by the database engine.

=back

=item Amazon Aurora PostgreSQL

The name of the database to create when the primary DB instance of the
Aurora PostgreSQL DB cluster is created. A database named C<postgres>
is always created. If this parameter is specified, an additional
database with this name is created.

Constraints:

=over

=item *

It must contain 1 to 63 alphanumeric characters.

=item *

Must begin with a letter. Subsequent characters can be letters,
underscores, or digits (0 to 9).

=item *

Can't be a word reserved by the database engine.

=back

=item Amazon RDS Custom for Oracle

The Oracle System ID (SID) of the created RDS Custom DB instance. If
you don't specify a value, the default value is C<ORCL> for non-CDBs
and C<RDSCDB> for CDBs.

Default: C<ORCL>

Constraints:

=over

=item *

Must contain 1 to 8 alphanumeric characters.

=item *

Must contain a letter.

=item *

Can't be a word reserved by the database engine.

=back

=item Amazon RDS Custom for SQL Server

Not applicable. Must be null.

=item RDS for Db2

The name of the database to create when the DB instance is created. If
this parameter isn't specified, no database is created in the DB
instance. In some cases, we recommend that you don't add a database
name. For more information, see Additional considerations
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/db2-db-instance-prereqs.html#db2-prereqs-additional-considerations)
in the I<Amazon RDS User Guide>.

Constraints:

=over

=item *

Must contain 1 to 64 letters or numbers.

=item *

Must begin with a letter. Subsequent characters can be letters,
underscores, or digits (0-9).

=item *

Can't be a word reserved by the specified database engine.

=back

=item RDS for MariaDB

The name of the database to create when the DB instance is created. If
this parameter isn't specified, no database is created in the DB
instance.

Constraints:

=over

=item *

Must contain 1 to 64 letters or numbers.

=item *

Must begin with a letter. Subsequent characters can be letters,
underscores, or digits (0-9).

=item *

Can't be a word reserved by the specified database engine.

=back

=item RDS for MySQL

The name of the database to create when the DB instance is created. If
this parameter isn't specified, no database is created in the DB
instance.

Constraints:

=over

=item *

Must contain 1 to 64 letters or numbers.

=item *

Must begin with a letter. Subsequent characters can be letters,
underscores, or digits (0-9).

=item *

Can't be a word reserved by the specified database engine.

=back

=item RDS for Oracle

The Oracle System ID (SID) of the created DB instance. If you don't
specify a value, the default value is C<ORCL>. You can't specify the
string C<null>, or any other reserved word, for C<DBName>.

Default: C<ORCL>

Constraints:

=over

=item *

Can't be longer than 8 characters.

=back

=item RDS for PostgreSQL

The name of the database to create when the DB instance is created. A
database named C<postgres> is always created. If this parameter is
specified, an additional database with this name is created.

Constraints:

=over

=item *

Must contain 1 to 63 letters, numbers, or underscores.

=item *

Must begin with a letter. Subsequent characters can be letters,
underscores, or digits (0-9).

=item *

Can't be a word reserved by the specified database engine.

=back

=item RDS for SQL Server

Not applicable. Must be null.

=back




=head2 DBParameterGroupName => Str

The name of the DB parameter group to associate with this DB instance.
If you don't specify a value, then Amazon RDS uses the default DB
parameter group for the specified DB engine and version.

This setting doesn't apply to RDS Custom DB instances.

Constraints:

=over

=item *

Must be 1 to 255 letters, numbers, or hyphens.

=item *

The first character must be a letter.

=item *

Can't end with a hyphen or contain two consecutive hyphens.

=back




=head2 DBSecurityGroups => ArrayRef[Str|Undef]

A list of DB security groups to associate with this DB instance.

This setting applies to the legacy EC2-Classic platform, which is no
longer used to create new DB instances. Use the C<VpcSecurityGroupIds>
setting instead.



=head2 DBSubnetGroupName => Str

A DB subnet group to associate with this DB instance.

Constraints:

=over

=item *

Must match the name of an existing DB subnet group.

=back

Example: C<mydbsubnetgroup>



=head2 DBSystemId => Str

The Oracle system identifier (SID), which is the name of the Oracle
database instance that manages your database files. In this context,
the term "Oracle database instance" refers exclusively to the system
global area (SGA) and Oracle background processes. If you don't specify
a SID, the value defaults to C<RDSCDB>. The Oracle SID is also the name
of your CDB.



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
information, see C<CreateDBCluster>. DB instances in a DB cluster can
be deleted even when deletion protection is enabled for the DB cluster.



=head2 Domain => Str

The Active Directory directory ID to create the DB instance in.
Currently, you can create only Db2, MySQL, Microsoft SQL Server,
Oracle, and PostgreSQL DB instances in an Active Directory Domain.

For more information, see Kerberos Authentication
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/kerberos-authentication.html)
in the I<Amazon RDS User Guide>.

This setting doesn't apply to the following DB instances:

=over

=item *

Amazon Aurora (The domain is managed by the DB cluster.)

=item *

RDS Custom

=back




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

This setting doesn't apply to the following DB instances:

=over

=item *

Amazon Aurora (The domain is managed by the DB cluster.)

=item *

RDS Custom

=back




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



=head2 EnableCloudwatchLogsExports => ArrayRef[Str|Undef]

The list of log types to enable for exporting to CloudWatch Logs. For
more information, see Publishing Database Logs to Amazon CloudWatch
Logs
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch)
in the I<Amazon RDS User Guide>.

This setting doesn't apply to the following DB instances:

=over

=item *

Amazon Aurora (CloudWatch Logs exports are managed by the DB cluster.)

=item *

RDS Custom

=back

The following values are valid for each DB engine:

=over

=item *

RDS for Db2 - C<diag.log | notify.log | iam-db-auth-error>

=item *

RDS for MariaDB - C<audit | error | general | slowquery |
iam-db-auth-error>

=item *

RDS for Microsoft SQL Server - C<agent | error>

=item *

RDS for MySQL - C<audit | error | general | slowquery |
iam-db-auth-error>

=item *

RDS for Oracle - C<alert | audit | listener | trace | oemagent>

=item *

RDS for PostgreSQL - C<postgresql | upgrade | iam-db-auth-error>

=back




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

For more information, see IAM Database Authentication for MySQL and
PostgreSQL
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAMDBAuth.html)
in the I<Amazon RDS User Guide>.

This setting doesn't apply to the following DB instances:

=over

=item *

Amazon Aurora (Mapping Amazon Web Services IAM accounts to database
accounts is managed by the DB cluster.)

=item *

RDS Custom

=back




=head2 EnablePerformanceInsights => Bool

Specifies whether to enable Performance Insights for the DB instance.
For more information, see Using Amazon Performance Insights
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html)
in the I<Amazon RDS User Guide>.

This setting doesn't apply to RDS Custom DB instances.



=head2 B<REQUIRED> Engine => Str

The database engine to use for this DB instance.

Not every database engine is available in every Amazon Web Services
Region.

Valid Values:

=over

=item *

C<aurora-mysql> (for Aurora MySQL DB instances)

=item *

C<aurora-postgresql> (for Aurora PostgreSQL DB instances)

=item *

C<custom-oracle-ee> (for RDS Custom for Oracle DB instances)

=item *

C<custom-oracle-ee-cdb> (for RDS Custom for Oracle DB instances)

=item *

C<custom-oracle-se2> (for RDS Custom for Oracle DB instances)

=item *

C<custom-oracle-se2-cdb> (for RDS Custom for Oracle DB instances)

=item *

C<custom-sqlserver-ee> (for RDS Custom for SQL Server DB instances)

=item *

C<custom-sqlserver-se> (for RDS Custom for SQL Server DB instances)

=item *

C<custom-sqlserver-web> (for RDS Custom for SQL Server DB instances)

=item *

C<custom-sqlserver-dev> (for RDS Custom for SQL Server DB instances)

=item *

C<db2-ae>

=item *

C<db2-se>

=item *

C<mariadb>

=item *

C<mysql>

=item *

C<oracle-ee>

=item *

C<oracle-ee-cdb>

=item *

C<oracle-se2>

=item *

C<oracle-se2-cdb>

=item *

C<postgres>

=item *

C<sqlserver-ee>

=item *

C<sqlserver-se>

=item *

C<sqlserver-ex>

=item *

C<sqlserver-web>

=back




=head2 EngineLifecycleSupport => Str

The life cycle type for this DB instance.

By default, this value is set to C<open-source-rds-extended-support>,
which enrolls your DB instance into Amazon RDS Extended Support. At the
end of standard support, you can avoid charges for Extended Support by
setting the value to C<open-source-rds-extended-support-disabled>. In
this case, creating the DB instance will fail if the DB major version
is past its end of standard support date.

This setting applies only to RDS for MySQL and RDS for PostgreSQL. For
Amazon Aurora DB instances, the life cycle type is managed by the DB
cluster.

You can use this setting to enroll your DB instance into Amazon RDS
Extended Support. With RDS Extended Support, you can run the selected
major engine version on your DB instance past the end of standard
support for that engine version. For more information, see Using Amazon
RDS Extended Support
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/extended-support.html)
in the I<Amazon RDS User Guide>.

Valid Values: C<open-source-rds-extended-support |
open-source-rds-extended-support-disabled>

Default: C<open-source-rds-extended-support>



=head2 EngineVersion => Str

The version number of the database engine to use.

This setting doesn't apply to Amazon Aurora DB instances. The version
number of the database engine the DB instance uses is managed by the DB
cluster.

For a list of valid engine versions, use the
C<DescribeDBEngineVersions> operation.

The following are the database engines and links to information about
the major and minor versions that are available with Amazon RDS. Not
every database engine is available for every Amazon Web Services
Region.

=over

=item Amazon RDS Custom for Oracle

A custom engine version (CEV) that you have previously created. This
setting is required for RDS Custom for Oracle. The CEV name has the
following format: 19.I<customized_string>. A valid CEV name is
C<19.my_cev1>. For more information, see Creating an RDS Custom for
Oracle DB instance
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/custom-creating.html#custom-creating.create)
in the I<Amazon RDS User Guide>.

=item Amazon RDS Custom for SQL Server

See RDS Custom for SQL Server general requirements
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/custom-reqs-limits-MS.html)
in the I<Amazon RDS User Guide>.

=item RDS for Db2

For information, see Db2 on Amazon RDS versions
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Db2.html#Db2.Concepts.VersionMgmt)
in the I<Amazon RDS User Guide>.

=item RDS for MariaDB

For information, see MariaDB on Amazon RDS versions
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_MariaDB.html#MariaDB.Concepts.VersionMgmt)
in the I<Amazon RDS User Guide>.

=item RDS for Microsoft SQL Server

For information, see Microsoft SQL Server versions on Amazon RDS
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_SQLServer.html#SQLServer.Concepts.General.VersionSupport)
in the I<Amazon RDS User Guide>.

=item RDS for MySQL

For information, see MySQL on Amazon RDS versions
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_MySQL.html#MySQL.Concepts.VersionMgmt)
in the I<Amazon RDS User Guide>.

=item RDS for Oracle

For information, see Oracle Database Engine release notes
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Appendix.Oracle.PatchComposition.html)
in the I<Amazon RDS User Guide>.

=item RDS for PostgreSQL

For information, see Amazon RDS for PostgreSQL versions and extensions
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_PostgreSQL.html#PostgreSQL.Concepts)
in the I<Amazon RDS User Guide>.

=back




=head2 Iops => Int

The amount of Provisioned IOPS (input/output operations per second) to
initially allocate for the DB instance. For information about valid
IOPS values, see Amazon RDS DB instance storage
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html)
in the I<Amazon RDS User Guide>.

This setting doesn't apply to Amazon Aurora DB instances. Storage is
managed by the DB cluster.

Constraints:

=over

=item *

For RDS for Db2, MariaDB, MySQL, Oracle, and PostgreSQL - Must be a
multiple between .5 and 50 of the storage amount for the DB instance.

=item *

For RDS for SQL Server - Must be a multiple between 1 and 50 of the
storage amount for the DB instance.

=back




=head2 KmsKeyId => Str

The Amazon Web Services KMS key identifier for an encrypted DB
instance.

The Amazon Web Services KMS key identifier is the key ARN, key ID,
alias ARN, or alias name for the KMS key. To use a KMS key in a
different Amazon Web Services account, specify the key ARN or alias
ARN.

This setting doesn't apply to Amazon Aurora DB instances. The Amazon
Web Services KMS key identifier is managed by the DB cluster. For more
information, see C<CreateDBCluster>.

If C<StorageEncrypted> is enabled, and you do not specify a value for
the C<KmsKeyId> parameter, then Amazon RDS uses your default KMS key.
There is a default KMS key for your Amazon Web Services account. Your
Amazon Web Services account has a different default KMS key for each
Amazon Web Services Region.

For Amazon RDS Custom, a KMS key is required for DB instances. For most
RDS engines, if you leave this parameter empty while enabling
C<StorageEncrypted>, the engine uses the default KMS key. However, RDS
Custom doesn't use the default key when this parameter is empty. You
must explicitly specify a key.



=head2 LicenseModel => Str

The license model information for this DB instance.

License models for RDS for Db2 require additional configuration. The
Bring Your Own License (BYOL) model requires a custom parameter group
and an Amazon Web Services License Manager self-managed license. The
Db2 license through Amazon Web Services Marketplace model requires an
Amazon Web Services Marketplace subscription. For more information, see
Amazon RDS for Db2 licensing options
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/db2-licensing.html)
in the I<Amazon RDS User Guide>.

The default for RDS for Db2 is C<bring-your-own-license>.

This setting doesn't apply to Amazon Aurora or RDS Custom DB instances.

Valid Values:

=over

=item *

RDS for Db2 - C<bring-your-own-license | marketplace-license>

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

For more information, see Password management with Amazon Web Services
Secrets Manager
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-secrets-manager.html)
in the I<Amazon RDS User Guide.>

Constraints:

=over

=item *

Can't manage the master user password with Amazon Web Services Secrets
Manager if C<MasterUserPassword> is specified.

=back




=head2 MasterUsername => Str

The name for the master user.

This setting doesn't apply to Amazon Aurora DB instances. The name for
the master user is managed by the DB cluster.

This setting is required for RDS DB instances.

Constraints:

=over

=item *

Must be 1 to 16 letters, numbers, or underscores.

=item *

First character must be a letter.

=item *

Can't be a reserved word for the chosen database engine.

=back




=head2 MasterUserPassword => Str

The password for the master user.

This setting doesn't apply to Amazon Aurora DB instances. The password
for the master user is managed by the DB cluster.

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

This setting is valid only if the master user password is managed by
RDS in Amazon Web Services Secrets Manager for the DB instance.

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



=head2 MaxAllocatedStorage => Int

The upper limit in gibibytes (GiB) to which Amazon RDS can
automatically scale the storage of the DB instance.

For more information about this setting, including limitations that
apply to it, see Managing capacity automatically with Amazon RDS
storage autoscaling
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PIOPS.StorageTypes.html#USER_PIOPS.Autoscaling)
in the I<Amazon RDS User Guide>.

This setting doesn't apply to the following DB instances:

=over

=item *

Amazon Aurora (Storage is managed by the DB cluster.)

=item *

RDS Custom

=back




=head2 MonitoringInterval => Int

The interval, in seconds, between points when Enhanced Monitoring
metrics are collected for the DB instance. To disable collection of
Enhanced Monitoring metrics, specify C<0>.

If C<MonitoringRoleArn> is specified, then you must set
C<MonitoringInterval> to a value other than C<0>.

This setting doesn't apply to RDS Custom DB instances.

Valid Values: C<0 | 1 | 5 | 10 | 15 | 30 | 60>

Default: C<0>



=head2 MonitoringRoleArn => Str

The ARN for the IAM role that permits RDS to send enhanced monitoring
metrics to Amazon CloudWatch Logs. For example,
C<arn:aws:iam:123456789012:role/emaccess>. For information on creating
a monitoring role, see Setting Up and Enabling Enhanced Monitoring
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.OS.html#USER_Monitoring.OS.Enabling)
in the I<Amazon RDS User Guide>.

If C<MonitoringInterval> is set to a value other than C<0>, then you
must supply a C<MonitoringRoleArn> value.

This setting doesn't apply to RDS Custom DB instances.



=head2 MultiAZ => Bool

Specifies whether the DB instance is a Multi-AZ deployment. You can't
set the C<AvailabilityZone> parameter if the DB instance is a Multi-AZ
deployment.

This setting doesn't apply to the following DB instances:

=over

=item *

Amazon Aurora (DB instance Availability Zones (AZs) are managed by the
DB cluster.)

=item *

RDS Custom

=back




=head2 MultiTenant => Bool

Specifies whether to use the multi-tenant configuration or the
single-tenant configuration (default). This parameter only applies to
RDS for Oracle container database (CDB) engines.

Note the following restrictions:

=over

=item *

The DB engine that you specify in the request must support the
multi-tenant configuration. If you attempt to enable the multi-tenant
configuration on a DB engine that doesn't support it, the request
fails.

=item *

If you specify the multi-tenant configuration when you create your DB
instance, you can't later modify this DB instance to use the
single-tenant configuration.

=back




=head2 NcharCharacterSetName => Str

The name of the NCHAR character set for the Oracle DB instance.

This setting doesn't apply to RDS Custom DB instances.



=head2 NetworkType => Str

The network type of the DB instance.

The network type is determined by the C<DBSubnetGroup> specified for
the DB instance. A C<DBSubnetGroup> can support only the IPv4 protocol
or the IPv4 and the IPv6 protocols (C<DUAL>).

For more information, see Working with a DB instance in a VPC
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_VPC.WorkingWithRDSInstanceinaVPC.html)
in the I<Amazon RDS User Guide.>

Valid Values: C<IPV4 | DUAL>



=head2 OptionGroupName => Str

The option group to associate the DB instance with.

Permanent options, such as the TDE option for Oracle Advanced Security
TDE, can't be removed from an option group. Also, that option group
can't be removed from a DB instance after it is associated with a DB
instance.

This setting doesn't apply to Amazon Aurora or RDS Custom DB instances.



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



=head2 Port => Int

The port number on which the database accepts connections.

This setting doesn't apply to Aurora DB instances. The port number is
managed by the cluster.

Valid Values: C<1150-65535>

Default:

=over

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




=head2 PreferredBackupWindow => Str

The daily time range during which automated backups are created if
automated backups are enabled, using the C<BackupRetentionPeriod>
parameter. The default is a 30-minute window selected at random from an
8-hour block of time for each Amazon Web Services Region. For more
information, see Backup window
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_WorkingWithAutomatedBackups.html#USER_WorkingWithAutomatedBackups.BackupWindow)
in the I<Amazon RDS User Guide>.

This setting doesn't apply to Amazon Aurora DB instances. The daily
time range for creating automated backups is managed by the DB cluster.

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

The time range each week during which system maintenance can occur. For
more information, see Amazon RDS Maintenance Window
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Maintenance.html#Concepts.DBMaintenance)
in the I<Amazon RDS User Guide.>

The default is a 30-minute window selected at random from an 8-hour
block of time for each Amazon Web Services Region, occurring on a
random day of the week.

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

This setting doesn't apply to Amazon Aurora or RDS Custom DB instances.



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
is not permitted if the security group assigned to the DB instance
doesn't permit it.

When the DB instance isn't publicly accessible, it is an internal DB
instance with a DNS name that resolves to a private IP address.

Default: The default behavior varies depending on whether
C<DBSubnetGroupName> is specified.

If C<DBSubnetGroupName> isn't specified, and C<PubliclyAccessible>
isn't specified, the following applies:

=over

=item *

If the default VPC in the target Region doesnE<rsquo>t have an internet
gateway attached to it, the DB instance is private.

=item *

If the default VPC in the target Region has an internet gateway
attached to it, the DB instance is public.

=back

If C<DBSubnetGroupName> is specified, and C<PubliclyAccessible> isn't
specified, the following applies:

=over

=item *

If the subnets are part of a VPC that doesnE<rsquo>t have an internet
gateway attached to it, the DB instance is private.

=item *

If the subnets are part of a VPC that has an internet gateway attached
to it, the DB instance is public.

=back




=head2 StorageEncrypted => Bool

Specifes whether the DB instance is encrypted. By default, it isn't
encrypted.

For RDS Custom DB instances, either enable this setting or leave it
unset. Otherwise, Amazon RDS reports an error.

This setting doesn't apply to Amazon Aurora DB instances. The
encryption for DB instances is managed by the DB cluster.



=head2 StorageThroughput => Int

The storage throughput value, in mebibyte per second (MiBps), for the
DB instance.

This setting applies only to the C<gp3> storage type.

This setting doesn't apply to Amazon Aurora or RDS Custom DB instances.



=head2 StorageType => Str

The storage type to associate with the DB instance.

If you specify C<io1>, C<io2>, or C<gp3>, you must also include a value
for the C<Iops> parameter.

This setting doesn't apply to Amazon Aurora DB instances. Storage is
managed by the DB cluster.

Valid Values: C<gp2 | gp3 | io1 | io2 | standard>

Default: C<io1>, if the C<Iops> parameter is specified. Otherwise,
C<gp3>.



=head2 Tags => ArrayRef[L<Paws::RDS::Tag>]

Tags to assign to the DB instance.



=head2 TdeCredentialArn => Str

The ARN from the key store with which to associate the instance for TDE
encryption.

This setting doesn't apply to Amazon Aurora or RDS Custom DB instances.



=head2 TdeCredentialPassword => Str

The password for the given ARN from the key store in order to access
the device.

This setting doesn't apply to RDS Custom DB instances.



=head2 Timezone => Str

The time zone of the DB instance. The time zone parameter is currently
supported only by RDS for Db2
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/db2-time-zone)
and RDS for SQL Server
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_SQLServer.html#SQLServer.Concepts.General.TimeZone).



=head2 VpcSecurityGroupIds => ArrayRef[Str|Undef]

A list of Amazon EC2 VPC security groups to associate with this DB
instance.

This setting doesn't apply to Amazon Aurora DB instances. The
associated list of EC2 VPC security groups is managed by the DB
cluster.

Default: The default EC2 VPC security group for the DB subnet group's
VPC.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDBInstance in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

