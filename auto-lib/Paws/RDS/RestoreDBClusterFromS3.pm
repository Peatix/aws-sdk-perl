
package Paws::RDS::RestoreDBClusterFromS3;
  use Moose;
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has BacktrackWindow => (is => 'ro', isa => 'Int');
  has BackupRetentionPeriod => (is => 'ro', isa => 'Int');
  has CharacterSetName => (is => 'ro', isa => 'Str');
  has CopyTagsToSnapshot => (is => 'ro', isa => 'Bool');
  has DatabaseName => (is => 'ro', isa => 'Str');
  has DBClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DBClusterParameterGroupName => (is => 'ro', isa => 'Str');
  has DBSubnetGroupName => (is => 'ro', isa => 'Str');
  has DeletionProtection => (is => 'ro', isa => 'Bool');
  has Domain => (is => 'ro', isa => 'Str');
  has DomainIAMRoleName => (is => 'ro', isa => 'Str');
  has EnableCloudwatchLogsExports => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has EnableIAMDatabaseAuthentication => (is => 'ro', isa => 'Bool');
  has Engine => (is => 'ro', isa => 'Str', required => 1);
  has EngineLifecycleSupport => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has ManageMasterUserPassword => (is => 'ro', isa => 'Bool');
  has MasterUsername => (is => 'ro', isa => 'Str', required => 1);
  has MasterUserPassword => (is => 'ro', isa => 'Str');
  has MasterUserSecretKmsKeyId => (is => 'ro', isa => 'Str');
  has NetworkType => (is => 'ro', isa => 'Str');
  has OptionGroupName => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
  has PreferredBackupWindow => (is => 'ro', isa => 'Str');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has S3BucketName => (is => 'ro', isa => 'Str', required => 1);
  has S3IngestionRoleArn => (is => 'ro', isa => 'Str', required => 1);
  has S3Prefix => (is => 'ro', isa => 'Str');
  has ServerlessV2ScalingConfiguration => (is => 'ro', isa => 'Paws::RDS::ServerlessV2ScalingConfiguration');
  has SourceEngine => (is => 'ro', isa => 'Str', required => 1);
  has SourceEngineVersion => (is => 'ro', isa => 'Str', required => 1);
  has StorageEncrypted => (is => 'ro', isa => 'Bool');
  has StorageType => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Tag]');
  has VpcSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RestoreDBClusterFromS3');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::RestoreDBClusterFromS3Result');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'RestoreDBClusterFromS3Result');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::RestoreDBClusterFromS3 - Arguments for method RestoreDBClusterFromS3 on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RestoreDBClusterFromS3 on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method RestoreDBClusterFromS3.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RestoreDBClusterFromS3.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $RestoreDBClusterFromS3Result = $rds->RestoreDBClusterFromS3(
      DBClusterIdentifier              => 'MyString',
      Engine                           => 'MyString',
      MasterUsername                   => 'MyString',
      S3BucketName                     => 'MyString',
      S3IngestionRoleArn               => 'MyString',
      SourceEngine                     => 'MyString',
      SourceEngineVersion              => 'MyString',
      AvailabilityZones                => [ 'MyString', ... ],    # OPTIONAL
      BacktrackWindow                  => 1,                      # OPTIONAL
      BackupRetentionPeriod            => 1,                      # OPTIONAL
      CharacterSetName                 => 'MyString',             # OPTIONAL
      CopyTagsToSnapshot               => 1,                      # OPTIONAL
      DBClusterParameterGroupName      => 'MyString',             # OPTIONAL
      DBSubnetGroupName                => 'MyString',             # OPTIONAL
      DatabaseName                     => 'MyString',             # OPTIONAL
      DeletionProtection               => 1,                      # OPTIONAL
      Domain                           => 'MyString',             # OPTIONAL
      DomainIAMRoleName                => 'MyString',             # OPTIONAL
      EnableCloudwatchLogsExports      => [ 'MyString', ... ],    # OPTIONAL
      EnableIAMDatabaseAuthentication  => 1,                      # OPTIONAL
      EngineLifecycleSupport           => 'MyString',             # OPTIONAL
      EngineVersion                    => 'MyString',             # OPTIONAL
      KmsKeyId                         => 'MyString',             # OPTIONAL
      ManageMasterUserPassword         => 1,                      # OPTIONAL
      MasterUserPassword               => 'MyString',             # OPTIONAL
      MasterUserSecretKmsKeyId         => 'MyString',             # OPTIONAL
      NetworkType                      => 'MyString',             # OPTIONAL
      OptionGroupName                  => 'MyString',             # OPTIONAL
      Port                             => 1,                      # OPTIONAL
      PreferredBackupWindow            => 'MyString',             # OPTIONAL
      PreferredMaintenanceWindow       => 'MyString',             # OPTIONAL
      S3Prefix                         => 'MyString',             # OPTIONAL
      ServerlessV2ScalingConfiguration => {
        MaxCapacity           => 1,                               # OPTIONAL
        MinCapacity           => 1,                               # OPTIONAL
        SecondsUntilAutoPause => 1,
      },    # OPTIONAL
      StorageEncrypted => 1,             # OPTIONAL
      StorageType      => 'MyString',    # OPTIONAL
      Tags             => [
        {
          Key   => 'MyString',
          Value => 'MyString',
        },
        ...
      ],                                 # OPTIONAL
      VpcSecurityGroupIds => [ 'MyString', ... ],    # OPTIONAL
    );

    # Results:
    my $DBCluster = $RestoreDBClusterFromS3Result->DBCluster;

    # Returns a L<Paws::RDS::RestoreDBClusterFromS3Result> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/RestoreDBClusterFromS3>

