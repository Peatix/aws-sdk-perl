
package Paws::RDS::RestoreDBInstanceToPointInTime;
  use Moose;
  has AllocatedStorage => (is => 'ro', isa => 'Int');
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Bool');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has BackupTarget => (is => 'ro', isa => 'Str');
  has CACertificateIdentifier => (is => 'ro', isa => 'Str');
  has CopyTagsToSnapshot => (is => 'ro', isa => 'Bool');
  has CustomIamInstanceProfile => (is => 'ro', isa => 'Str');
  has DBInstanceClass => (is => 'ro', isa => 'Str');
  has DBName => (is => 'ro', isa => 'Str');
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
  has Engine => (is => 'ro', isa => 'Str');
  has EngineLifecycleSupport => (is => 'ro', isa => 'Str');
  has Iops => (is => 'ro', isa => 'Int');
  has LicenseModel => (is => 'ro', isa => 'Str');
  has ManageMasterUserPassword => (is => 'ro', isa => 'Bool');
  has MasterUserSecretKmsKeyId => (is => 'ro', isa => 'Str');
  has MaxAllocatedStorage => (is => 'ro', isa => 'Int');
  has MultiAZ => (is => 'ro', isa => 'Bool');
  has NetworkType => (is => 'ro', isa => 'Str');
  has OptionGroupName => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
  has ProcessorFeatures => (is => 'ro', isa => 'ArrayRef[Paws::RDS::ProcessorFeature]');
  has PubliclyAccessible => (is => 'ro', isa => 'Bool');
  has RestoreTime => (is => 'ro', isa => 'Str');
  has SourceDBInstanceAutomatedBackupsArn => (is => 'ro', isa => 'Str');
  has SourceDBInstanceIdentifier => (is => 'ro', isa => 'Str');
  has SourceDbiResourceId => (is => 'ro', isa => 'Str');
  has StorageThroughput => (is => 'ro', isa => 'Int');
  has StorageType => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Tag]');
  has TargetDBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has TdeCredentialArn => (is => 'ro', isa => 'Str');
  has TdeCredentialPassword => (is => 'ro', isa => 'Str');
  has UseDefaultProcessorFeatures => (is => 'ro', isa => 'Bool');
  has UseLatestRestorableTime => (is => 'ro', isa => 'Bool');
  has VpcSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RestoreDBInstanceToPointInTime');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::RestoreDBInstanceToPointInTimeResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'RestoreDBInstanceToPointInTimeResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::RestoreDBInstanceToPointInTime - Arguments for method RestoreDBInstanceToPointInTime on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RestoreDBInstanceToPointInTime on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method RestoreDBInstanceToPointInTime.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RestoreDBInstanceToPointInTime.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
  # To restore a DB instance to a point in time.
  # The following example restores a DB instance to a new DB instance at a point
  # in time from the source DB instance.
    my $RestoreDBInstanceToPointInTimeResult =
      $rds->RestoreDBInstanceToPointInTime(
      'RestoreTime'                => '2016-09-13T18:45:00Z',
      'SourceDBInstanceIdentifier' => 'mysql-sample',
      'TargetDBInstanceIdentifier' => 'mysql-sample-restored'
      );

    # Results:
    my $DBInstance = $RestoreDBInstanceToPointInTimeResult->DBInstance;

    # Returns a L<Paws::RDS::RestoreDBInstanceToPointInTimeResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/RestoreDBInstanceToPointInTime>

=head1 ATTRIBUTES


=head2 AllocatedStorage => Int

The amount of storage (in gibibytes) to allocate initially for the DB
instance. Follow the allocation rules specified in C<CreateDBInstance>.

This setting isn't valid for RDS for SQL Server.

Be sure to allocate enough storage for your new DB instance so that the
restore operation can succeed. You can also allocate additional storage
for future growth.



=head2 AutoMinorVersionUpgrade => Bool

Specifies whether minor version upgrades are applied automatically to
the DB instance during the maintenance window.

This setting doesn't apply to RDS Custom.

For more information about automatic minor version upgrades, see
Automatically upgrading the minor engine version
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Upgrading.html#USER_UpgradeDBInstance.Upgrading.AutoMinorVersionUpgrades).



=head2 AvailabilityZone => Str

The Availability Zone (AZ) where the DB instance will be created.

Default: A random, system-chosen Availability Zone.

Constraints:

=over

=item *

You can't specify the C<AvailabilityZone> parameter if the DB instance
is a Multi-AZ deployment.

=back

Example: C<us-east-1a>



=head2 BackupTarget => Str

The location for storing automated backups and manual snapshots for the
restored DB instance.

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



=head2 CopyTagsToSnapshot => Bool

Specifies whether to copy all tags from the restored DB instance to
snapshots of the DB instance. By default, tags are not copied.



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

This setting is required for RDS Custom.



=head2 DBInstanceClass => Str

