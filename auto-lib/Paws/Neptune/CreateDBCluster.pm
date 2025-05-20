
package Paws::Neptune::CreateDBCluster;
  use Moose;
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has BackupRetentionPeriod => (is => 'ro', isa => 'Int');
  has CharacterSetName => (is => 'ro', isa => 'Str');
  has CopyTagsToSnapshot => (is => 'ro', isa => 'Bool');
  has DatabaseName => (is => 'ro', isa => 'Str');
  has DBClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DBClusterParameterGroupName => (is => 'ro', isa => 'Str');
  has DBSubnetGroupName => (is => 'ro', isa => 'Str');
  has DeletionProtection => (is => 'ro', isa => 'Bool');
  has EnableCloudwatchLogsExports => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has EnableIAMDatabaseAuthentication => (is => 'ro', isa => 'Bool');
  has Engine => (is => 'ro', isa => 'Str', required => 1);
  has EngineVersion => (is => 'ro', isa => 'Str');
  has GlobalClusterIdentifier => (is => 'ro', isa => 'Str');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has MasterUsername => (is => 'ro', isa => 'Str');
  has MasterUserPassword => (is => 'ro', isa => 'Str');
  has OptionGroupName => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
  has PreferredBackupWindow => (is => 'ro', isa => 'Str');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has PreSignedUrl => (is => 'ro', isa => 'Str');
  has ReplicationSourceIdentifier => (is => 'ro', isa => 'Str');
  has ServerlessV2ScalingConfiguration => (is => 'ro', isa => 'Paws::Neptune::ServerlessV2ScalingConfiguration');
  has StorageEncrypted => (is => 'ro', isa => 'Bool');
  has StorageType => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Neptune::Tag]');
  has VpcSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDBCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Neptune::CreateDBClusterResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateDBClusterResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::CreateDBCluster - Arguments for method CreateDBCluster on L<Paws::Neptune>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDBCluster on the
L<Amazon Neptune|Paws::Neptune> service. Use the attributes of this class
as arguments to method CreateDBCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDBCluster.

