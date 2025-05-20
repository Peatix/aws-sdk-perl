
package Paws::Appflow::CreateConnectorProfile;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has ConnectionMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectionMode', required => 1);
  has ConnectorLabel => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectorLabel');
  has ConnectorProfileConfig => (is => 'ro', isa => 'Paws::Appflow::ConnectorProfileConfig', traits => ['NameInRequest'], request_name => 'connectorProfileConfig', required => 1);
  has ConnectorProfileName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectorProfileName', required => 1);
  has ConnectorType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectorType', required => 1);
  has KmsArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsArn');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateConnectorProfile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/create-connector-profile');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Appflow::CreateConnectorProfileResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Appflow::CreateConnectorProfile - Arguments for method CreateConnectorProfile on L<Paws::Appflow>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateConnectorProfile on the
L<Amazon Appflow|Paws::Appflow> service. Use the attributes of this class
as arguments to method CreateConnectorProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateConnectorProfile.

=head1 SYNOPSIS

    my $appflow = Paws->service('Appflow');
    my $CreateConnectorProfileResponse = $appflow->CreateConnectorProfile(
      ConnectionMode         => 'Public',
      ConnectorProfileConfig => {
        ConnectorProfileProperties => {
          Amplitude => {

          },    # OPTIONAL
          CustomConnector => {
            OAuth2Properties => {
              OAuth2GrantType => 'CLIENT_CREDENTIALS'
              ,    # values: CLIENT_CREDENTIALS, AUTHORIZATION_CODE, JWT_BEARER
              TokenUrl                 => 'MyTokenUrl',    # max: 256
              TokenUrlCustomProperties => {
                'MyCustomPropertyKey' => 'MyCustomPropertyValue'
                ,    # key: min: 1, max: 128, value: max: 2048
              },    # max: 50; OPTIONAL
            },    # OPTIONAL
            ProfileProperties => {
              'MyProfilePropertyKey' => 'MyProfilePropertyValue'
              ,    # key: min: 1, max: 128, value: max: 2048
            },    # max: 50; OPTIONAL
          },    # OPTIONAL
          Datadog => {
            InstanceUrl => 'MyInstanceUrl',    # max: 256

          },    # OPTIONAL
          Dynatrace => {
            InstanceUrl => 'MyInstanceUrl',    # max: 256

          },    # OPTIONAL
          GoogleAnalytics => {

          },    # OPTIONAL
          Honeycode => {

          },    # OPTIONAL
          InforNexus => {
            InstanceUrl => 'MyInstanceUrl',    # max: 256

          },    # OPTIONAL
          Marketo => {
            InstanceUrl => 'MyInstanceUrl',    # max: 256

          },    # OPTIONAL
          Pardot => {
            BusinessUnitId       => 'MyBusinessUnitId',    # max: 18; OPTIONAL
            InstanceUrl          => 'MyInstanceUrl',       # max: 256
            IsSandboxEnvironment => 1,                     # OPTIONAL
          },    # OPTIONAL
          Redshift => {
            BucketName           => 'MyBucketName',         # min: 3, max: 63
            RoleArn              => 'MyRoleArn',            # max: 512
            BucketPrefix         => 'MyBucketPrefix',       # max: 512; OPTIONAL
            ClusterIdentifier    => 'MyClusterIdentifier',  # max: 512; OPTIONAL
            DataApiRoleArn       => 'MyDataApiRoleArn',     # max: 512; OPTIONAL
            DatabaseName         => 'MyDatabaseName',       # max: 512; OPTIONAL
            DatabaseUrl          => 'MyDatabaseUrl',        # max: 512; OPTIONAL
            IsRedshiftServerless => 1,                      # OPTIONAL
            WorkgroupName        => 'MyWorkgroupName',      # max: 512; OPTIONAL
          },    # OPTIONAL
          SAPOData => {
            ApplicationHostUrl     => 'MyApplicationHostUrl',        # max: 256
            ApplicationServicePath => 'MyApplicationServicePath',    # max: 512
            ClientNumber           => 'MyClientNumber',     # min: 3, max: 3
            PortNumber             => 1,                    # min: 1, max: 65535
            DisableSSO             => 1,                    # OPTIONAL
            LogonLanguage          => 'MyLogonLanguage',    # max: 2; OPTIONAL
            OAuthProperties        => {
              AuthCodeUrl => 'MyAuthCodeUrl',               # max: 256
              OAuthScopes => [
                'MyOAuthScope', ...                         # max: 128
              ],
              TokenUrl => 'MyTokenUrl',                     # max: 256

            },    # OPTIONAL
            PrivateLinkServiceName =>
              'MyPrivateLinkServiceName',    # max: 512; OPTIONAL
          },    # OPTIONAL
          Salesforce => {
            InstanceUrl          => 'MyInstanceUrl',           # max: 256
            IsSandboxEnvironment => 1,                         # OPTIONAL
            UsePrivateLinkForMetadataAndAuthorization => 1,    # OPTIONAL
          },    # OPTIONAL
          ServiceNow => {
            InstanceUrl => 'MyInstanceUrl',    # max: 256

          },    # OPTIONAL
          Singular => {

          },    # OPTIONAL
          Slack => {
            InstanceUrl => 'MyInstanceUrl',    # max: 256

          },    # OPTIONAL
          Snowflake => {
            BucketName             => 'MyBucketName',      # min: 3, max: 63
            Stage                  => 'MyStage',           # max: 512
            Warehouse              => 'MyWarehouse',       # max: 512
            AccountName            => 'MyAccountName',     # max: 512; OPTIONAL
            BucketPrefix           => 'MyBucketPrefix',    # max: 512; OPTIONAL
            PrivateLinkServiceName =>
              'MyPrivateLinkServiceName',                  # max: 512; OPTIONAL
            Region => 'MyRegion',                          # max: 64; OPTIONAL
          },    # OPTIONAL
          Trendmicro => {

          },    # OPTIONAL
          Veeva => {
            InstanceUrl => 'MyInstanceUrl',    # max: 256

          },    # OPTIONAL
          Zendesk => {
            InstanceUrl => 'MyInstanceUrl',    # max: 256

          },    # OPTIONAL
        },
        ConnectorProfileCredentials => {
          Amplitude => {
            ApiKey    => 'MyApiKey',       # max: 256
            SecretKey => 'MySecretKey',    # max: 256

          },    # OPTIONAL
          CustomConnector => {
            AuthenticationType =>
              'OAUTH2',    # values: OAUTH2, APIKEY, BASIC, CUSTOM
            ApiKey => {
              ApiKey       => 'MyApiKey',          # max: 256
              ApiSecretKey => 'MyApiSecretKey',    # max: 256; OPTIONAL
            },    # OPTIONAL
            Basic => {
              Password => 'MyPassword',    # max: 512
              Username => 'MyUsername',    # max: 512

            },    # OPTIONAL
            Custom => {
              CustomAuthenticationType =>
                'MyCustomAuthenticationType',    # max: 256
              CredentialsMap => {
                'MyCredentialsMapKey' => 'MyCredentialsMapValue'
                ,    # key: min: 1, max: 128, value: max: 2048
              },    # max: 50; OPTIONAL
            },    # OPTIONAL
            Oauth2 => {
              AccessToken  => 'MyAccessToken',     # max: 4096; OPTIONAL
              ClientId     => 'MyClientId',        # max: 512; OPTIONAL
              ClientSecret => 'MyClientSecret',    # max: 512; OPTIONAL
              OAuthRequest => {
                AuthCode    => 'MyAuthCode',       # max: 4096; OPTIONAL
                RedirectUri => 'MyRedirectUri',    # max: 512; OPTIONAL
              },    # OPTIONAL
              RefreshToken => 'MyRefreshToken',    # max: 4096; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          Datadog => {
            ApiKey         => 'MyApiKey',            # max: 256
            ApplicationKey => 'MyApplicationKey',    # max: 512

          },    # OPTIONAL
          Dynatrace => {
            ApiToken => 'MyApiToken',    # max: 256

          },    # OPTIONAL
          GoogleAnalytics => {
            ClientId     => 'MyClientId',        # max: 512; OPTIONAL
            ClientSecret => 'MyClientSecret',    # max: 512; OPTIONAL
            AccessToken  => 'MyAccessToken',     # max: 4096; OPTIONAL
            OAuthRequest => {
              AuthCode    => 'MyAuthCode',       # max: 4096; OPTIONAL
              RedirectUri => 'MyRedirectUri',    # max: 512; OPTIONAL
            },    # OPTIONAL
            RefreshToken => 'MyRefreshToken',    # max: 4096; OPTIONAL
          },    # OPTIONAL
          Honeycode => {
            AccessToken  => 'MyAccessToken',    # max: 4096; OPTIONAL
            OAuthRequest => {
              AuthCode    => 'MyAuthCode',       # max: 4096; OPTIONAL
              RedirectUri => 'MyRedirectUri',    # max: 512; OPTIONAL
            },    # OPTIONAL
            RefreshToken => 'MyRefreshToken',    # max: 4096; OPTIONAL
          },    # OPTIONAL
          InforNexus => {
            AccessKeyId     => 'MyAccessKeyId',    # max: 256
            Datakey         => 'MyKey',            # max: 512
            SecretAccessKey => 'MyKey',            # max: 512
            UserId          => 'MyUsername',       # max: 512

          },    # OPTIONAL
          Marketo => {
            ClientId     => 'MyClientId',        # max: 512; OPTIONAL
            ClientSecret => 'MyClientSecret',    # max: 512; OPTIONAL
            AccessToken  => 'MyAccessToken',     # max: 4096; OPTIONAL
            OAuthRequest => {
              AuthCode    => 'MyAuthCode',       # max: 4096; OPTIONAL
              RedirectUri => 'MyRedirectUri',    # max: 512; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          Pardot => {
            AccessToken          => 'MyAccessToken',    # max: 4096; OPTIONAL
            ClientCredentialsArn =>
              'MyClientCredentialsArn',    # min: 20, max: 2048; OPTIONAL
            OAuthRequest => {
              AuthCode    => 'MyAuthCode',       # max: 4096; OPTIONAL
              RedirectUri => 'MyRedirectUri',    # max: 512; OPTIONAL
            },    # OPTIONAL
            RefreshToken => 'MyRefreshToken',    # max: 4096; OPTIONAL
          },    # OPTIONAL
          Redshift => {
            Password => 'MyPassword',    # max: 512
            Username => 'MyString',      # max: 2048; OPTIONAL
          },    # OPTIONAL
          SAPOData => {
            BasicAuthCredentials => {
              Password => 'MyPassword',    # max: 512
              Username => 'MyUsername',    # max: 512

            },    # OPTIONAL
            OAuthCredentials => {
              ClientId     => 'MyClientId',        # max: 512; OPTIONAL
              ClientSecret => 'MyClientSecret',    # max: 512; OPTIONAL
              AccessToken  => 'MyAccessToken',     # max: 4096; OPTIONAL
              OAuthRequest => {
                AuthCode    => 'MyAuthCode',       # max: 4096; OPTIONAL
                RedirectUri => 'MyRedirectUri',    # max: 512; OPTIONAL
              },    # OPTIONAL
              RefreshToken => 'MyRefreshToken',    # max: 4096; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          Salesforce => {
            AccessToken          => 'MyAccessToken',    # max: 4096; OPTIONAL
            ClientCredentialsArn =>
              'MyClientCredentialsArn',    # min: 20, max: 2048; OPTIONAL
            JwtToken        => 'MyJwtToken',          # max: 8000; OPTIONAL
            OAuth2GrantType => 'CLIENT_CREDENTIALS'
            ,    # values: CLIENT_CREDENTIALS, AUTHORIZATION_CODE, JWT_BEARER
            OAuthRequest => {
              AuthCode    => 'MyAuthCode',       # max: 4096; OPTIONAL
              RedirectUri => 'MyRedirectUri',    # max: 512; OPTIONAL
            },    # OPTIONAL
            RefreshToken => 'MyRefreshToken',    # max: 4096; OPTIONAL
          },    # OPTIONAL
          ServiceNow => {
            OAuth2Credentials => {
              AccessToken  => 'MyAccessToken',     # max: 4096; OPTIONAL
              ClientId     => 'MyClientId',        # max: 512; OPTIONAL
              ClientSecret => 'MyClientSecret',    # max: 512; OPTIONAL
              OAuthRequest => {
                AuthCode    => 'MyAuthCode',       # max: 4096; OPTIONAL
                RedirectUri => 'MyRedirectUri',    # max: 512; OPTIONAL
              },    # OPTIONAL
              RefreshToken => 'MyRefreshToken',    # max: 4096; OPTIONAL
            },    # OPTIONAL
            Password => 'MyPassword',    # max: 512
            Username => 'MyUsername',    # max: 512
          },    # OPTIONAL
          Singular => {
            ApiKey => 'MyApiKey',    # max: 256

          },    # OPTIONAL
          Slack => {
            ClientId     => 'MyClientId',        # max: 512; OPTIONAL
            ClientSecret => 'MyClientSecret',    # max: 512; OPTIONAL
            AccessToken  => 'MyAccessToken',     # max: 4096; OPTIONAL
            OAuthRequest => {
              AuthCode    => 'MyAuthCode',       # max: 4096; OPTIONAL
              RedirectUri => 'MyRedirectUri',    # max: 512; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          Snowflake => {
            Password => 'MyPassword',    # max: 512
            Username => 'MyUsername',    # max: 512

          },    # OPTIONAL
          Trendmicro => {
            ApiSecretKey => 'MyApiSecretKey',    # max: 256; OPTIONAL

          },    # OPTIONAL
          Veeva => {
            Password => 'MyPassword',    # max: 512
            Username => 'MyUsername',    # max: 512

          },    # OPTIONAL
          Zendesk => {
            ClientId     => 'MyClientId',        # max: 512; OPTIONAL
            ClientSecret => 'MyClientSecret',    # max: 512; OPTIONAL
            AccessToken  => 'MyAccessToken',     # max: 4096; OPTIONAL
            OAuthRequest => {
              AuthCode    => 'MyAuthCode',       # max: 4096; OPTIONAL
              RedirectUri => 'MyRedirectUri',    # max: 512; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },
      ConnectorProfileName => 'MyConnectorProfileName',
      ConnectorType        => 'Salesforce',
      ClientToken          => 'MyClientToken',            # OPTIONAL
      ConnectorLabel       => 'MyConnectorLabel',         # OPTIONAL
      KmsArn               => 'MyKMSArn',                 # OPTIONAL
    );

    # Results:
    my $ConnectorProfileArn =
      $CreateConnectorProfileResponse->ConnectorProfileArn;

    # Returns a L<Paws::Appflow::CreateConnectorProfileResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appflow/CreateConnectorProfile>

=head1 ATTRIBUTES


=head2 ClientToken => Str

The C<clientToken> parameter is an idempotency token. It ensures that
your C<CreateConnectorProfile> request completes only once. You choose
the value to pass. For example, if you don't receive a response from
your request, you can safely retry the request with the same
C<clientToken> parameter value.

If you omit a C<clientToken> value, the Amazon Web Services SDK that
you are using inserts a value for you. This way, the SDK can safely
retry requests multiple times after a network error. You must provide
your own value for other use cases.

If you specify input parameters that differ from your first request, an
error occurs. If you use a different value for C<clientToken>, Amazon
AppFlow considers it a new call to C<CreateConnectorProfile>. The token
is active for 8 hours.



=head2 B<REQUIRED> ConnectionMode => Str

Indicates the connection mode and specifies whether it is public or
private. Private flows use Amazon Web Services PrivateLink to route
data over Amazon Web Services infrastructure without exposing it to the
public internet.

Valid values are: C<"Public">, C<"Private">

=head2 ConnectorLabel => Str

The label of the connector. The label is unique for each
C<ConnectorRegistration> in your Amazon Web Services account. Only
needed if calling for CUSTOMCONNECTOR connector type/.



=head2 B<REQUIRED> ConnectorProfileConfig => L<Paws::Appflow::ConnectorProfileConfig>

Defines the connector-specific configuration and credentials.



=head2 B<REQUIRED> ConnectorProfileName => Str

The name of the connector profile. The name is unique for each
C<ConnectorProfile> in your Amazon Web Services account.



=head2 B<REQUIRED> ConnectorType => Str

The type of connector, such as Salesforce, Amplitude, and so on.

Valid values are: C<"Salesforce">, C<"Singular">, C<"Slack">, C<"Redshift">, C<"S3">, C<"Marketo">, C<"Googleanalytics">, C<"Zendesk">, C<"Servicenow">, C<"Datadog">, C<"Trendmicro">, C<"Snowflake">, C<"Dynatrace">, C<"Infornexus">, C<"Amplitude">, C<"Veeva">, C<"EventBridge">, C<"LookoutMetrics">, C<"Upsolver">, C<"Honeycode">, C<"CustomerProfiles">, C<"SAPOData">, C<"CustomConnector">, C<"Pardot">

=head2 KmsArn => Str

The ARN (Amazon Resource Name) of the Key Management Service (KMS) key
you provide for encryption. This is required if you do not want to use
the Amazon AppFlow-managed KMS key. If you don't provide anything here,
Amazon AppFlow uses the Amazon AppFlow-managed KMS key.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateConnectorProfile in L<Paws::Appflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

