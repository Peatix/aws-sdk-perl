
package Paws::RDS::DBEngineVersion;
  use Moose;
  has CreateTime => (is => 'ro', isa => 'Str');
  has CustomDBEngineVersionManifest => (is => 'ro', isa => 'Str');
  has DatabaseInstallationFilesS3BucketName => (is => 'ro', isa => 'Str');
  has DatabaseInstallationFilesS3Prefix => (is => 'ro', isa => 'Str');
  has DBEngineDescription => (is => 'ro', isa => 'Str');
  has DBEngineMediaType => (is => 'ro', isa => 'Str');
  has DBEngineVersionArn => (is => 'ro', isa => 'Str');
  has DBEngineVersionDescription => (is => 'ro', isa => 'Str');
  has DBParameterGroupFamily => (is => 'ro', isa => 'Str');
  has DefaultCharacterSet => (is => 'ro', isa => 'Paws::RDS::CharacterSet');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has ExportableLogTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Image => (is => 'ro', isa => 'Paws::RDS::CustomDBEngineVersionAMI');
  has KMSKeyId => (is => 'ro', isa => 'Str');
  has MajorEngineVersion => (is => 'ro', isa => 'Str');
  has ServerlessV2FeaturesSupport => (is => 'ro', isa => 'Paws::RDS::ServerlessV2FeaturesSupport');
  has Status => (is => 'ro', isa => 'Str');
  has SupportedCACertificateIdentifiers => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SupportedCharacterSets => (is => 'ro', isa => 'ArrayRef[Paws::RDS::CharacterSet]', request_name => 'CharacterSet', traits => ['NameInRequest',]);
  has SupportedEngineModes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SupportedFeatureNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SupportedNcharCharacterSets => (is => 'ro', isa => 'ArrayRef[Paws::RDS::CharacterSet]', request_name => 'CharacterSet', traits => ['NameInRequest',]);
  has SupportedTimezones => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Timezone]', request_name => 'Timezone', traits => ['NameInRequest',]);
  has SupportsBabelfish => (is => 'ro', isa => 'Bool');
  has SupportsCertificateRotationWithoutRestart => (is => 'ro', isa => 'Bool');
  has SupportsGlobalDatabases => (is => 'ro', isa => 'Bool');
  has SupportsIntegrations => (is => 'ro', isa => 'Bool');
  has SupportsLimitlessDatabase => (is => 'ro', isa => 'Bool');
  has SupportsLocalWriteForwarding => (is => 'ro', isa => 'Bool');
  has SupportsLogExportsToCloudwatchLogs => (is => 'ro', isa => 'Bool');
  has SupportsParallelQuery => (is => 'ro', isa => 'Bool');
  has SupportsReadReplica => (is => 'ro', isa => 'Bool');
  has TagList => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Tag]', request_name => 'Tag', traits => ['NameInRequest',]);
  has ValidUpgradeTarget => (is => 'ro', isa => 'ArrayRef[Paws::RDS::UpgradeTarget]', request_name => 'UpgradeTarget', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DBEngineVersion

=head1 ATTRIBUTES


=head2 CreateTime => Str

The creation time of the DB engine version.


=head2 CustomDBEngineVersionManifest => Str

JSON string that lists the installation files and parameters that RDS
Custom uses to create a custom engine version (CEV). RDS Custom applies
the patches in the order in which they're listed in the manifest. You
can set the Oracle home, Oracle base, and UNIX/Linux user and group
using the installation parameters. For more information, see JSON
fields in the CEV manifest
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/custom-cev.preparing.html#custom-cev.preparing.manifest.fields)
in the I<Amazon RDS User Guide>.


=head2 DatabaseInstallationFilesS3BucketName => Str

The name of the Amazon S3 bucket that contains your database
installation files.


=head2 DatabaseInstallationFilesS3Prefix => Str

The Amazon S3 directory that contains the database installation files.
If not specified, then no prefix is assumed.


=head2 DBEngineDescription => Str

The description of the database engine.


=head2 DBEngineMediaType => Str

A value that indicates the source media provider of the AMI based on
the usage operation. Applicable for RDS Custom for SQL Server.


=head2 DBEngineVersionArn => Str

The ARN of the custom engine version.


=head2 DBEngineVersionDescription => Str

The description of the database engine version.


=head2 DBParameterGroupFamily => Str

The name of the DB parameter group family for the database engine.


=head2 DefaultCharacterSet => L<Paws::RDS::CharacterSet>

The default character set for new instances of this engine version, if
the C<CharacterSetName> parameter of the CreateDBInstance API isn't
specified.


=head2 Engine => Str

The name of the database engine.


=head2 EngineVersion => Str

The version number of the database engine.


=head2 ExportableLogTypes => ArrayRef[Str|Undef]

The types of logs that the database engine has available for export to
CloudWatch Logs.


=head2 Image => L<Paws::RDS::CustomDBEngineVersionAMI>

The EC2 image


=head2 KMSKeyId => Str

The Amazon Web Services KMS key identifier for an encrypted CEV. This
parameter is required for RDS Custom, but optional for Amazon RDS.


=head2 MajorEngineVersion => Str

The major engine version of the CEV.


=head2 ServerlessV2FeaturesSupport => L<Paws::RDS::ServerlessV2FeaturesSupport>

Specifies any Aurora Serverless v2 properties or limits that differ
between Aurora engine versions. You can test the values of this
attribute when deciding which Aurora version to use in a new or
upgraded DB cluster. You can also retrieve the version of an existing
DB cluster and check whether that version supports certain Aurora
Serverless v2 features before you attempt to use those features.


=head2 Status => Str

The status of the DB engine version, either C<available> or
C<deprecated>.


=head2 SupportedCACertificateIdentifiers => ArrayRef[Str|Undef]

A list of the supported CA certificate identifiers.

For more information, see Using SSL/TLS to encrypt a connection to a DB
instance
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.SSL.html)
in the I<Amazon RDS User Guide> and Using SSL/TLS to encrypt a
connection to a DB cluster
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.SSL.html)
in the I<Amazon Aurora User Guide>.


