
package Paws::RDS::CreateDBInstanceReadReplica;
  use Moose;
  has AllocatedStorage => (is => 'ro', isa => 'Int');
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Bool');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has CACertificateIdentifier => (is => 'ro', isa => 'Str');
  has CopyTagsToSnapshot => (is => 'ro', isa => 'Bool');
  has CustomIamInstanceProfile => (is => 'ro', isa => 'Str');
  has DatabaseInsightsMode => (is => 'ro', isa => 'Str');
  has DBInstanceClass => (is => 'ro', isa => 'Str');
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DBParameterGroupName => (is => 'ro', isa => 'Str');
  has DBSubnetGroupName => (is => 'ro', isa => 'Str');
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
  has Iops => (is => 'ro', isa => 'Int');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has MaxAllocatedStorage => (is => 'ro', isa => 'Int');
  has MonitoringInterval => (is => 'ro', isa => 'Int');
  has MonitoringRoleArn => (is => 'ro', isa => 'Str');
  has MultiAZ => (is => 'ro', isa => 'Bool');
  has NetworkType => (is => 'ro', isa => 'Str');
  has OptionGroupName => (is => 'ro', isa => 'Str');
  has PerformanceInsightsKMSKeyId => (is => 'ro', isa => 'Str');
  has PerformanceInsightsRetentionPeriod => (is => 'ro', isa => 'Int');
  has Port => (is => 'ro', isa => 'Int');
  has PreSignedUrl => (is => 'ro', isa => 'Str');
  has ProcessorFeatures => (is => 'ro', isa => 'ArrayRef[Paws::RDS::ProcessorFeature]');
  has PubliclyAccessible => (is => 'ro', isa => 'Bool');
  has ReplicaMode => (is => 'ro', isa => 'Str');
  has SourceDBClusterIdentifier => (is => 'ro', isa => 'Str');
  has SourceDBInstanceIdentifier => (is => 'ro', isa => 'Str');
  has StorageThroughput => (is => 'ro', isa => 'Int');
  has StorageType => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Tag]');
  has UpgradeStorageConfig => (is => 'ro', isa => 'Bool');
  has UseDefaultProcessorFeatures => (is => 'ro', isa => 'Bool');
  has VpcSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDBInstanceReadReplica');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::CreateDBInstanceReadReplicaResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateDBInstanceReadReplicaResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::CreateDBInstanceReadReplica - Arguments for method CreateDBInstanceReadReplica on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDBInstanceReadReplica on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method CreateDBInstanceReadReplica.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDBInstanceReadReplica.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    # To create a DB instance read replica.
    # This example creates a DB instance read replica.
    my $CreateDBInstanceReadReplicaResult = $rds->CreateDBInstanceReadReplica(
      'AvailabilityZone'           => 'us-east-1a',
      'CopyTagsToSnapshot'         => 1,
      'DBInstanceClass'            => 'db.t2.micro',
      'DBInstanceIdentifier'       => 'mydbreadreplica',
      'PubliclyAccessible'         => 1,
      'SourceDBInstanceIdentifier' => 'mymysqlinstance',
      'StorageType'                => 'gp2',
      'Tags'                       => [

        {
          'Key'   => 'mydbreadreplicakey',
          'Value' => 'mydbreadreplicavalue'
        }
      ]
    );

    # Results:
    my $DBInstance = $CreateDBInstanceReadReplicaResult->DBInstance;

    # Returns a L<Paws::RDS::CreateDBInstanceReadReplicaResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/CreateDBInstanceReadReplica>

=head1 ATTRIBUTES


=head2 AllocatedStorage => Int

The amount of storage (in gibibytes) to allocate initially for the read
replica. Follow the allocation rules specified in C<CreateDBInstance>.

This setting isn't valid for RDS for SQL Server.

Be sure to allocate enough storage for your read replica so that the
create operation can succeed. You can also allocate additional storage
for future growth.



=head2 AutoMinorVersionUpgrade => Bool

Specifies whether to automatically apply minor engine upgrades to the
read replica during the maintenance window.

This setting doesn't apply to RDS Custom DB instances.

Default: Inherits the value from the source DB instance.

For more information about automatic minor version upgrades, see
Automatically upgrading the minor engine version
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Upgrading.html#USER_UpgradeDBInstance.Upgrading.AutoMinorVersionUpgrades).



