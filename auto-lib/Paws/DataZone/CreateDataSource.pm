
package Paws::DataZone::CreateDataSource;
  use Moose;
  has AssetFormsInput => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::FormInput]', traits => ['NameInRequest'], request_name => 'assetFormsInput');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Configuration => (is => 'ro', isa => 'Paws::DataZone::DataSourceConfigurationInput', traits => ['NameInRequest'], request_name => 'configuration');
  has ConnectionIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectionIdentifier');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has EnableSetting => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'enableSetting');
  has EnvironmentIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'environmentIdentifier');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has ProjectIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectIdentifier', required => 1);
  has PublishOnImport => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'publishOnImport');
  has Recommendation => (is => 'ro', isa => 'Paws::DataZone::RecommendationConfiguration', traits => ['NameInRequest'], request_name => 'recommendation');
  has Schedule => (is => 'ro', isa => 'Paws::DataZone::ScheduleConfiguration', traits => ['NameInRequest'], request_name => 'schedule');
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDataSource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/data-sources');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::CreateDataSourceOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::CreateDataSource - Arguments for method CreateDataSource on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDataSource on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method CreateDataSource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDataSource.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $CreateDataSourceOutput = $datazone->CreateDataSource(
      DomainIdentifier  => 'MyDomainId',
      Name              => 'MyName',
      ProjectIdentifier => 'MyCreateDataSourceInputProjectIdentifierString',
      Type              => 'MyDataSourceType',
      AssetFormsInput   => [
        {
          FormName       => 'MyFormName',                # min: 1, max: 128
          Content        => 'MyFormInputContentString',  # max: 300000; OPTIONAL
          TypeIdentifier => 'MyFormTypeIdentifier', # min: 1, max: 385; OPTIONAL
          TypeRevision   => 'MyRevisionInput',      # min: 1, max: 64; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      ClientToken   => 'MyString',    # OPTIONAL
      Configuration => {
        GlueRunConfiguration => {
          RelationalFilterConfigurations => [
            {
              DatabaseName =>
                'MyRelationalFilterConfigurationDatabaseNameString'
              ,    # min: 1, max: 128
              FilterExpressions => [
                {
                  Expression =>
                    'MyFilterExpressionExpressionString',    # min: 1, max: 2048
                  Type => 'INCLUDE',    # values: INCLUDE, EXCLUDE

                },
                ...
              ],    # OPTIONAL
              SchemaName => 'MyRelationalFilterConfigurationSchemaNameString'
              ,     # min: 1, max: 128; OPTIONAL
            },
            ...
          ],
          AutoImportDataQualityResult => 1,                       # OPTIONAL
          CatalogName => 'MyGlueRunConfigurationInputCatalogNameString'
          ,    # min: 1, max: 128; OPTIONAL
          DataAccessRole =>
            'MyGlueRunConfigurationInputDataAccessRoleString',    # OPTIONAL
        },    # OPTIONAL
        RedshiftRunConfiguration => {
          RelationalFilterConfigurations => [
            {
              DatabaseName =>
                'MyRelationalFilterConfigurationDatabaseNameString'
              ,    # min: 1, max: 128
              FilterExpressions => [
                {
                  Expression =>
                    'MyFilterExpressionExpressionString',    # min: 1, max: 2048
                  Type => 'INCLUDE',    # values: INCLUDE, EXCLUDE

                },
                ...
              ],    # OPTIONAL
              SchemaName => 'MyRelationalFilterConfigurationSchemaNameString'
              ,     # min: 1, max: 128; OPTIONAL
            },
            ...
          ],
          DataAccessRole =>
            'MyRedshiftRunConfigurationInputDataAccessRoleString',    # OPTIONAL
          RedshiftCredentialConfiguration => {
            SecretManagerArn =>
              'MyRedshiftCredentialConfigurationSecretManagerArnString'
            ,                                                         # max: 256

          },    # OPTIONAL
          RedshiftStorage => {
            RedshiftClusterSource => {
              ClusterName =>
                'MyRedshiftClusterStorageClusterNameString',   # min: 1, max: 63

            },    # OPTIONAL
            RedshiftServerlessSource => {
              WorkgroupName =>
                'MyRedshiftServerlessStorageWorkgroupNameString'
              ,    # min: 3, max: 64

            },    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        SageMakerRunConfiguration => {
          TrackingAssets => {
            'MySageMakerAssetType' => [ 'MySageMakerResourceArn', ... ]
            ,    # key: min: 1, max: 64, value: max: 500
          },    # min: 1, max: 1

        },    # OPTIONAL
      },    # OPTIONAL
      ConnectionIdentifier =>
        'MyCreateDataSourceInputConnectionIdentifierString',    # OPTIONAL
      Description           => 'MyDescription',                 # OPTIONAL
      EnableSetting         => 'ENABLED',                       # OPTIONAL
      EnvironmentIdentifier =>
        'MyCreateDataSourceInputEnvironmentIdentifierString',   # OPTIONAL
      PublishOnImport => 1,                                     # OPTIONAL
      Recommendation  => {
        EnableBusinessNameGeneration => 1,                      # OPTIONAL
      },    # OPTIONAL
      Schedule => {
        Schedule => 'MyCronString',    # min: 1, max: 256; OPTIONAL
        Timezone => 'UTC'
        , # values: UTC, AFRICA_JOHANNESBURG, AMERICA_MONTREAL, AMERICA_SAO_PAULO, ASIA_BAHRAIN, ASIA_BANGKOK, ASIA_CALCUTTA, ASIA_DUBAI, ASIA_HONG_KONG, ASIA_JAKARTA, ASIA_KUALA_LUMPUR, ASIA_SEOUL, ASIA_SHANGHAI, ASIA_SINGAPORE, ASIA_TAIPEI, ASIA_TOKYO, AUSTRALIA_MELBOURNE, AUSTRALIA_SYDNEY, CANADA_CENTRAL, CET, CST6CDT, ETC_GMT, ETC_GMT0, ETC_GMT_ADD_0, ETC_GMT_ADD_1, ETC_GMT_ADD_10, ETC_GMT_ADD_11, ETC_GMT_ADD_12, ETC_GMT_ADD_2, ETC_GMT_ADD_3, ETC_GMT_ADD_4, ETC_GMT_ADD_5, ETC_GMT_ADD_6, ETC_GMT_ADD_7, ETC_GMT_ADD_8, ETC_GMT_ADD_9, ETC_GMT_NEG_0, ETC_GMT_NEG_1, ETC_GMT_NEG_10, ETC_GMT_NEG_11, ETC_GMT_NEG_12, ETC_GMT_NEG_13, ETC_GMT_NEG_14, ETC_GMT_NEG_2, ETC_GMT_NEG_3, ETC_GMT_NEG_4, ETC_GMT_NEG_5, ETC_GMT_NEG_6, ETC_GMT_NEG_7, ETC_GMT_NEG_8, ETC_GMT_NEG_9, EUROPE_DUBLIN, EUROPE_LONDON, EUROPE_PARIS, EUROPE_STOCKHOLM, EUROPE_ZURICH, ISRAEL, MEXICO_GENERAL, MST7MDT, PACIFIC_AUCKLAND, US_CENTRAL, US_EASTERN, US_MOUNTAIN, US_PACIFIC; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $AssetFormsOutput    = $CreateDataSourceOutput->AssetFormsOutput;
    my $Configuration       = $CreateDataSourceOutput->Configuration;
    my $ConnectionId        = $CreateDataSourceOutput->ConnectionId;
    my $CreatedAt           = $CreateDataSourceOutput->CreatedAt;
    my $Description         = $CreateDataSourceOutput->Description;
    my $DomainId            = $CreateDataSourceOutput->DomainId;
    my $EnableSetting       = $CreateDataSourceOutput->EnableSetting;
    my $EnvironmentId       = $CreateDataSourceOutput->EnvironmentId;
    my $ErrorMessage        = $CreateDataSourceOutput->ErrorMessage;
    my $Id                  = $CreateDataSourceOutput->Id;
    my $LastRunAt           = $CreateDataSourceOutput->LastRunAt;
    my $LastRunErrorMessage = $CreateDataSourceOutput->LastRunErrorMessage;
    my $LastRunStatus       = $CreateDataSourceOutput->LastRunStatus;
    my $Name                = $CreateDataSourceOutput->Name;
    my $ProjectId           = $CreateDataSourceOutput->ProjectId;
    my $PublishOnImport     = $CreateDataSourceOutput->PublishOnImport;
    my $Recommendation      = $CreateDataSourceOutput->Recommendation;
    my $Schedule            = $CreateDataSourceOutput->Schedule;
    my $Status              = $CreateDataSourceOutput->Status;
    my $Type                = $CreateDataSourceOutput->Type;
    my $UpdatedAt           = $CreateDataSourceOutput->UpdatedAt;

    # Returns a L<Paws::DataZone::CreateDataSourceOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/CreateDataSource>

=head1 ATTRIBUTES


=head2 AssetFormsInput => ArrayRef[L<Paws::DataZone::FormInput>]

The metadata forms that are to be attached to the assets that this data
source works with.



=head2 ClientToken => Str

A unique, case-sensitive identifier that is provided to ensure the
idempotency of the request.



=head2 Configuration => L<Paws::DataZone::DataSourceConfigurationInput>

Specifies the configuration of the data source. It can be set to either
C<glueRunConfiguration> or C<redshiftRunConfiguration>.



=head2 ConnectionIdentifier => Str

The ID of the connection.



=head2 Description => Str

The description of the data source.



=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the Amazon DataZone domain where the data source is created.



=head2 EnableSetting => Str

Specifies whether the data source is enabled.

Valid values are: C<"ENABLED">, C<"DISABLED">

=head2 EnvironmentIdentifier => Str

The unique identifier of the Amazon DataZone environment to which the
data source publishes assets.



=head2 B<REQUIRED> Name => Str

The name of the data source.



=head2 B<REQUIRED> ProjectIdentifier => Str

The identifier of the Amazon DataZone project in which you want to add
this data source.



=head2 PublishOnImport => Bool

Specifies whether the assets that this data source creates in the
inventory are to be also automatically published to the catalog.



=head2 Recommendation => L<Paws::DataZone::RecommendationConfiguration>

Specifies whether the business name generation is to be enabled for
this data source.



=head2 Schedule => L<Paws::DataZone::ScheduleConfiguration>

The schedule of the data source runs.



=head2 B<REQUIRED> Type => Str

The type of the data source. In Amazon DataZone, you can use data
sources to import technical metadata of assets (data) from the source
databases or data warehouses into Amazon DataZone. In the current
release of Amazon DataZone, you can create and run data sources for
Amazon Web Services Glue and Amazon Redshift.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDataSource in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

