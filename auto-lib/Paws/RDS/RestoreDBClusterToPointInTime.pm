
package Paws::RDS::RestoreDBClusterToPointInTime;
  use Moose;
  has BacktrackWindow => (is => 'ro', isa => 'Int');
  has CopyTagsToSnapshot => (is => 'ro', isa => 'Bool');
  has DBClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DBClusterInstanceClass => (is => 'ro', isa => 'Str');
  has DBClusterParameterGroupName => (is => 'ro', isa => 'Str');
  has DBSubnetGroupName => (is => 'ro', isa => 'Str');
  has DeletionProtection => (is => 'ro', isa => 'Bool');
  has Domain => (is => 'ro', isa => 'Str');
  has DomainIAMRoleName => (is => 'ro', isa => 'Str');
  has EnableCloudwatchLogsExports => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has EnableIAMDatabaseAuthentication => (is => 'ro', isa => 'Bool');
  has EnablePerformanceInsights => (is => 'ro', isa => 'Bool');
  has EngineLifecycleSupport => (is => 'ro', isa => 'Str');
  has EngineMode => (is => 'ro', isa => 'Str');
  has Iops => (is => 'ro', isa => 'Int');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has MonitoringInterval => (is => 'ro', isa => 'Int');
  has MonitoringRoleArn => (is => 'ro', isa => 'Str');
  has NetworkType => (is => 'ro', isa => 'Str');
  has OptionGroupName => (is => 'ro', isa => 'Str');
  has PerformanceInsightsKMSKeyId => (is => 'ro', isa => 'Str');
  has PerformanceInsightsRetentionPeriod => (is => 'ro', isa => 'Int');
  has Port => (is => 'ro', isa => 'Int');
  has PubliclyAccessible => (is => 'ro', isa => 'Bool');
  has RdsCustomClusterConfiguration => (is => 'ro', isa => 'Paws::RDS::RdsCustomClusterConfiguration');
  has RestoreToTime => (is => 'ro', isa => 'Str');
  has RestoreType => (is => 'ro', isa => 'Str');
  has ScalingConfiguration => (is => 'ro', isa => 'Paws::RDS::ScalingConfiguration');
  has ServerlessV2ScalingConfiguration => (is => 'ro', isa => 'Paws::RDS::ServerlessV2ScalingConfiguration');
  has SourceDBClusterIdentifier => (is => 'ro', isa => 'Str');
  has SourceDbClusterResourceId => (is => 'ro', isa => 'Str');
  has StorageType => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Tag]');
  has UseLatestRestorableTime => (is => 'ro', isa => 'Bool');
  has VpcSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RestoreDBClusterToPointInTime');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::RestoreDBClusterToPointInTimeResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'RestoreDBClusterToPointInTimeResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::RestoreDBClusterToPointInTime - Arguments for method RestoreDBClusterToPointInTime on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RestoreDBClusterToPointInTime on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method RestoreDBClusterToPointInTime.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RestoreDBClusterToPointInTime.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
 # To restore a DB cluster to a point in time.
 # The following example restores a DB cluster to a new DB cluster at a point in
 # time from the source DB cluster.
    my $RestoreDBClusterToPointInTimeResult =
      $rds->RestoreDBClusterToPointInTime(
      'DBClusterIdentifier'       => 'sample-restored-cluster1',
      'RestoreToTime'             => '2016-09-13T18:45:00Z',
      'SourceDBClusterIdentifier' => 'sample-cluster1'
      );

    # Results:
    my $DBCluster = $RestoreDBClusterToPointInTimeResult->DBCluster;

    # Returns a L<Paws::RDS::RestoreDBClusterToPointInTimeResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/RestoreDBClusterToPointInTime>

=head1 ATTRIBUTES


=head2 BacktrackWindow => Int

The target backtrack window, in seconds. To disable backtracking, set
this value to 0.

Default: 0

Constraints:

=over

=item *

If specified, this value must be set to a number from 0 to 259,200 (72
hours).

=back

Valid for: Aurora MySQL DB clusters only



=head2 CopyTagsToSnapshot => Bool

Specifies whether to copy all tags from the restored DB cluster to
snapshots of the restored DB cluster. The default is not to copy them.

Valid for: Aurora DB clusters and Multi-AZ DB clusters



=head2 B<REQUIRED> DBClusterIdentifier => Str

The name of the new DB cluster to be created.

Constraints:

=over

=item *

Must contain from 1 to 63 letters, numbers, or hyphens

=item *

First character must be a letter

=item *

Can't end with a hyphen or contain two consecutive hyphens

=back

Valid for: Aurora DB clusters and Multi-AZ DB clusters



=head2 DBClusterInstanceClass => Str

The compute and memory capacity of the each DB instance in the Multi-AZ
DB cluster, for example db.m6gd.xlarge. Not all DB instance classes are
available in all Amazon Web Services Regions, or for all database
engines.