=head2 AvailabilityZone => Str

The Availability Zone (AZ) where the read replica will be created.

Default: A random, system-chosen Availability Zone in the endpoint's
Amazon Web Services Region.

Example: C<us-east-1d>



=head2 CACertificateIdentifier => Str

The CA certificate identifier to use for the read replica's server
certificate.

This setting doesn't apply to RDS Custom DB instances.

For more information, see Using SSL/TLS to encrypt a connection to a DB
instance
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.SSL.html)
in the I<Amazon RDS User Guide> and Using SSL/TLS to encrypt a
connection to a DB cluster
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.SSL.html)
in the I<Amazon Aurora User Guide>.



=head2 CopyTagsToSnapshot => Bool

Specifies whether to copy all tags from the read replica to snapshots
of the read replica. By default, tags aren't copied.



=head2 CustomIamInstanceProfile => Str

The instance profile associated with the underlying Amazon EC2 instance
of an RDS Custom DB instance. The instance profile must meet the
following requirements:

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

This setting is required for RDS Custom DB instances.



=head2 DatabaseInsightsMode => Str

The mode of Database Insights to enable for the read replica.

This setting isn't supported.

Valid values are: C<"standard">, C<"advanced">

=head2 DBInstanceClass => Str

The compute and memory capacity of the read replica, for example
db.m4.large. Not all DB instance classes are available in all Amazon
Web Services Regions, or for all database engines. For the full list of
DB instance classes, and availability for your engine, see DB Instance
Class
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html)
in the I<Amazon RDS User Guide>.

Default: Inherits the value from the source DB instance.



=head2 B<REQUIRED> DBInstanceIdentifier => Str

The DB instance identifier of the read replica. This identifier is the
unique key that identifies a DB instance. This parameter is stored as a
lowercase string.



=head2 DBParameterGroupName => Str

The name of the DB parameter group to associate with this read replica
DB instance.

For Single-AZ or Multi-AZ DB instance read replica instances, if you
don't specify a value for C<DBParameterGroupName>, then Amazon RDS uses
the C<DBParameterGroup> of the source DB instance for a same Region
read replica, or the default C<DBParameterGroup> for the specified DB
engine for a cross-Region read replica.

For Multi-AZ DB cluster same Region read replica instances, if you
don't specify a value for C<DBParameterGroupName>, then Amazon RDS uses
the default C<DBParameterGroup>.

Specifying a parameter group for this operation is only supported for
MySQL DB instances for cross-Region read replicas, for Multi-AZ DB
cluster read replica instances, and for Oracle DB instances. It isn't
supported for MySQL DB instances for same Region read replicas or for
RDS Custom.

Constraints:

=over

=item *

Must be 1 to 255 letters, numbers, or hyphens.

=item *

First character must be a letter.

=item *

Can't end with a hyphen or contain two consecutive hyphens.

=back




=head2 DBSubnetGroupName => Str

A DB subnet group for the DB instance. The new DB instance is created
in the VPC associated with the DB subnet group. If no DB subnet group
is specified, then the new DB instance isn't created in a VPC.

Constraints:

=over

=item *

If supplied, must match the name of an existing DB subnet group.

=item *

The specified DB subnet group must be in the same Amazon Web Services
Region in which the operation is running.

=item *

All read replicas in one Amazon Web Services Region that are created
from the same source DB instance must either:

=over

=item *

Specify DB subnet groups from the same VPC. All these read replicas are
created in the same VPC.

=item *

Not specify a DB subnet group. All these read replicas are created
outside of any VPC.

=back

=back

Example: C<mydbsubnetgroup>



=head2 DedicatedLogVolume => Bool

Indicates whether the DB instance has a dedicated log volume (DLV)
enabled.



=head2 DeletionProtection => Bool

Specifies whether to enable deletion protection for the DB instance.
The database can't be deleted when deletion protection is enabled. By
default, deletion protection isn't enabled. For more information, see
Deleting a DB Instance
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html).



=head2 Domain => Str

The Active Directory directory ID to create the DB instance in.
Currently, only MySQL, Microsoft SQL Server, Oracle, and PostgreSQL DB
instances can be created in an Active Directory Domain.

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



=head2 EnableCloudwatchLogsExports => ArrayRef[Str|Undef]