=head1 ATTRIBUTES


=head2 AvailabilityZones => ArrayRef[Str|Undef]

A list of Availability Zones (AZs) where instances in the restored DB
cluster can be created.



=head2 BacktrackWindow => Int

The target backtrack window, in seconds. To disable backtracking, set
this value to 0.

Currently, Backtrack is only supported for Aurora MySQL DB clusters.

Default: 0

Constraints:

=over

=item *

If specified, this value must be set to a number from 0 to 259,200 (72
hours).

=back




=head2 BackupRetentionPeriod => Int

The number of days for which automated backups of the restored DB
cluster are retained. You must specify a minimum value of 1.

Default: 1

Constraints:

=over

=item *

Must be a value from 1 to 35

=back




=head2 CharacterSetName => Str

A value that indicates that the restored DB cluster should be
associated with the specified CharacterSet.



=head2 CopyTagsToSnapshot => Bool

Specifies whether to copy all tags from the restored DB cluster to
snapshots of the restored DB cluster. The default is not to copy them.



=head2 DatabaseName => Str

The database name for the restored DB cluster.



=head2 B<REQUIRED> DBClusterIdentifier => Str

The name of the DB cluster to create from the source data in the Amazon
S3 bucket. This parameter isn't case-sensitive.

Constraints:

=over

=item *

Must contain from 1 to 63 letters, numbers, or hyphens.

=item *

First character must be a letter.

=item *

Can't end with a hyphen or contain two consecutive hyphens.

=back

Example: C<my-cluster1>



=head2 DBClusterParameterGroupName => Str

The name of the DB cluster parameter group to associate with the
restored DB cluster. If this argument is omitted, the default parameter
group for the engine version is used.

Constraints:

=over

=item *

If supplied, must match the name of an existing
DBClusterParameterGroup.

=back




=head2 DBSubnetGroupName => Str

A DB subnet group to associate with the restored DB cluster.

Constraints: If supplied, must match the name of an existing
DBSubnetGroup.

Example: C<mydbsubnetgroup>



=head2 DeletionProtection => Bool

Specifies whether to enable deletion protection for the DB cluster. The
database can't be deleted when deletion protection is enabled. By
default, deletion protection isn't enabled.



=head2 Domain => Str

Specify the Active Directory directory ID to restore the DB cluster in.
The domain must be created prior to this operation.

For Amazon Aurora DB clusters, Amazon RDS can use Kerberos
Authentication to authenticate users that connect to the DB cluster.
For more information, see Kerberos Authentication
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/kerberos-authentication.html)
in the I<Amazon Aurora User Guide>.



=head2 DomainIAMRoleName => Str

Specify the name of the IAM role to be used when making API calls to
the Directory Service.



=head2 EnableCloudwatchLogsExports => ArrayRef[Str|Undef]

The list of logs that the restored DB cluster is to export to
CloudWatch Logs. The values in the list depend on the DB engine being
used.

B<Aurora MySQL>

Possible values are C<audit>, C<error>, C<general>, C<instance>,
C<slowquery>, and C<iam-db-auth-error>.

B<Aurora PostgreSQL>

Possible value are C<instance>, C<postgresql>, and
C<iam-db-auth-error>.

For more information about exporting CloudWatch Logs for Amazon RDS,
see Publishing Database Logs to Amazon CloudWatch Logs
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch)
in the I<Amazon RDS User Guide>.

For more information about exporting CloudWatch Logs for Amazon Aurora,
see Publishing Database Logs to Amazon CloudWatch Logs
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch)
in the I<Amazon Aurora User Guide>.



=head2 EnableIAMDatabaseAuthentication => Bool

Specifies whether to enable mapping of Amazon Web Services Identity and
Access Management (IAM) accounts to database accounts. By default,
mapping isn't enabled.

For more information, see IAM Database Authentication
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.IAMDBAuth.html)
in the I<Amazon Aurora User Guide>.



=head2 B<REQUIRED> Engine => Str

The name of the database engine to be used for this DB cluster.

Valid Values: C<aurora-mysql> (for Aurora MySQL)



=head2 EngineLifecycleSupport => Str

The life cycle type for this DB cluster.

