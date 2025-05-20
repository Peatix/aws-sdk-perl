
package Paws::DataZone::UpdateDataSource;
  use Moose;
  has AssetFormsInput => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::FormInput]', traits => ['NameInRequest'], request_name => 'assetFormsInput');
  has Configuration => (is => 'ro', isa => 'Paws::DataZone::DataSourceConfigurationInput', traits => ['NameInRequest'], request_name => 'configuration');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has EnableSetting => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'enableSetting');
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'identifier', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has PublishOnImport => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'publishOnImport');
  has Recommendation => (is => 'ro', isa => 'Paws::DataZone::RecommendationConfiguration', traits => ['NameInRequest'], request_name => 'recommendation');
  has RetainPermissionsOnRevokeFailure => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'retainPermissionsOnRevokeFailure');
  has Schedule => (is => 'ro', isa => 'Paws::DataZone::ScheduleConfiguration', traits => ['NameInRequest'], request_name => 'schedule');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDataSource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/data-sources/{identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::UpdateDataSourceOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::UpdateDataSource - Arguments for method UpdateDataSource on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDataSource on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method UpdateDataSource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDataSource.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $UpdateDataSourceOutput = $datazone->UpdateDataSource(
      DomainIdentifier => 'MyDomainId',
      Identifier       => 'MyDataSourceId',
      AssetFormsInput  => [
        {
          FormName       => 'MyFormName',                # min: 1, max: 128
          Content        => 'MyFormInputContentString',  # max: 300000; OPTIONAL
          TypeIdentifier => 'MyFormTypeIdentifier', # min: 1, max: 385; OPTIONAL
          TypeRevision   => 'MyRevisionInput',      # min: 1, max: 64; OPTIONAL
        },
        ...
      ],    # OPTIONAL
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
      Description     => 'MyDescription',    # OPTIONAL
      EnableSetting   => 'ENABLED',          # OPTIONAL
      Name            => 'MyName',           # OPTIONAL
      PublishOnImport => 1,                  # OPTIONAL
      Recommendation  => {
        EnableBusinessNameGeneration => 1,    # OPTIONAL
      },    # OPTIONAL
      RetainPermissionsOnRevokeFailure => 1,    # OPTIONAL
      Schedule                         => {
        Schedule => 'MyCronString',             # min: 1, max: 256; OPTIONAL
        Timezone => 'UTC'
        , # values: UTC, AFRICA_JOHANNESBURG, AMERICA_MONTREAL, AMERICA_SAO_PAULO, ASIA_BAHRAIN, ASIA_BANGKOK, ASIA_CALCUTTA, ASIA_DUBAI, ASIA_HONG_KONG, ASIA_JAKARTA, ASIA_KUALA_LUMPUR, ASIA_SEOUL, ASIA_SHANGHAI, ASIA_SINGAPORE, ASIA_TAIPEI, ASIA_TOKYO, AUSTRALIA_MELBOURNE, AUSTRALIA_SYDNEY, CANADA_CENTRAL, CET, CST6CDT, ETC_GMT, ETC_GMT0, ETC_GMT_ADD_0, ETC_GMT_ADD_1, ETC_GMT_ADD_10, ETC_GMT_ADD_11, ETC_GMT_ADD_12, ETC_GMT_ADD_2, ETC_GMT_ADD_3, ETC_GMT_ADD_4, ETC_GMT_ADD_5, ETC_GMT_ADD_6, ETC_GMT_ADD_7, ETC_GMT_ADD_8, ETC_GMT_ADD_9, ETC_GMT_NEG_0, ETC_GMT_NEG_1, ETC_GMT_NEG_10, ETC_GMT_NEG_11, ETC_GMT_NEG_12, ETC_GMT_NEG_13, ETC_GMT_NEG_14, ETC_GMT_NEG_2, ETC_GMT_NEG_3, ETC_GMT_NEG_4, ETC_GMT_NEG_5, ETC_GMT_NEG_6, ETC_GMT_NEG_7, ETC_GMT_NEG_8, ETC_GMT_NEG_9, EUROPE_DUBLIN, EUROPE_LONDON, EUROPE_PARIS, EUROPE_STOCKHOLM, EUROPE_ZURICH, ISRAEL, MEXICO_GENERAL, MST7MDT, PACIFIC_AUCKLAND, US_CENTRAL, US_EASTERN, US_MOUNTAIN, US_PACIFIC; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $AssetFormsOutput    = $UpdateDataSourceOutput->AssetFormsOutput;
    my $Configuration       = $UpdateDataSourceOutput->Configuration;
    my $ConnectionId        = $UpdateDataSourceOutput->ConnectionId;
    my $CreatedAt           = $UpdateDataSourceOutput->CreatedAt;
    my $Description         = $UpdateDataSourceOutput->Description;
    my $DomainId            = $UpdateDataSourceOutput->DomainId;
    my $EnableSetting       = $UpdateDataSourceOutput->EnableSetting;
    my $EnvironmentId       = $UpdateDataSourceOutput->EnvironmentId;
    my $ErrorMessage        = $UpdateDataSourceOutput->ErrorMessage;
    my $Id                  = $UpdateDataSourceOutput->Id;
    my $LastRunAt           = $UpdateDataSourceOutput->LastRunAt;
    my $LastRunErrorMessage = $UpdateDataSourceOutput->LastRunErrorMessage;
    my $LastRunStatus       = $UpdateDataSourceOutput->LastRunStatus;
    my $Name                = $UpdateDataSourceOutput->Name;
    my $ProjectId           = $UpdateDataSourceOutput->ProjectId;
    my $PublishOnImport     = $UpdateDataSourceOutput->PublishOnImport;
    my $Recommendation      = $UpdateDataSourceOutput->Recommendation;
    my $RetainPermissionsOnRevokeFailure =
      $UpdateDataSourceOutput->RetainPermissionsOnRevokeFailure;
    my $Schedule        = $UpdateDataSourceOutput->Schedule;
    my $SelfGrantStatus = $UpdateDataSourceOutput->SelfGrantStatus;
    my $Status          = $UpdateDataSourceOutput->Status;
    my $Type            = $UpdateDataSourceOutput->Type;
    my $UpdatedAt       = $UpdateDataSourceOutput->UpdatedAt;

    # Returns a L<Paws::DataZone::UpdateDataSourceOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/UpdateDataSource>

=head1 ATTRIBUTES


=head2 AssetFormsInput => ArrayRef[L<Paws::DataZone::FormInput>]

The asset forms to be updated as part of the C<UpdateDataSource>
action.



=head2 Configuration => L<Paws::DataZone::DataSourceConfigurationInput>

The configuration to be updated as part of the C<UpdateDataSource>
action.



=head2 Description => Str

The description to be updated as part of the C<UpdateDataSource>
action.



=head2 B<REQUIRED> DomainIdentifier => Str

The identifier of the domain in which to update a data source.



=head2 EnableSetting => Str

The enable setting to be updated as part of the C<UpdateDataSource>
action.

Valid values are: C<"ENABLED">, C<"DISABLED">

=head2 B<REQUIRED> Identifier => Str

The identifier of the data source to be updated.



=head2 Name => Str

The name to be updated as part of the C<UpdateDataSource> action.



=head2 PublishOnImport => Bool

The publish on import setting to be updated as part of the
C<UpdateDataSource> action.



=head2 Recommendation => L<Paws::DataZone::RecommendationConfiguration>

The recommendation to be updated as part of the C<UpdateDataSource>
action.



=head2 RetainPermissionsOnRevokeFailure => Bool

Specifies that the granted permissions are retained in case of a
self-subscribe functionality failure for a data source.



=head2 Schedule => L<Paws::DataZone::ScheduleConfiguration>

The schedule to be updated as part of the C<UpdateDataSource> action.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDataSource in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