The list of logs that the new DB instance is to export to CloudWatch
Logs. The values in the list depend on the DB engine being used. For
more information, see Publishing Database Logs to Amazon CloudWatch
Logs
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch)
in the I<Amazon RDS User Guide>.

This setting doesn't apply to RDS Custom DB instances.



=head2 EnableCustomerOwnedIp => Bool

Specifies whether to enable a customer-owned IP address (CoIP) for an
RDS on Outposts read replica.

A I<CoIP> provides local or external connectivity to resources in your
Outpost subnets through your on-premises network. For some use cases, a
CoIP can provide lower latency for connections to the read replica from
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

For more information about IAM database authentication, see IAM
Database Authentication for MySQL and PostgreSQL
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAMDBAuth.html)
in the I<Amazon RDS User Guide>.

This setting doesn't apply to RDS Custom DB instances.



=head2 EnablePerformanceInsights => Bool

Specifies whether to enable Performance Insights for the read replica.

For more information, see Using Amazon Performance Insights
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html)
in the I<Amazon RDS User Guide>.

This setting doesn't apply to RDS Custom DB instances.



=head2 Iops => Int

The amount of Provisioned IOPS (input/output operations per second) to
initially allocate for the DB instance.



=head2 KmsKeyId => Str

The Amazon Web Services KMS key identifier for an encrypted read
replica.

The Amazon Web Services KMS key identifier is the key ARN, key ID,
alias ARN, or alias name for the KMS key.

If you create an encrypted read replica in the same Amazon Web Services
Region as the source DB instance or Multi-AZ DB cluster, don't specify
a value for this parameter. A read replica in the same Amazon Web
Services Region is always encrypted with the same KMS key as the source
DB instance or cluster.

If you create an encrypted read replica in a different Amazon Web
Services Region, then you must specify a KMS key identifier for the
destination Amazon Web Services Region. KMS keys are specific to the
Amazon Web Services Region that they are created in, and you can't use
KMS keys from one Amazon Web Services Region in another Amazon Web
Services Region.

You can't create an encrypted read replica from an unencrypted DB
instance or Multi-AZ DB cluster.

This setting doesn't apply to RDS Custom, which uses the same KMS key
as the primary replica.



=head2 MaxAllocatedStorage => Int

The upper limit in gibibytes (GiB) to which Amazon RDS can
automatically scale the storage of the DB instance.

For more information about this setting, including limitations that
apply to it, see Managing capacity automatically with Amazon RDS
storage autoscaling
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PIOPS.StorageTypes.html#USER_PIOPS.Autoscaling)
in the I<Amazon RDS User Guide>.



=head2 MonitoringInterval => Int

The interval, in seconds, between points when Enhanced Monitoring
metrics are collected for the read replica. To disable collection of
Enhanced Monitoring metrics, specify C<0>. The default is C<0>.

If C<MonitoringRoleArn> is specified, then you must set
C<MonitoringInterval> to a value other than C<0>.

This setting doesn't apply to RDS Custom DB instances.

Valid Values: C<0, 1, 5, 10, 15, 30, 60>

Default: C<0>



=head2 MonitoringRoleArn => Str

The ARN for the IAM role that permits RDS to send enhanced monitoring
metrics to Amazon CloudWatch Logs. For example,
C<arn:aws:iam:123456789012:role/emaccess>. For information on creating
a monitoring role, go to To create an IAM role for Amazon RDS Enhanced
Monitoring
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.html#USER_Monitoring.OS.IAMRole)
in the I<Amazon RDS User Guide>.

If C<MonitoringInterval> is set to a value other than 0, then you must
supply a C<MonitoringRoleArn> value.

This setting doesn't apply to RDS Custom DB instances.



=head2 MultiAZ => Bool

Specifies whether the read replica is in a Multi-AZ deployment.

You can create a read replica as a Multi-AZ DB instance. RDS creates a
standby of your replica in another Availability Zone for failover
support for the replica. Creating your read replica as a Multi-AZ DB
instance is independent of whether the source is a Multi-AZ DB instance
or a Multi-AZ DB cluster.

This setting doesn't apply to RDS Custom DB instances.



=head2 NetworkType => Str

The network type of the DB instance.

Valid Values:

=over

=item *

C<IPV4>

=item *

C<DUAL>

=back

The network type is determined by the C<DBSubnetGroup> specified for
read replica. A C<DBSubnetGroup> can support only the IPv4 protocol or
the IPv4 and the IPv6 protocols (C<DUAL>).