=head1 SYNOPSIS

    my $rds = Paws->service('Neptune');
    my $CreateDBClusterResult = $rds->CreateDBCluster(
      DBClusterIdentifier             => 'MyString',
      Engine                          => 'MyString',
      AvailabilityZones               => [ 'MyString', ... ],         # OPTIONAL
      BackupRetentionPeriod           => 1,                           # OPTIONAL
      CharacterSetName                => 'MyString',                  # OPTIONAL
      CopyTagsToSnapshot              => 1,                           # OPTIONAL
      DBClusterParameterGroupName     => 'MyString',                  # OPTIONAL
      DBSubnetGroupName               => 'MyString',                  # OPTIONAL
      DatabaseName                    => 'MyString',                  # OPTIONAL
      DeletionProtection              => 1,                           # OPTIONAL
      EnableCloudwatchLogsExports     => [ 'MyString', ... ],         # OPTIONAL
      EnableIAMDatabaseAuthentication => 1,                           # OPTIONAL
      EngineVersion                   => 'MyString',                  # OPTIONAL
      GlobalClusterIdentifier         => 'MyGlobalClusterIdentifier', # OPTIONAL
      KmsKeyId                        => 'MyString',                  # OPTIONAL
      MasterUserPassword              => 'MyString',                  # OPTIONAL
      MasterUsername                  => 'MyString',                  # OPTIONAL
      OptionGroupName                 => 'MyString',                  # OPTIONAL
      Port                            => 1,                           # OPTIONAL
      PreSignedUrl                    => 'MyString',                  # OPTIONAL
      PreferredBackupWindow           => 'MyString',                  # OPTIONAL
      PreferredMaintenanceWindow      => 'MyString',                  # OPTIONAL
      ReplicationSourceIdentifier     => 'MyString',                  # OPTIONAL
      ServerlessV2ScalingConfiguration => {
        MaxCapacity => 1,                                             # OPTIONAL
        MinCapacity => 1,                                             # OPTIONAL
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
    my $DBCluster = $CreateDBClusterResult->DBCluster;

    # Returns a L<Paws::Neptune::CreateDBClusterResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/CreateDBCluster>

=head1 ATTRIBUTES


=head2 AvailabilityZones => ArrayRef[Str|Undef]

A list of EC2 Availability Zones that instances in the DB cluster can
be created in.



=head2 BackupRetentionPeriod => Int

The number of days for which automated backups are retained. You must
specify a minimum value of 1.

Default: 1

Constraints:

=over

=item *

Must be a value from 1 to 35

=back




=head2 CharacterSetName => Str

I<(Not supported by Neptune)>



=head2 CopyTagsToSnapshot => Bool

I<If set to C<true>, tags are copied to any snapshot of the DB cluster
that is created.>



=head2 DatabaseName => Str

The name for your database of up to 64 alpha-numeric characters. If you
do not provide a name, Amazon Neptune will not create a database in the
DB cluster you are creating.



=head2 B<REQUIRED> DBClusterIdentifier => Str

The DB cluster identifier. This parameter is stored as a lowercase
string.

Constraints:

=over

=item *

Must contain from 1 to 63 letters, numbers, or hyphens.

=item *

First character must be a letter.

=item *

Cannot end with a hyphen or contain two consecutive hyphens.

=back

Example: C<my-cluster1>



=head2 DBClusterParameterGroupName => Str

The name of the DB cluster parameter group to associate with this DB
cluster. If this argument is omitted, the default is used.

Constraints:

=over

=item *

If supplied, must match the name of an existing
DBClusterParameterGroup.

=back




=head2 DBSubnetGroupName => Str

A DB subnet group to associate with this DB cluster.

Constraints: Must match the name of an existing DBSubnetGroup. Must not
be default.

Example: C<mySubnetgroup>



=head2 DeletionProtection => Bool

A value that indicates whether the DB cluster has deletion protection
enabled. The database can't be deleted when deletion protection is
enabled. By default, deletion protection is enabled.



=head2 EnableCloudwatchLogsExports => ArrayRef[Str|Undef]

A list of the log types that this DB cluster should export to
CloudWatch Logs. Valid log types are: C<audit> (to publish audit logs)
and C<slowquery> (to publish slow-query logs). See Publishing Neptune
logs to Amazon CloudWatch logs
(https://docs.aws.amazon.com/neptune/latest/userguide/cloudwatch-logs.html).



=head2 EnableIAMDatabaseAuthentication => Bool

If set to C<true>, enables Amazon Identity and Access Management (IAM)
authentication for the entire DB cluster (this cannot be set at an
instance level).

Default: C<false>.



=head2 B<REQUIRED> Engine => Str

The name of the database engine to be used for this DB cluster.

Valid Values: C<neptune>



=head2 EngineVersion => Str

The version number of the database engine to use for the new DB
cluster.

Example: C<1.2.1.0>



=head2 GlobalClusterIdentifier => Str

The ID of the Neptune global database to which this new DB cluster
should be added.



=head2 KmsKeyId => Str

The Amazon KMS key identifier for an encrypted DB cluster.

The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
encryption key. If you are creating a DB cluster with the same Amazon
account that owns the KMS encryption key used to encrypt the new DB
cluster, then you can use the KMS key alias instead of the ARN for the
KMS encryption key.

If an encryption key is not specified in C<KmsKeyId>:

=over

=item *

If C<ReplicationSourceIdentifier> identifies an encrypted source, then
Amazon Neptune will use the encryption key used to encrypt the source.
Otherwise, Amazon Neptune will use your default encryption key.

=item *

If the C<StorageEncrypted> parameter is true and
C<ReplicationSourceIdentifier> is not specified, then Amazon Neptune
will use your default encryption key.

=back

Amazon KMS creates the default encryption key for your Amazon account.
Your Amazon account has a different default encryption key for each
Amazon Region.

If you create a Read Replica of an encrypted DB cluster in another
Amazon Region, you must set C<KmsKeyId> to a KMS key ID that is valid
in the destination Amazon Region. This key is used to encrypt the Read
Replica in that Amazon Region.



=head2 MasterUsername => Str

Not supported by Neptune.



=head2 MasterUserPassword => Str

Not supported by Neptune.



=head2 OptionGroupName => Str

I<(Not supported by Neptune)>



=head2 Port => Int

The port number on which the instances in the DB cluster accept
connections.

Default: C<8182>



=head2 PreferredBackupWindow => Str

The daily time range during which automated backups are created if
automated backups are enabled using the C<BackupRetentionPeriod>
parameter.

The default is a 30-minute window selected at random from an 8-hour
block of time for each Amazon Region. To see the time blocks available,
see Neptune Maintenance Window
(https://docs.aws.amazon.com/neptune/latest/userguide/manage-console-maintaining.html#manage-console-maintaining-window)
in the I<Amazon Neptune User Guide.>

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
block of time for each Amazon Region, occurring on a random day of the
week. To see the time blocks available, see Neptune Maintenance Window
(https://docs.aws.amazon.com/neptune/latest/userguide/manage-console-maintaining.html#manage-console-maintaining-window)
in the I<Amazon Neptune User Guide.>

Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.

Constraints: Minimum 30-minute window.



=head2 PreSignedUrl => Str

This parameter is not currently supported.



=head2 ReplicationSourceIdentifier => Str

The Amazon Resource Name (ARN) of the source DB instance or DB cluster
if this DB cluster is created as a Read Replica.



=head2 ServerlessV2ScalingConfiguration => L<Paws::Neptune::ServerlessV2ScalingConfiguration>

Contains the scaling configuration of a Neptune Serverless DB cluster.

For more information, see Using Amazon Neptune Serverless
(https://docs.aws.amazon.com/neptune/latest/userguide/neptune-serverless-using.html)
in the I<Amazon Neptune User Guide>.



=head2 StorageEncrypted => Bool

Specifies whether the DB cluster is encrypted.



=head2 StorageType => Str

The storage type for the new DB cluster.

Valid Values:

=over

=item *

B<C<standard> > E<ndash> ( I<the default> ) Configures cost-effective
database storage for applications with moderate to small I/O usage.
When set to C<standard>, the storage type is not returned in the
response.

=item *

B<C<iopt1> > E<ndash> Enables I/O-Optimized storage
(https://docs.aws.amazon.com/neptune/latest/userguide/storage-types.html#provisioned-iops-storage)
that's designed to meet the needs of I/O-intensive graph workloads that
require predictable pricing with low I/O latency and consistent I/O
throughput.

Neptune I/O-Optimized storage is only available starting with engine
release 1.3.0.0.

=back




=head2 Tags => ArrayRef[L<Paws::Neptune::Tag>]

The tags to assign to the new DB cluster.



=head2 VpcSecurityGroupIds => ArrayRef[Str|Undef]

A list of EC2 VPC security groups to associate with this DB cluster.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDBCluster in L<Paws::Neptune>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