=head2 SupportedCharacterSets => ArrayRef[L<Paws::RDS::CharacterSet>]

A list of the character sets supported by this engine for the
C<CharacterSetName> parameter of the C<CreateDBInstance> operation.


=head2 SupportedEngineModes => ArrayRef[Str|Undef]

A list of the supported DB engine modes.


=head2 SupportedFeatureNames => ArrayRef[Str|Undef]

A list of features supported by the DB engine.

The supported features vary by DB engine and DB engine version.

To determine the supported features for a specific DB engine and DB
engine version using the CLI, use the following command:

C<aws rds describe-db-engine-versions --engine E<lt>engine_nameE<gt>
--engine-version E<lt>engine_versionE<gt>>

For example, to determine the supported features for RDS for PostgreSQL
version 13.3 using the CLI, use the following command:

C<aws rds describe-db-engine-versions --engine postgres
--engine-version 13.3>

The supported features are listed under C<SupportedFeatureNames> in the
output.


=head2 SupportedNcharCharacterSets => ArrayRef[L<Paws::RDS::CharacterSet>]

A list of the character sets supported by the Oracle DB engine for the
C<NcharCharacterSetName> parameter of the C<CreateDBInstance>
operation.


=head2 SupportedTimezones => ArrayRef[L<Paws::RDS::Timezone>]

A list of the time zones supported by this engine for the C<Timezone>
parameter of the C<CreateDBInstance> action.


=head2 SupportsBabelfish => Bool

Indicates whether the engine version supports Babelfish for Aurora
PostgreSQL.


=head2 SupportsCertificateRotationWithoutRestart => Bool

Indicates whether the engine version supports rotating the server
certificate without rebooting the DB instance.


=head2 SupportsGlobalDatabases => Bool

Indicates whether you can use Aurora global databases with a specific
DB engine version.


=head2 SupportsIntegrations => Bool

Indicates whether the DB engine version supports zero-ETL integrations
with Amazon Redshift.


=head2 SupportsLimitlessDatabase => Bool

Indicates whether the DB engine version supports Aurora Limitless
Database.


=head2 SupportsLocalWriteForwarding => Bool

Indicates whether the DB engine version supports forwarding write
operations from reader DB instances to the writer DB instance in the DB
cluster. By default, write operations aren't allowed on reader DB
instances.

Valid for: Aurora DB clusters only


=head2 SupportsLogExportsToCloudwatchLogs => Bool

Indicates whether the engine version supports exporting the log types
specified by ExportableLogTypes to CloudWatch Logs.


=head2 SupportsParallelQuery => Bool

Indicates whether you can use Aurora parallel query with a specific DB
engine version.


=head2 SupportsReadReplica => Bool

Indicates whether the database engine version supports read replicas.


=head2 TagList => ArrayRef[L<Paws::RDS::Tag>]




=head2 ValidUpgradeTarget => ArrayRef[L<Paws::RDS::UpgradeTarget>]

A list of engine versions that this database engine version can be
upgraded to.


=head2 _request_id => Str


=cut