For more information, see Working with a DB instance in a VPC
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_VPC.WorkingWithRDSInstanceinaVPC.html)
in the I<Amazon RDS User Guide.>



=head2 OptionGroupName => Str

The option group to associate the DB instance with. If not specified,
RDS uses the option group associated with the source DB instance or
cluster.

For SQL Server, you must use the option group associated with the
source.

This setting doesn't apply to RDS Custom DB instances.



=head2 PerformanceInsightsKMSKeyId => Str

The Amazon Web Services KMS key identifier for encryption of
Performance Insights data.

The Amazon Web Services KMS key identifier is the key ARN, key ID,
alias ARN, or alias name for the KMS key.

If you do not specify a value for C<PerformanceInsightsKMSKeyId>, then
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

The port number that the DB instance uses for connections.

Valid Values: C<1150-65535>

Default: Inherits the value from the source DB instance.



=head2 PreSignedUrl => Str

When you are creating a read replica from one Amazon Web Services
GovCloud (US) Region to another or from one China Amazon Web Services
Region to another, the URL that contains a Signature Version 4 signed
request for the C<CreateDBInstanceReadReplica> API operation in the
source Amazon Web Services Region that contains the source DB instance.

This setting applies only to Amazon Web Services GovCloud (US) Regions
and China Amazon Web Services Regions. It's ignored in other Amazon Web
Services Regions.

This setting applies only when replicating from a source DB
I<instance>. Source DB clusters aren't supported in Amazon Web Services
GovCloud (US) Regions and China Amazon Web Services Regions.

You must specify this parameter when you create an encrypted read
replica from another Amazon Web Services Region by using the Amazon RDS
API. Don't specify C<PreSignedUrl> when you are creating an encrypted
read replica in the same Amazon Web Services Region.

The presigned URL must be a valid request for the
C<CreateDBInstanceReadReplica> API operation that can run in the source
Amazon Web Services Region that contains the encrypted source DB
instance. The presigned URL request must contain the following
parameter values:

=over

=item *

C<DestinationRegion> - The Amazon Web Services Region that the
encrypted read replica is created in. This Amazon Web Services Region
is the same one where the C<CreateDBInstanceReadReplica> operation is
called that contains this presigned URL.

For example, if you create an encrypted DB instance in the us-west-1
Amazon Web Services Region, from a source DB instance in the us-east-2
Amazon Web Services Region, then you call the
C<CreateDBInstanceReadReplica> operation in the us-east-1 Amazon Web
Services Region and provide a presigned URL that contains a call to the
C<CreateDBInstanceReadReplica> operation in the us-west-2 Amazon Web
Services Region. For this example, the C<DestinationRegion> in the
presigned URL must be set to the us-east-1 Amazon Web Services Region.

=item *

C<KmsKeyId> - The KMS key identifier for the key to use to encrypt the
read replica in the destination Amazon Web Services Region. This is the
same identifier for both the C<CreateDBInstanceReadReplica> operation
that is called in the destination Amazon Web Services Region, and the
operation contained in the presigned URL.

=item *

C<SourceDBInstanceIdentifier> - The DB instance identifier for the
encrypted DB instance to be replicated. This identifier must be in the
Amazon Resource Name (ARN) format for the source Amazon Web Services
Region. For example, if you are creating an encrypted read replica from
a DB instance in the us-west-2 Amazon Web Services Region, then your
C<SourceDBInstanceIdentifier> looks like the following example:
C<arn:aws:rds:us-west-2:123456789012:instance:mysql-instance1-20161115>.

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

This setting doesn't apply to RDS Custom DB instances.



=head2 ProcessorFeatures => ArrayRef[L<Paws::RDS::ProcessorFeature>]

The number of CPU cores and the number of threads per core for the DB
instance class of the DB instance.

This setting doesn't apply to RDS Custom DB instances.



=head2 PubliclyAccessible => Bool

Specifies whether the DB instance is publicly accessible.

When the DB cluster is publicly accessible, its Domain Name System
(DNS) endpoint resolves to the private IP address from within the DB
cluster's virtual private cloud (VPC). It resolves to the public IP
address from outside of the DB cluster's VPC. Access to the DB cluster
is ultimately controlled by the security group it uses. That public
access isn't permitted if the security group assigned to the DB cluster
doesn't permit it.

