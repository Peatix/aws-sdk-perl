
package Paws::Neptune::ModifyDBCluster;
  use Moose;
  has AllowMajorVersionUpgrade => (is => 'ro', isa => 'Bool');
  has ApplyImmediately => (is => 'ro', isa => 'Bool');
  has BackupRetentionPeriod => (is => 'ro', isa => 'Int');
  has CloudwatchLogsExportConfiguration => (is => 'ro', isa => 'Paws::Neptune::CloudwatchLogsExportConfiguration');
  has CopyTagsToSnapshot => (is => 'ro', isa => 'Bool');
  has DBClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DBClusterParameterGroupName => (is => 'ro', isa => 'Str');
  has DBInstanceParameterGroupName => (is => 'ro', isa => 'Str');
  has DeletionProtection => (is => 'ro', isa => 'Bool');
  has EnableIAMDatabaseAuthentication => (is => 'ro', isa => 'Bool');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has MasterUserPassword => (is => 'ro', isa => 'Str');
  has NewDBClusterIdentifier => (is => 'ro', isa => 'Str');
  has OptionGroupName => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
  has PreferredBackupWindow => (is => 'ro', isa => 'Str');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has ServerlessV2ScalingConfiguration => (is => 'ro', isa => 'Paws::Neptune::ServerlessV2ScalingConfiguration');
  has StorageType => (is => 'ro', isa => 'Str');
  has VpcSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyDBCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Neptune::ModifyDBClusterResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyDBClusterResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::ModifyDBCluster - Arguments for method ModifyDBCluster on L<Paws::Neptune>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyDBCluster on the
L<Amazon Neptune|Paws::Neptune> service. Use the attributes of this class
as arguments to method ModifyDBCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyDBCluster.

=head1 SYNOPSIS

    my $rds = Paws->service('Neptune');
    my $ModifyDBClusterResult = $rds->ModifyDBCluster(
      DBClusterIdentifier               => 'MyString',
      AllowMajorVersionUpgrade          => 1,            # OPTIONAL
      ApplyImmediately                  => 1,            # OPTIONAL
      BackupRetentionPeriod             => 1,            # OPTIONAL
      CloudwatchLogsExportConfiguration => {
        DisableLogTypes => [ 'MyString', ... ],          # OPTIONAL
        EnableLogTypes  => [ 'MyString', ... ],          # OPTIONAL
      },    # OPTIONAL
      CopyTagsToSnapshot               => 1,             # OPTIONAL
      DBClusterParameterGroupName      => 'MyString',    # OPTIONAL
      DBInstanceParameterGroupName     => 'MyString',    # OPTIONAL
      DeletionProtection               => 1,             # OPTIONAL
      EnableIAMDatabaseAuthentication  => 1,             # OPTIONAL
      EngineVersion                    => 'MyString',    # OPTIONAL
      MasterUserPassword               => 'MyString',    # OPTIONAL
      NewDBClusterIdentifier           => 'MyString',    # OPTIONAL
      OptionGroupName                  => 'MyString',    # OPTIONAL
      Port                             => 1,             # OPTIONAL
      PreferredBackupWindow            => 'MyString',    # OPTIONAL
      PreferredMaintenanceWindow       => 'MyString',    # OPTIONAL
      ServerlessV2ScalingConfiguration => {
        MaxCapacity => 1,                                # OPTIONAL
        MinCapacity => 1,                                # OPTIONAL
      },    # OPTIONAL
      StorageType         => 'MyString',             # OPTIONAL
      VpcSecurityGroupIds => [ 'MyString', ... ],    # OPTIONAL
    );

    # Results:
    my $DBCluster = $ModifyDBClusterResult->DBCluster;

    # Returns a L<Paws::Neptune::ModifyDBClusterResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/ModifyDBCluster>

=head1 ATTRIBUTES


=head2 AllowMajorVersionUpgrade => Bool

A value that indicates whether upgrades between different major
versions are allowed.

Constraints: You must set the allow-major-version-upgrade flag when
providing an C<EngineVersion> parameter that uses a different major
version than the DB cluster's current version.



=head2 ApplyImmediately => Bool

A value that specifies whether the modifications in this request and
any pending modifications are asynchronously applied as soon as
possible, regardless of the C<PreferredMaintenanceWindow> setting for
the DB cluster. If this parameter is set to C<false>, changes to the DB
cluster are applied during the next maintenance window.

The C<ApplyImmediately> parameter only affects
C<NewDBClusterIdentifier> values. If you set the C<ApplyImmediately>
parameter value to false, then changes to C<NewDBClusterIdentifier>
values are applied during the next maintenance window. All other
changes are applied immediately, regardless of the value of the
C<ApplyImmediately> parameter.

