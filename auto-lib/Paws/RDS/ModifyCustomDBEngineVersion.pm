
package Paws::RDS::ModifyCustomDBEngineVersion;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has Engine => (is => 'ro', isa => 'Str', required => 1);
  has EngineVersion => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyCustomDBEngineVersion');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::DBEngineVersion');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyCustomDBEngineVersionResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::ModifyCustomDBEngineVersion - Arguments for method ModifyCustomDBEngineVersion on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyCustomDBEngineVersion on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method ModifyCustomDBEngineVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyCustomDBEngineVersion.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $DBEngineVersion = $rds->ModifyCustomDBEngineVersion(
      Engine        => 'MyCustomEngineName',
      EngineVersion => 'MyCustomEngineVersion',
      Description   => 'MyDescription',           # OPTIONAL
      Status        => 'available',               # OPTIONAL
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
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/ModifyCustomDBEngineVersion>

=head1 ATTRIBUTES


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

The custom engine version (CEV) that you want to modify. This option is
required for RDS Custom for Oracle, but optional for Amazon RDS. The
combination of C<Engine> and C<EngineVersion> is unique per customer
per Amazon Web Services Region.



=head2 Status => Str

The availability status to be assigned to the CEV. Valid values are as
follows:

=over

=item available

You can use this CEV to create a new RDS Custom DB instance.

=item inactive

You can create a new RDS Custom instance by restoring a DB snapshot
with this CEV. You can't patch or create new instances with this CEV.

=back

You can change any status to any status. A typical reason to change
status is to prevent the accidental use of a CEV, or to make a
deprecated CEV eligible for use again. For example, you might change
the status of your CEV from C<available> to C<inactive>, and from
C<inactive> back to C<available>. To change the availability status of
the CEV, it must not currently be in use by an RDS Custom instance,
snapshot, or automated backup.

Valid values are: C<"available">, C<"inactive">, C<"inactive-except-restore">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyCustomDBEngineVersion in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