When the DB instance isn't publicly accessible, it is an internal DB
instance with a DNS name that resolves to a private IP address.

For more information, see CreateDBInstance.



=head2 ReplicaMode => Str

The open mode of the replica database: mounted or read-only.

This parameter is only supported for Oracle DB instances.

Mounted DB replicas are included in Oracle Database Enterprise Edition.
The main use case for mounted replicas is cross-Region disaster
recovery. The primary database doesn't use Active Data Guard to
transmit information to the mounted replica. Because it doesn't accept
user connections, a mounted replica can't serve a read-only workload.

You can create a combination of mounted and read-only DB replicas for
the same primary DB instance. For more information, see Working with
Oracle Read Replicas for Amazon RDS
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/oracle-read-replicas.html)
in the I<Amazon RDS User Guide>.

For RDS Custom, you must specify this parameter and set it to
C<mounted>. The value won't be set by default. After replica creation,
you can manage the open mode manually.

Valid values are: C<"open-read-only">, C<"mounted">

=head2 SourceDBClusterIdentifier => Str

The identifier of the Multi-AZ DB cluster that will act as the source
for the read replica. Each DB cluster can have up to 15 read replicas.

Constraints:

=over

=item *

Must be the identifier of an existing Multi-AZ DB cluster.

=item *

Can't be specified if the C<SourceDBInstanceIdentifier> parameter is
also specified.

=item *

The specified DB cluster must have automatic backups enabled, that is,
its backup retention period must be greater than 0.

=item *

The source DB cluster must be in the same Amazon Web Services Region as
the read replica. Cross-Region replication isn't supported.

=back




=head2 SourceDBInstanceIdentifier => Str

The identifier of the DB instance that will act as the source for the
read replica. Each DB instance can have up to 15 read replicas, with
the exception of Oracle and SQL Server, which can have up to five.

Constraints:

=over

=item *

Must be the identifier of an existing Db2, MariaDB, MySQL, Oracle,
PostgreSQL, or SQL Server DB instance.

=item *

Can't be specified if the C<SourceDBClusterIdentifier> parameter is
also specified.

=item *

For the limitations of Oracle read replicas, see Version and licensing
considerations for RDS for Oracle replicas
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/oracle-read-replicas.limitations.html#oracle-read-replicas.limitations.versions-and-licenses)
in the I<Amazon RDS User Guide>.

=item *

For the limitations of SQL Server read replicas, see Read replica
limitations with SQL Server
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/SQLServer.ReadReplicas.html#SQLServer.ReadReplicas.Limitations)
in the I<Amazon RDS User Guide>.

=item *

The specified DB instance must have automatic backups enabled, that is,
its backup retention period must be greater than 0.

=item *

If the source DB instance is in the same Amazon Web Services Region as
the read replica, specify a valid DB instance identifier.

=item *

If the source DB instance is in a different Amazon Web Services Region
from the read replica, specify a valid DB instance ARN. For more
information, see Constructing an ARN for Amazon RDS
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing)
in the I<Amazon RDS User Guide>. This doesn't apply to SQL Server or
RDS Custom, which don't support cross-Region replicas.

=back




=head2 StorageThroughput => Int

Specifies the storage throughput value for the read replica.

This setting doesn't apply to RDS Custom or Amazon Aurora DB instances.



=head2 StorageType => Str

The storage type to associate with the read replica.

If you specify C<io1>, C<io2>, or C<gp3>, you must also include a value
for the C<Iops> parameter.

Valid Values: C<gp2 | gp3 | io1 | io2 | standard>

Default: C<io1> if the C<Iops> parameter is specified. Otherwise,
C<gp3>.



=head2 Tags => ArrayRef[L<Paws::RDS::Tag>]





=head2 UpgradeStorageConfig => Bool

Whether to upgrade the storage file system configuration on the read
replica. This option migrates the read replica from the old storage
file system layout to the preferred layout.



=head2 UseDefaultProcessorFeatures => Bool

Specifies whether the DB instance class of the DB instance uses its
default processor features.

This setting doesn't apply to RDS Custom DB instances.



=head2 VpcSecurityGroupIds => ArrayRef[Str|Undef]

A list of Amazon EC2 VPC security groups to associate with the read
replica.

This setting doesn't apply to RDS Custom DB instances.

Default: The default EC2 VPC security group for the DB subnet group's
VPC.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDBInstanceReadReplica in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

