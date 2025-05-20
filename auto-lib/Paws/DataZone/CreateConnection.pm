
package Paws::DataZone::CreateConnection;
  use Moose;
  has AwsLocation => (is => 'ro', isa => 'Paws::DataZone::AwsLocation', traits => ['NameInRequest'], request_name => 'awsLocation');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has EnvironmentIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'environmentIdentifier', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Props => (is => 'ro', isa => 'Paws::DataZone::ConnectionPropertiesInput', traits => ['NameInRequest'], request_name => 'props');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateConnection');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/connections');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::CreateConnectionOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::CreateConnection - Arguments for method CreateConnection on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateConnection on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method CreateConnection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateConnection.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $CreateConnectionOutput = $datazone->CreateConnection(
      DomainIdentifier      => 'MyDomainId',
      EnvironmentIdentifier => 'MyEnvironmentId',
      Name                  => 'MyConnectionName',
      AwsLocation           => {
        AccessRole      => 'MyAwsLocationAccessRoleString', # OPTIONAL
        AwsAccountId    => 'MyAwsAccountId',                # OPTIONAL
        AwsRegion       => 'MyAwsRegion',                   # OPTIONAL
        IamConnectionId => 'MyConnectionId',                # max: 128; OPTIONAL
      },    # OPTIONAL
      ClientToken => 'MyString',                                    # OPTIONAL
      Description => 'MyCreateConnectionInputDescriptionString',    # OPTIONAL
      Props       => {
        AthenaProperties => {
          WorkgroupName =>
            'MyAthenaPropertiesInputWorkgroupNameString',    # max: 64; OPTIONAL
        },    # OPTIONAL
        GlueProperties => {
          GlueConnectionInput => {
            AthenaProperties => {
              'MyPropertyMapKeyString' => 'MyPropertyMapValueString'
              ,    # key: min: 1, max: 128, value: min: 1, max: 2048
            },    # OPTIONAL
            AuthenticationConfiguration => {
              AuthenticationType =>
                'BASIC',    # values: BASIC, OAUTH2, CUSTOM; OPTIONAL
              BasicAuthenticationCredentials => {
                Password => 'MyBasicAuthenticationCredentialsPasswordString'
                ,           # max: 512; OPTIONAL
                UserName => 'MyBasicAuthenticationCredentialsUserNameString'
                ,           # max: 512; OPTIONAL
              },    # OPTIONAL
              CustomAuthenticationCredentials => {
                'MyCredentialMapKeyString' => 'MyCredentialMapValueString'
                ,    # key: min: 1, max: 128, value: min: 1, max: 2048
              },    # OPTIONAL
              KmsKeyArn =>
                'MyAuthenticationConfigurationInputKmsKeyArnString',  # OPTIONAL
              OAuth2Properties => {
                AuthorizationCodeProperties => {
                  AuthorizationCode =>
                    'MyAuthorizationCodePropertiesAuthorizationCodeString'
                  ,    # min: 1, max: 4096; OPTIONAL
                  RedirectUri =>
                    'MyAuthorizationCodePropertiesRedirectUriString'
                  ,    # max: 512; OPTIONAL
                },    # OPTIONAL
                OAuth2ClientApplication => {
                  AWSManagedClientApplicationReference =>
'MyOAuth2ClientApplicationAWSManagedClientApplicationReferenceString'
                  ,    # max: 2048; OPTIONAL
                  UserManagedClientApplicationClientId =>
'MyOAuth2ClientApplicationUserManagedClientApplicationClientIdString'
                  ,    # max: 2048; OPTIONAL
                },    # OPTIONAL
                OAuth2Credentials => {
                  AccessToken => 'MyGlueOAuth2CredentialsAccessTokenString'
                  ,    # max: 4096; OPTIONAL
                  JwtToken => 'MyGlueOAuth2CredentialsJwtTokenString'
                  ,    # max: 8000; OPTIONAL
                  RefreshToken => 'MyGlueOAuth2CredentialsRefreshTokenString'
                  ,    # max: 4096; OPTIONAL
                  UserManagedClientApplicationClientSecret =>
'MyGlueOAuth2CredentialsUserManagedClientApplicationClientSecretString'
                  ,    # max: 512; OPTIONAL
                },    # OPTIONAL
                OAuth2GrantType => 'AUTHORIZATION_CODE'
                , # values: AUTHORIZATION_CODE, CLIENT_CREDENTIALS, JWT_BEARER; OPTIONAL
                TokenUrl =>
                  'MyOAuth2PropertiesTokenUrlString',    # max: 256; OPTIONAL
                TokenUrlParametersMap => {
                  'MyTokenUrlParametersMapKeyString' =>
                    'MyTokenUrlParametersMapValueString'
                  ,    # key: min: 1, max: 128, value: min: 1, max: 512
                },    # OPTIONAL
              },    # OPTIONAL
              SecretArn =>
                'MyAuthenticationConfigurationInputSecretArnString',  # OPTIONAL
            },    # OPTIONAL
            ConnectionProperties => {
              'MyString' => 'MyConnectionPropertiesValueString'
              ,    # , value: min: 1, max: 2048
            },    # OPTIONAL
            ConnectionType => 'SNOWFLAKE'
            , # values: SNOWFLAKE, BIGQUERY, DOCUMENTDB, DYNAMODB, MYSQL, OPENSEARCH, ORACLE, POSTGRESQL, REDSHIFT, SAPHANA, SQLSERVER, TERADATA, VERTICA; OPTIONAL
            Description   => 'MyString',
            MatchCriteria =>
              'MyGlueConnectionInputMatchCriteriaString',    # max: 10; OPTIONAL
            Name =>
              'MyGlueConnectionInputNameString',    # min: 1, max: 255; OPTIONAL
            PhysicalConnectionRequirements => {
              AvailabilityZone =>
                'MyPhysicalConnectionRequirementsAvailabilityZoneString'
              ,                                     # min: 1, max: 255; OPTIONAL
              SecurityGroupIdList => [
                'MySecurityGroupIdListMemberString', ...    # min: 1, max: 255
              ],    # max: 50; OPTIONAL
              SubnetId     => 'MySubnetId',    # max: 32; OPTIONAL
              SubnetIdList => [
                'MySubnetId', ...              # max: 32; OPTIONAL
              ],    # min: 1, max: 50; OPTIONAL
            },    # OPTIONAL
            PythonProperties => {
              'MyPropertyMapKeyString' => 'MyPropertyMapValueString'
              ,    # key: min: 1, max: 128, value: min: 1, max: 2048
            },    # OPTIONAL
            SparkProperties => {
              'MyPropertyMapKeyString' => 'MyPropertyMapValueString'
              ,    # key: min: 1, max: 128, value: min: 1, max: 2048
            },    # OPTIONAL
            ValidateCredentials            => 1,    # OPTIONAL
            ValidateForComputeEnvironments => [
              'SPARK', ...    # values: SPARK, ATHENA, PYTHON
            ],    # min: 1, max: 50; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        HyperPodProperties => {
          ClusterName =>
            'MyHyperPodPropertiesInputClusterNameString',    # max: 256

        },    # OPTIONAL
        IamProperties => {
          GlueLineageSyncEnabled => 1,    # OPTIONAL
        },    # OPTIONAL
        RedshiftProperties => {
          Credentials => {
            SecretArn => 'MyRedshiftCredentialsSecretArnString',    # OPTIONAL
            UsernamePassword => {
              Password => 'MyPassword',                             # max: 64
              Username => 'MyUsername',                             # max: 64

            },    # OPTIONAL
          },    # OPTIONAL
          DatabaseName =>
            'MyRedshiftPropertiesInputDatabaseNameString',  # max: 256; OPTIONAL
          Host => 'MyRedshiftPropertiesInputHostString',    # max: 256; OPTIONAL
          LineageSync => {
            Enabled  => 1,                                  # OPTIONAL
            Schedule => {
              Schedule => 'MyLineageSyncScheduleScheduleString',    # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          Port    => 1,    # OPTIONAL
          Storage => {
            ClusterName => 'MyRedshiftStoragePropertiesClusterNameString'
            ,              # max: 256; OPTIONAL
            WorkgroupName => 'MyRedshiftStoragePropertiesWorkgroupNameString'
            ,              # max: 256; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        SparkEmrProperties => {
          ComputeArn =>
            'MySparkEmrPropertiesInputComputeArnString',    # max: 256; OPTIONAL
          InstanceProfileArn =>
            'MySparkEmrPropertiesInputInstanceProfileArnString'
          ,                                                 # max: 256; OPTIONAL
          JavaVirtualEnv => 'MySparkEmrPropertiesInputJavaVirtualEnvString'
          ,                                                 # max: 256; OPTIONAL
          LogUri =>
            'MySparkEmrPropertiesInputLogUriString',        # max: 256; OPTIONAL
          PythonVirtualEnv =>
            'MySparkEmrPropertiesInputPythonVirtualEnvString'
          ,                                                 # max: 256; OPTIONAL
          RuntimeRole =>
            'MySparkEmrPropertiesInputRuntimeRoleString',    # OPTIONAL
          TrustedCertificatesS3Uri =>
            'MySparkEmrPropertiesInputTrustedCertificatesS3UriString'
          ,    # max: 256; OPTIONAL
        },    # OPTIONAL
        SparkGlueProperties => {
          AdditionalArgs     => { Connection => 'MyString', },    # OPTIONAL
          GlueConnectionName =>
            'MySparkGluePropertiesInputGlueConnectionNameString'
          ,    # max: 256; OPTIONAL
          GlueVersion =>
            'MySparkGluePropertiesInputGlueVersionString',  # max: 256; OPTIONAL
          IdleTimeout    => 1,                              # OPTIONAL
          JavaVirtualEnv => 'MySparkGluePropertiesInputJavaVirtualEnvString'
          ,                                                 # max: 256; OPTIONAL
          NumberOfWorkers  => 1,                            # OPTIONAL
          PythonVirtualEnv =>
            'MySparkGluePropertiesInputPythonVirtualEnvString'
          ,                                                 # max: 256; OPTIONAL
          WorkerType =>
            'MySparkGluePropertiesInputWorkerTypeString',   # max: 256; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $ConnectionId      = $CreateConnectionOutput->ConnectionId;
    my $Description       = $CreateConnectionOutput->Description;
    my $DomainId          = $CreateConnectionOutput->DomainId;
    my $DomainUnitId      = $CreateConnectionOutput->DomainUnitId;
    my $EnvironmentId     = $CreateConnectionOutput->EnvironmentId;
    my $Name              = $CreateConnectionOutput->Name;
    my $PhysicalEndpoints = $CreateConnectionOutput->PhysicalEndpoints;
    my $ProjectId         = $CreateConnectionOutput->ProjectId;
    my $Props             = $CreateConnectionOutput->Props;
    my $Type              = $CreateConnectionOutput->Type;

    # Returns a L<Paws::DataZone::CreateConnectionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/CreateConnection>

=head1 ATTRIBUTES


=head2 AwsLocation => L<Paws::DataZone::AwsLocation>

The location where the connection is created.



=head2 ClientToken => Str

A unique, case-sensitive identifier that is provided to ensure the
idempotency of the request.



=head2 Description => Str

A connection description.



=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the domain where the connection is created.



=head2 B<REQUIRED> EnvironmentIdentifier => Str

The ID of the environment where the connection is created.



=head2 B<REQUIRED> Name => Str

The connection name.



=head2 Props => L<Paws::DataZone::ConnectionPropertiesInput>

The connection props.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateConnection in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