The compute and memory capacity of the Amazon RDS DB instance, for
example db.m4.large. Not all DB instance classes are available in all
Amazon Web Services Regions, or for all database engines. For the full
list of DB instance classes, and availability for your engine, see DB
Instance Class
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html)
in the I<Amazon RDS User Guide>.

Default: The same DB instance class as the original DB instance.



=head2 DBName => Str

The database name for the restored DB instance.

This parameter doesn't apply to the following DB instances:

=over

=item *

RDS Custom

=item *

RDS for Db2

=item *

RDS for MariaDB

=item *

RDS for MySQL

=back




=head2 DBParameterGroupName => Str

The name of the DB parameter group to associate with this DB instance.

If you do not specify a value for C<DBParameterGroupName>, then the
default C<DBParameterGroup> for the specified DB engine is used.

This setting doesn't apply to RDS Custom.

Constraints:

=over

=item *

If supplied, must match the name of an existing DB parameter group.

=item *

Must be 1 to 255 letters, numbers, or hyphens.

=item *

First character must be a letter.

=item *

Can't end with a hyphen or contain two consecutive hyphens.

=back




=head2 DBSubnetGroupName => Str

The DB subnet group name to use for the new instance.

Constraints:

=over

=item *

If supplied, must match the name of an existing DB subnet group.

=back

Example: C<mydbsubnetgroup>



=head2 DedicatedLogVolume => Bool

Specifies whether to enable a dedicated log volume (DLV) for the DB
instance.



=head2 DeletionProtection => Bool

Specifies whether the DB instance has deletion protection enabled. The
database can't be deleted when deletion protection is enabled. By
default, deletion protection isn't enabled. For more information, see
Deleting a DB Instance
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html).



=head2 Domain => Str

The Active Directory directory ID to restore the DB instance in. Create
the domain before running this command. Currently, you can create only
the MySQL, Microsoft SQL Server, Oracle, and PostgreSQL DB instances in
an Active Directory Domain.

This setting doesn't apply to RDS Custom.

For more information, see Kerberos Authentication
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/kerberos-authentication.html)
in the I<Amazon RDS User Guide>.



=head2 DomainAuthSecretArn => Str

The ARN for the Secrets Manager secret with the credentials for the
user joining the domain.

Constraints:

=over

=item *

Can't be longer than 64 characters.

=back

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

The list of logs that the restored DB instance is to export to
CloudWatch Logs. The values in the list depend on the DB engine being
used. For more information, see Publishing Database Logs to Amazon
CloudWatch Logs
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch)
in the I<Amazon RDS User Guide>.

This setting doesn't apply to RDS Custom.



=head2 EnableCustomerOwnedIp => Bool

Specifies whether to enable a customer-owned IP address (CoIP) for an
RDS on Outposts DB instance.

A I<CoIP> provides local or external connectivity to resources in your
Outpost subnets through your on-premises network. For some use cases, a
CoIP can provide lower latency for connections to the DB instance from
outside of its virtual private cloud (VPC) on your local network.

This setting doesn't apply to RDS Custom.

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

This setting doesn't apply to RDS Custom.

For more information about IAM database authentication, see IAM
Database Authentication for MySQL and PostgreSQL
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAMDBAuth.html)
in the I<Amazon RDS User Guide.>



=head2 Engine => Str

The database engine to use for the new instance.

This setting doesn't apply to RDS Custom.

Valid Values:

=over

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

Default: The same as source

Constraints:

=over

=item *

Must be compatible with the engine of the source.

=back




=head2 EngineLifecycleSupport => Str

The life cycle type for this DB instance.

By default, this value is set to C<open-source-rds-extended-support>,
which enrolls your DB instance into Amazon RDS Extended Support. At the
end of standard support, you can avoid charges for Extended Support by
setting the value to C<open-source-rds-extended-support-disabled>. In
this case, RDS automatically upgrades your restored DB instance to a
higher engine version, if the major engine version is past its end of
standard support date.

You can use this setting to enroll your DB instance into Amazon RDS
Extended Support. With RDS Extended Support, you can run the selected
major engine version on your DB instance past the end of standard
support for that engine version. For more information, see Using Amazon
RDS Extended Support
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/extended-support.html)
in the I<Amazon RDS User Guide>.

This setting applies only to RDS for MySQL and RDS for PostgreSQL. For
Amazon Aurora DB instances, the life cycle type is managed by the DB
cluster.

Valid Values: C<open-source-rds-extended-support |
open-source-rds-extended-support-disabled>

Default: C<open-source-rds-extended-support>



=head2 Iops => Int

The amount of Provisioned IOPS (input/output operations per second) to
initially allocate for the DB instance.

This setting doesn't apply to SQL Server.

Constraints:

=over

=item *

Must be an integer greater than 1000.

=back




=head2 LicenseModel => Str

The license model information for the restored DB instance.

License models for RDS for Db2 require additional configuration. The
Bring Your Own License (BYOL) model requires a custom parameter group
and an Amazon Web Services License Manager self-managed license. The
Db2 license through Amazon Web Services Marketplace model requires an
Amazon Web Services Marketplace subscription. For more information, see
Amazon RDS for Db2 licensing options
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/db2-licensing.html)
in the I<Amazon RDS User Guide>.

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

