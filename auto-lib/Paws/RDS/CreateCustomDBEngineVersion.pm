
package Paws::RDS::CreateCustomDBEngineVersion;
  use Moose;
  has DatabaseInstallationFilesS3BucketName => (is => 'ro', isa => 'Str');
  has DatabaseInstallationFilesS3Prefix => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Engine => (is => 'ro', isa => 'Str', required => 1);
  has EngineVersion => (is => 'ro', isa => 'Str', required => 1);
  has ImageId => (is => 'ro', isa => 'Str');
  has KMSKeyId => (is => 'ro', isa => 'Str');
  has Manifest => (is => 'ro', isa => 'Str');
  has SourceCustomDbEngineVersionIdentifier => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Tag]');
  has UseAwsProvidedLatestImage => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCustomDBEngineVersion');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::DBEngineVersion');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateCustomDBEngineVersionResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::CreateCustomDBEngineVersion - Arguments for method CreateCustomDBEngineVersion on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCustomDBEngineVersion on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method CreateCustomDBEngineVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCustomDBEngineVersion.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $DBEngineVersion = $rds->CreateCustomDBEngineVersion(
      Engine                                => 'MyCustomEngineName',
      EngineVersion                         => 'MyCustomEngineVersion',
      DatabaseInstallationFilesS3BucketName => 'MyBucketName',       # OPTIONAL
      DatabaseInstallationFilesS3Prefix     => 'MyString255',        # OPTIONAL
      Description                           => 'MyDescription',      # OPTIONAL
      ImageId                               => 'MyString255',        # OPTIONAL
      KMSKeyId                              => 'MyKmsKeyIdOrArn',    # OPTIONAL
      Manifest => 'MyCustomDBEngineVersionManifest',                 # OPTIONAL
      SourceCustomDbEngineVersionIdentifier => 'MyString255',        # OPTIONAL
      Tags                                  => [
        {
          Key   => 'MyString',    # OPTIONAL
          Value => 'MyString',    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      UseAwsProvidedLatestImage => 1,    # OPTIONAL
    );

    # Results:
    my $CreateTime = $DBEngineVersion->CreateTime;
    my $CustomDBEngineVersionManifest =
      $DBEngineVersion->CustomDBEngineVersionManifest;
    my $DBEngineDescription = $DBEngineVersion->DBEngineDescription;
    my $DBEngineMediaType   = $DBEngineVersion->DBEngineMediaType;
    my $DBEngineVersionArn  = $DBEngineVersion->DBEngineVersionArn;
    my $DBEngineVersionDescription =
      $DBEngineVersion->DBEngineVersionDescription;
    my $DBParameterGroupFamily = $DBEngineVersion->DBParameterGroupFamily;
    my $DatabaseInstallationFilesS3BucketName =
      $DBEngineVersion->DatabaseInstallationFilesS3BucketName;
    my $DatabaseInstallationFilesS3Prefix =
      $DBEngineVersion->DatabaseInstallationFilesS3Prefix;
    my $DefaultCharacterSet = $DBEngineVersion->DefaultCharacterSet;
    my $Engine              = $DBEngineVersion->Engine;
    my $EngineVersion       = $DBEngineVersion->EngineVersion;
    my $ExportableLogTypes  = $DBEngineVersion->ExportableLogTypes;
    my $Image               = $DBEngineVersion->Image;
    my $KMSKeyId            = $DBEngineVersion->KMSKeyId;
    my $MajorEngineVersion  = $DBEngineVersion->MajorEngineVersion;
    my $ServerlessV2FeaturesSupport =
      $DBEngineVersion->ServerlessV2FeaturesSupport;
    my $Status = $DBEngineVersion->Status;
    my $SupportedCACertificateIdentifiers =
      $DBEngineVersion->SupportedCACertificateIdentifiers;
    my $SupportedCharacterSets = $DBEngineVersion->SupportedCharacterSets;
    my $SupportedEngineModes   = $DBEngineVersion->SupportedEngineModes;
    my $SupportedFeatureNames  = $DBEngineVersion->SupportedFeatureNames;
    my $SupportedNcharCharacterSets =
      $DBEngineVersion->SupportedNcharCharacterSets;
    my $SupportedTimezones = $DBEngineVersion->SupportedTimezones;
    my $SupportsBabelfish  = $DBEngineVersion->SupportsBabelfish;
    my $SupportsCertificateRotationWithoutRestart =
      $DBEngineVersion->SupportsCertificateRotationWithoutRestart;
    my $SupportsGlobalDatabases   = $DBEngineVersion->SupportsGlobalDatabases;
    my $SupportsIntegrations      = $DBEngineVersion->SupportsIntegrations;
    my $SupportsLimitlessDatabase = $DBEngineVersion->SupportsLimitlessDatabase;
    my $SupportsLocalWriteForwarding =
      $DBEngineVersion->SupportsLocalWriteForwarding;
    my $SupportsLogExportsToCloudwatchLogs =
      $DBEngineVersion->SupportsLogExportsToCloudwatchLogs;
    my $SupportsParallelQuery = $DBEngineVersion->SupportsParallelQuery;
    my $SupportsReadReplica   = $DBEngineVersion->SupportsReadReplica;
    my $TagList               = $DBEngineVersion->TagList;
    my $ValidUpgradeTarget    = $DBEngineVersion->ValidUpgradeTarget;

    # Returns a L<Paws::RDS::DBEngineVersion> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/CreateCustomDBEngineVersion>

=head1 ATTRIBUTES


=head2 DatabaseInstallationFilesS3BucketName => Str

The name of an Amazon S3 bucket that contains database installation
files for your CEV. For example, a valid bucket name is
C<my-custom-installation-files>.



=head2 DatabaseInstallationFilesS3Prefix => Str

The Amazon S3 directory that contains the database installation files
for your CEV. For example, a valid bucket name is C<123456789012/cev1>.
If this setting isn't specified, no prefix is assumed.



=head2 Description => Str

An optional description of your CEV.



=head2 B<REQUIRED> Engine => Str

The database engine. RDS Custom for Oracle supports the following
values:

=over

=item *

C<custom-oracle-ee>

=item *

C<custom-oracle-ee-cdb>

=item *

C<custom-oracle-se2>

=item *

C<custom-oracle-se2-cdb>

=back




=head2 B<REQUIRED> EngineVersion => Str

The name of your CEV. The name format is 19.I<customized_string>. For
example, a valid CEV name is C<19.my_cev1>. This setting is required
for RDS Custom for Oracle, but optional for Amazon RDS. The combination
of C<Engine> and C<EngineVersion> is unique per customer per Region.



=head2 ImageId => Str

The ID of the Amazon Machine Image (AMI). For RDS Custom for SQL
Server, an AMI ID is required to create a CEV. For RDS Custom for
Oracle, the default is the most recent AMI available, but you can
specify an AMI ID that was used in a different Oracle CEV. Find the
AMIs used by your CEVs by calling the DescribeDBEngineVersions
(https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_DescribeDBEngineVersions.html)
operation.



=head2 KMSKeyId => Str

The Amazon Web Services KMS key identifier for an encrypted CEV. A
symmetric encryption KMS key is required for RDS Custom, but optional
for Amazon RDS.

If you have an existing symmetric encryption KMS key in your account,
you can use it with RDS Custom. No further action is necessary. If you
don't already have a symmetric encryption KMS key in your account,
follow the instructions in Creating a symmetric encryption KMS key
(https://docs.aws.amazon.com/kms/latest/developerguide/create-keys.html#create-symmetric-cmk)
in the I<Amazon Web Services Key Management Service Developer Guide>.

You can choose the same symmetric encryption key when you create a CEV
and a DB instance, or choose different keys.



=head2 Manifest => Str

The CEV manifest, which is a JSON document that describes the
installation .zip files stored in Amazon S3. Specify the name/value
pairs in a file or a quoted string. RDS Custom applies the patches in
the order in which they are listed.

The following JSON fields are valid:

=over

=item MediaImportTemplateVersion

Version of the CEV manifest. The date is in the format C<YYYY-MM-DD>.

=item databaseInstallationFileNames

Ordered list of installation files for the CEV.

=item opatchFileNames

Ordered list of OPatch installers used for the Oracle DB engine.

=item psuRuPatchFileNames

The PSU and RU patches for this CEV.

=item OtherPatchFileNames

The patches that are not in the list of PSU and RU patches. Amazon RDS
applies these patches after applying the PSU and RU patches.

=back

For more information, see Creating the CEV manifest
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/custom-cev.html#custom-cev.preparing.manifest)
in the I<Amazon RDS User Guide>.



=head2 SourceCustomDbEngineVersionIdentifier => Str

The ARN of a CEV to use as a source for creating a new CEV. You can
specify a different Amazon Machine Imagine (AMI) by using either
C<Source> or C<UseAwsProvidedLatestImage>. You can't specify a
different JSON manifest when you specify
C<SourceCustomDbEngineVersionIdentifier>.



=head2 Tags => ArrayRef[L<Paws::RDS::Tag>]





=head2 UseAwsProvidedLatestImage => Bool

Specifies whether to use the latest service-provided Amazon Machine
Image (AMI) for the CEV. If you specify C<UseAwsProvidedLatestImage>,
you can't also specify C<ImageId>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCustomDBEngineVersion in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