By default, this value is set to C<open-source-rds-extended-support>,
which enrolls your DB cluster into Amazon RDS Extended Support. At the
end of standard support, you can avoid charges for Extended Support by
setting the value to C<open-source-rds-extended-support-disabled>. In
this case, RDS automatically upgrades your restored DB cluster to a
higher engine version, if the major engine version is past its end of
standard support date.

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



=head2 EngineVersion => Str

The version number of the database engine to use.

To list all of the available engine versions for C<aurora-mysql>
(Aurora MySQL), use the following command:

C<aws rds describe-db-engine-versions --engine aurora-mysql --query
"DBEngineVersions[].EngineVersion">

B<Aurora MySQL>

Examples: C<5.7.mysql_aurora.2.12.0>, C<8.0.mysql_aurora.3.04.0>



=head2 KmsKeyId => Str

The Amazon Web Services KMS key identifier for an encrypted DB cluster.

The Amazon Web Services KMS key identifier is the key ARN, key ID,
alias ARN, or alias name for the KMS key. To use a KMS key in a
different Amazon Web Services account, specify the key ARN or alias
ARN.

If the StorageEncrypted parameter is enabled, and you do not specify a
value for the C<KmsKeyId> parameter, then Amazon RDS will use your
default KMS key. There is a default KMS key for your Amazon Web
Services account. Your Amazon Web Services account has a different
default KMS key for each Amazon Web Services Region.



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

Constraints:

=over

=item *

Can't manage the master user password with Amazon Web Services Secrets
Manager if C<MasterUserPassword> is specified.

=back




=head2 B<REQUIRED> MasterUsername => Str

The name of the master user for the restored DB cluster.

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

The password for the master database user. This password can contain
any printable ASCII character except "/", """, or "@".

Constraints:

=over

=item *

Must contain from 8 to 41 characters.

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



=head2 NetworkType => Str

The network type of the DB cluster.

Valid Values:

=over

=item *

C<IPV4>

=item *

C<DUAL>

=back

The network type is determined by the C<DBSubnetGroup> specified for
the DB cluster. A C<DBSubnetGroup> can support only the IPv4 protocol
or the IPv4 and the IPv6 protocols (C<DUAL>).

For more information, see Working with a DB instance in a VPC
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_VPC.WorkingWithRDSInstanceinaVPC.html)
in the I<Amazon Aurora User Guide.>



=head2 OptionGroupName => Str

A value that indicates that the restored DB cluster should be
associated with the specified option group.

Permanent options can't be removed from an option group. An option
group can't be removed from a DB cluster once it is associated with a
DB cluster.



=head2 Port => Int

The port number on which the instances in the restored DB cluster
accept connections.

Default: C<3306>



=head2 PreferredBackupWindow => Str

The daily time range during which automated backups are created if
automated backups are enabled using the C<BackupRetentionPeriod>
parameter.

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

The weekly time range during which system maintenance can occur, in
Universal Coordinated Time (UTC).

Format: C<ddd:hh24:mi-ddd:hh24:mi>

The default is a 30-minute window selected at random from an 8-hour
block of time for each Amazon Web Services Region, occurring on a
random day of the week. To see the time blocks available, see Adjusting
the Preferred Maintenance Window
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_UpgradeDBInstance.Maintenance.html#AdjustingTheMaintenanceWindow.Aurora)
in the I<Amazon Aurora User Guide>.

Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.

Constraints: Minimum 30-minute window.



=head2 B<REQUIRED> S3BucketName => Str

The name of the Amazon S3 bucket that contains the data used to create
the Amazon Aurora DB cluster.



=head2 B<REQUIRED> S3IngestionRoleArn => Str

The Amazon Resource Name (ARN) of the Amazon Web Services Identity and
Access Management (IAM) role that authorizes Amazon RDS to access the
Amazon S3 bucket on your behalf.



=head2 S3Prefix => Str

The prefix for all of the file names that contain the data used to
create the Amazon Aurora DB cluster. If you do not specify a
B<SourceS3Prefix> value, then the Amazon Aurora DB cluster is created
by using all of the files in the Amazon S3 bucket.



=head2 ServerlessV2ScalingConfiguration => L<Paws::RDS::ServerlessV2ScalingConfiguration>





=head2 B<REQUIRED> SourceEngine => Str

The identifier for the database engine that was backed up to create the
files stored in the Amazon S3 bucket.

Valid Values: C<mysql>



=head2 B<REQUIRED> SourceEngineVersion => Str

The version of the database that the backup files were created from.

MySQL versions 5.7 and 8.0 are supported.

Example: C<5.7.40>, C<8.0.28>



=head2 StorageEncrypted => Bool

Specifies whether the restored DB cluster is encrypted.



=head2 StorageType => Str

Specifies the storage type to be associated with the DB cluster.

Valid Values: C<aurora>, C<aurora-iopt1>

Default: C<aurora>

Valid for: Aurora DB clusters only



=head2 Tags => ArrayRef[L<Paws::RDS::Tag>]





=head2 VpcSecurityGroupIds => ArrayRef[Str|Undef]

A list of EC2 VPC security groups to associate with the restored DB
cluster.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RestoreDBClusterFromS3 in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