Default: Same as the source.



=head2 ManageMasterUserPassword => Bool

Specifies whether to manage the master user password with Amazon Web
Services Secrets Manager in the restored DB instance.

For more information, see Password management with Amazon Web Services
Secrets Manager
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-secrets-manager.html)
in the I<Amazon RDS User Guide>.

Constraints:

=over

=item *

Applies to RDS for Oracle only.

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

This setting doesn't apply to RDS Custom.



=head2 MultiAZ => Bool

Secifies whether the DB instance is a Multi-AZ deployment.

This setting doesn't apply to RDS Custom.

Constraints:

=over

=item *

You can't specify the C<AvailabilityZone> parameter if the DB instance
is a Multi-AZ deployment.

=back




=head2 NetworkType => Str

The network type of the DB instance.

The network type is determined by the C<DBSubnetGroup> specified for
the DB instance. A C<DBSubnetGroup> can support only the IPv4 protocol
or the IPv4 and the IPv6 protocols (C<DUAL>).

For more information, see Working with a DB instance in a VPC
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_VPC.WorkingWithRDSInstanceinaVPC.html)
in the I<Amazon RDS User Guide.>

Valid Values:

=over

=item *

C<IPV4>

=item *

C<DUAL>

=back




=head2 OptionGroupName => Str

The name of the option group to use for the restored DB instance.

Permanent options, such as the TDE option for Oracle Advanced Security
TDE, can't be removed from an option group, and that option group can't
be removed from a DB instance after it is associated with a DB instance

This setting doesn't apply to RDS Custom.



=head2 Port => Int

The port number on which the database accepts connections.

Default: The same port as the original DB instance.

Constraints:

=over

=item *

The value must be C<1150-65535>.

=back




=head2 ProcessorFeatures => ArrayRef[L<Paws::RDS::ProcessorFeature>]

The number of CPU cores and the number of threads per core for the DB
instance class of the DB instance.

This setting doesn't apply to RDS Custom.



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



=head2 RestoreTime => Str

The date and time to restore from.

Constraints:

=over

=item *

Must be a time in Universal Coordinated Time (UTC) format.

=item *

Must be before the latest restorable time for the DB instance.

=item *

Can't be specified if the C<UseLatestRestorableTime> parameter is
enabled.

=back

Example: C<2009-09-07T23:45:00Z>



=head2 SourceDBInstanceAutomatedBackupsArn => Str

The Amazon Resource Name (ARN) of the replicated automated backups from
which to restore, for example,
C<arn:aws:rds:us-east-1:123456789012:auto-backup:ab-L2IJCEXJP7XQ7HOJ4SIEXAMPLE>.

This setting doesn't apply to RDS Custom.



=head2 SourceDBInstanceIdentifier => Str

The identifier of the source DB instance from which to restore.

Constraints:

=over

=item *

Must match the identifier of an existing DB instance.

=back




=head2 SourceDbiResourceId => Str

The resource ID of the source DB instance from which to restore.



=head2 StorageThroughput => Int

The storage throughput value for the DB instance.

This setting doesn't apply to RDS Custom or Amazon Aurora.



=head2 StorageType => Str

The storage type to associate with the DB instance.

Valid Values: C<gp2 | gp3 | io1 | io2 | standard>

Default: C<io1>, if the C<Iops> parameter is specified. Otherwise,
C<gp3>.

Constraints:

=over

=item *

If you specify C<io1>, C<io2>, or C<gp3>, you must also include a value
for the C<Iops> parameter.

=back




=head2 Tags => ArrayRef[L<Paws::RDS::Tag>]





=head2 B<REQUIRED> TargetDBInstanceIdentifier => Str

The name of the new DB instance to create.

Constraints:

=over

=item *

Must contain from 1 to 63 letters, numbers, or hyphens.

=item *

First character must be a letter.

=item *

Can't end with a hyphen or contain two consecutive hyphens.

=back




=head2 TdeCredentialArn => Str

The ARN from the key store with which to associate the instance for TDE
encryption.

This setting doesn't apply to RDS Custom.



=head2 TdeCredentialPassword => Str

The password for the given ARN from the key store in order to access
the device.

This setting doesn't apply to RDS Custom.



=head2 UseDefaultProcessorFeatures => Bool

Specifies whether the DB instance class of the DB instance uses its
default processor features.

This setting doesn't apply to RDS Custom.



=head2 UseLatestRestorableTime => Bool

Specifies whether the DB instance is restored from the latest backup
time. By default, the DB instance isn't restored from the latest backup
time.

Constraints:

=over

=item *

Can't be specified if the C<RestoreTime> parameter is provided.

=back




=head2 VpcSecurityGroupIds => ArrayRef[Str|Undef]

A list of EC2 VPC security groups to associate with this DB instance.

Default: The default EC2 VPC security group for the DB subnet group's
VPC.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RestoreDBInstanceToPointInTime in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