Default: C<false>



=head2 BackupRetentionPeriod => Int

The number of days for which automated backups are retained. You must
specify a minimum value of 1.

Default: 1

Constraints:

=over

=item *

Must be a value from 1 to 35

=back




=head2 CloudwatchLogsExportConfiguration => L<Paws::Neptune::CloudwatchLogsExportConfiguration>

The configuration setting for the log types to be enabled for export to
CloudWatch Logs for a specific DB cluster. See Using the CLI to publish
Neptune audit logs to CloudWatch Logs
(https://docs.aws.amazon.com/neptune/latest/userguide/cloudwatch-logs.html#cloudwatch-logs-cli).



=head2 CopyTagsToSnapshot => Bool

I<If set to C<true>, tags are copied to any snapshot of the DB cluster
that is created.>



=head2 B<REQUIRED> DBClusterIdentifier => Str

The DB cluster identifier for the cluster being modified. This
parameter is not case-sensitive.

Constraints:

=over

=item *

Must match the identifier of an existing DBCluster.

=back




=head2 DBClusterParameterGroupName => Str

The name of the DB cluster parameter group to use for the DB cluster.



=head2 DBInstanceParameterGroupName => Str

The name of the DB parameter group to apply to all instances of the DB
cluster.

When you apply a parameter group using C<DBInstanceParameterGroupName>,
parameter changes aren't applied during the next maintenance window but
instead are applied immediately.

Default: The existing name setting

Constraints:

=over

=item *

The DB parameter group must be in the same DB parameter group family as
the target DB cluster version.

=item *

The C<DBInstanceParameterGroupName> parameter is only valid in
combination with the C<AllowMajorVersionUpgrade> parameter.

=back




=head2 DeletionProtection => Bool

A value that indicates whether the DB cluster has deletion protection
enabled. The database can't be deleted when deletion protection is
enabled. By default, deletion protection is disabled.



=head2 EnableIAMDatabaseAuthentication => Bool

True to enable mapping of Amazon Identity and Access Management (IAM)
accounts to database accounts, and otherwise false.

Default: C<false>



=head2 EngineVersion => Str

The version number of the database engine to which you want to upgrade.
Changing this parameter results in an outage. The change is applied
during the next maintenance window unless the C<ApplyImmediately>
parameter is set to true.

For a list of valid engine versions, see Engine Releases for Amazon
Neptune
(https://docs.aws.amazon.com/neptune/latest/userguide/engine-releases.html),
or call DescribeDBEngineVersions.



=head2 MasterUserPassword => Str

Not supported by Neptune.



=head2 NewDBClusterIdentifier => Str

The new DB cluster identifier for the DB cluster when renaming a DB
cluster. This value is stored as a lowercase string.

Constraints:

=over

=item *

Must contain from 1 to 63 letters, numbers, or hyphens

=item *

The first character must be a letter

=item *

Cannot end with a hyphen or contain two consecutive hyphens

=back

Example: C<my-cluster2>



=head2 OptionGroupName => Str

I<Not supported by Neptune.>



=head2 Port => Int

The port number on which the DB cluster accepts connections.

Constraints: Value must be C<1150-65535>

Default: The same port as the original DB cluster.



=head2 PreferredBackupWindow => Str

The daily time range during which automated backups are created if
automated backups are enabled, using the C<BackupRetentionPeriod>
parameter.

The default is a 30-minute window selected at random from an 8-hour
block of time for each Amazon Region.

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
week.

Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.

Constraints: Minimum 30-minute window.



=head2 ServerlessV2ScalingConfiguration => L<Paws::Neptune::ServerlessV2ScalingConfiguration>

Contains the scaling configuration of a Neptune Serverless DB cluster.

For more information, see Using Amazon Neptune Serverless
(https://docs.aws.amazon.com/neptune/latest/userguide/neptune-serverless-using.html)
in the I<Amazon Neptune User Guide>.



=head2 StorageType => Str

The storage type to associate with the DB cluster.

Valid Values:

=over

=item *

B<C<standard> > E<ndash> ( I<the default> ) Configures cost-effective
database storage for applications with moderate to small I/O usage.

=item *

B<C<iopt1> > E<ndash> Enables I/O-Optimized storage
(https://docs.aws.amazon.com/neptune/latest/userguide/storage-types.html#provisioned-iops-storage)
that's designed to meet the needs of I/O-intensive graph workloads that
require predictable pricing with low I/O latency and consistent I/O
throughput.

Neptune I/O-Optimized storage is only available starting with engine
release 1.3.0.0.

=back




=head2 VpcSecurityGroupIds => ArrayRef[Str|Undef]

A list of VPC security groups that the DB cluster will belong to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyDBCluster in L<Paws::Neptune>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