For the full list of DB instance classes, and availability for your
engine, see DB instance class
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html)
in the I<Amazon RDS User Guide>.

Valid for: Multi-AZ DB clusters only



=head2 DBClusterParameterGroupName => Str

The name of the custom DB cluster parameter group to associate with
this DB cluster.

If the C<DBClusterParameterGroupName> parameter is omitted, the default
DB cluster parameter group for the specified engine is used.

Constraints:

=over

=item *

If supplied, must match the name of an existing DB cluster parameter
group.

=item *

Must be 1 to 255 letters, numbers, or hyphens.

=item *

First character must be a letter.

=item *

Can't end with a hyphen or contain two consecutive hyphens.

=back

Valid for: Aurora DB clusters and Multi-AZ DB clusters



=head2 DBSubnetGroupName => Str

The DB subnet group name to use for the new DB cluster.

Constraints: If supplied, must match the name of an existing
DBSubnetGroup.

Example: C<mydbsubnetgroup>

Valid for: Aurora DB clusters and Multi-AZ DB clusters



=head2 DeletionProtection => Bool

Specifies whether to enable deletion protection for the DB cluster. The
database can't be deleted when deletion protection is enabled. By
default, deletion protection isn't enabled.

Valid for: Aurora DB clusters and Multi-AZ DB clusters



=head2 Domain => Str

The Active Directory directory ID to restore the DB cluster in. The
domain must be created prior to this operation.

For Amazon Aurora DB clusters, Amazon RDS can use Kerberos
Authentication to authenticate users that connect to the DB cluster.
For more information, see Kerberos Authentication
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/kerberos-authentication.html)
in the I<Amazon Aurora User Guide>.

Valid for: Aurora DB clusters only



=head2 DomainIAMRoleName => Str

The name of the IAM role to be used when making API calls to the
Directory Service.

Valid for: Aurora DB clusters only



=head2 EnableCloudwatchLogsExports => ArrayRef[Str|Undef]

The list of logs that the restored DB cluster is to export to
CloudWatch Logs. The values in the list depend on the DB engine being
used.

B<RDS for MySQL>

Possible values are C<error>, C<general>, C<slowquery>, and
C<iam-db-auth-error>.

B<RDS for PostgreSQL>

Possible values are C<postgresql>, C<upgrade>, and
C<iam-db-auth-error>.

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

Valid for: Aurora DB clusters and Multi-AZ DB clusters



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

Valid for: Aurora DB clusters and Multi-AZ DB clusters



=head2 EnablePerformanceInsights => Bool

Specifies whether to turn on Performance Insights for the DB cluster.



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



=head2 EngineMode => Str

The engine mode of the new cluster. Specify C<provisioned> or
C<serverless>, depending on the type of the cluster you are creating.
You can create an Aurora Serverless v1 clone from a provisioned
cluster, or a provisioned clone from an Aurora Serverless v1 cluster.
To create a clone that is an Aurora Serverless v1 cluster, the original
cluster must be an Aurora Serverless v1 cluster or an encrypted
provisioned cluster. To create a full copy that is an Aurora Serverless
v1 cluster, specify the engine mode C<serverless>.

Valid for: Aurora DB clusters only



=head2 Iops => Int

The amount of Provisioned IOPS (input/output operations per second) to
be initially allocated for each DB instance in the Multi-AZ DB cluster.

For information about valid IOPS values, see Amazon RDS Provisioned
IOPS storage
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#USER_PIOPS)
in the I<Amazon RDS User Guide>.

Constraints: Must be a multiple between .5 and 50 of the storage amount
for the DB instance.

Valid for: Multi-AZ DB clusters only



=head2 KmsKeyId => Str

The Amazon Web Services KMS key identifier to use when restoring an
encrypted DB cluster from an encrypted DB cluster.

The Amazon Web Services KMS key identifier is the key ARN, key ID,
alias ARN, or alias name for the KMS key. To use a KMS key in a
different Amazon Web Services account, specify the key ARN or alias
ARN.

You can restore to a new DB cluster and encrypt the new DB cluster with
a KMS key that is different from the KMS key used to encrypt the source
DB cluster. The new DB cluster is encrypted with the KMS key identified
by the C<KmsKeyId> parameter.

If you don't specify a value for the C<KmsKeyId> parameter, then the
following occurs:

=over

=item *

If the DB cluster is encrypted, then the restored DB cluster is
encrypted using the KMS key that was used to encrypt the source DB
cluster.

=item *

If the DB cluster isn't encrypted, then the restored DB cluster isn't
encrypted.

=back

If C<DBClusterIdentifier> refers to a DB cluster that isn't encrypted,
then the restore request is rejected.

Valid for: Aurora DB clusters and Multi-AZ DB clusters



=head2 MonitoringInterval => Int

The interval, in seconds, between points when Enhanced Monitoring
metrics are collected for the DB cluster. To turn off collecting
Enhanced Monitoring metrics, specify C<0>.

If C<MonitoringRoleArn> is specified, also set C<MonitoringInterval> to
a value other than C<0>.

Valid Values: C<0 | 1 | 5 | 10 | 15 | 30 | 60>

Default: C<0>



=head2 MonitoringRoleArn => Str

The Amazon Resource Name (ARN) for the IAM role that permits RDS to
send Enhanced Monitoring metrics to Amazon CloudWatch Logs. An example
is C<arn:aws:iam:123456789012:role/emaccess>.

If C<MonitoringInterval> is set to a value other than C<0>, supply a
C<MonitoringRoleArn> value.



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

Valid for: Aurora DB clusters only



=head2 OptionGroupName => Str

The name of the option group for the new DB cluster.

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



=head2 PerformanceInsightsRetentionPeriod => Int

The number of days to retain Performance Insights data.

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

The port number on which the new DB cluster accepts connections.

Constraints: A value from C<1150-65535>.

Default: The default port for the engine.

Valid for: Aurora DB clusters and Multi-AZ DB clusters



=head2 PubliclyAccessible => Bool

Specifies whether the DB cluster is publicly accessible.

When the DB cluster is publicly accessible, its Domain Name System
(DNS) endpoint resolves to the private IP address from within the DB
cluster's virtual private cloud (VPC). It resolves to the public IP
address from outside of the DB cluster's VPC. Access to the DB cluster
is ultimately controlled by the security group it uses. That public
access is not permitted if the security group assigned to the DB
cluster doesn't permit it.

When the DB cluster isn't publicly accessible, it is an internal DB
cluster with a DNS name that resolves to a private IP address.

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

Valid for: Multi-AZ DB clusters only



=head2 RdsCustomClusterConfiguration => L<Paws::RDS::RdsCustomClusterConfiguration>

Reserved for future use.



=head2 RestoreToTime => Str

The date and time to restore the DB cluster to.

Valid Values: Value must be a time in Universal Coordinated Time (UTC)
format

Constraints:

=over

=item *

Must be before the latest restorable time for the DB instance

=item *

Must be specified if C<UseLatestRestorableTime> parameter isn't
provided

=item *

Can't be specified if the C<UseLatestRestorableTime> parameter is
enabled

=item *

Can't be specified if the C<RestoreType> parameter is C<copy-on-write>

=back

Example: C<2015-03-07T23:45:00Z>

Valid for: Aurora DB clusters and Multi-AZ DB clusters



=head2 RestoreType => Str

The type of restore to be performed. You can specify one of the
following values:

=over

=item *

C<full-copy> - The new DB cluster is restored as a full copy of the
source DB cluster.

=item *

C<copy-on-write> - The new DB cluster is restored as a clone of the
source DB cluster.

=back

If you don't specify a C<RestoreType> value, then the new DB cluster is
restored as a full copy of the source DB cluster.

Valid for: Aurora DB clusters and Multi-AZ DB clusters



=head2 ScalingConfiguration => L<Paws::RDS::ScalingConfiguration>

For DB clusters in C<serverless> DB engine mode, the scaling properties
of the DB cluster.

Valid for: Aurora DB clusters only



=head2 ServerlessV2ScalingConfiguration => L<Paws::RDS::ServerlessV2ScalingConfiguration>





=head2 SourceDBClusterIdentifier => Str

The identifier of the source DB cluster from which to restore.

Constraints:

=over

=item *

Must match the identifier of an existing DBCluster.

=back

Valid for: Aurora DB clusters and Multi-AZ DB clusters



=head2 SourceDbClusterResourceId => Str

The resource ID of the source DB cluster from which to restore.



=head2 StorageType => Str

Specifies the storage type to be associated with the DB cluster.

When specified for a Multi-AZ DB cluster, a value for the C<Iops>
parameter is required.

Valid Values: C<aurora>, C<aurora-iopt1> (Aurora DB clusters); C<io1>
(Multi-AZ DB clusters)

Default: C<aurora> (Aurora DB clusters); C<io1> (Multi-AZ DB clusters)

Valid for: Aurora DB clusters and Multi-AZ DB clusters



=head2 Tags => ArrayRef[L<Paws::RDS::Tag>]





=head2 UseLatestRestorableTime => Bool

Specifies whether to restore the DB cluster to the latest restorable
backup time. By default, the DB cluster isn't restored to the latest
restorable backup time.

Constraints: Can't be specified if C<RestoreToTime> parameter is
provided.

Valid for: Aurora DB clusters and Multi-AZ DB clusters



=head2 VpcSecurityGroupIds => ArrayRef[Str|Undef]

A list of VPC security groups that the new DB cluster belongs to.

Valid for: Aurora DB clusters and Multi-AZ DB clusters




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RestoreDBClusterToPointInTime in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

