
package Paws::Glue::TestConnection;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str');
  has ConnectionName => (is => 'ro', isa => 'Str');
  has TestConnectionInput => (is => 'ro', isa => 'Paws::Glue::TestConnectionInput');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TestConnection');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::TestConnectionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::TestConnection - Arguments for method TestConnection on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TestConnection on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method TestConnection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TestConnection.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $TestConnectionResponse = $glue->TestConnection(
      CatalogId           => 'MyCatalogIdString',    # OPTIONAL
      ConnectionName      => 'MyNameString',         # OPTIONAL
      TestConnectionInput => {
        ConnectionProperties => {
          'HOST' => 'MyValueString'
          , # key: values: HOST, PORT, USERNAME, PASSWORD, ENCRYPTED_PASSWORD, JDBC_DRIVER_JAR_URI, JDBC_DRIVER_CLASS_NAME, JDBC_ENGINE, JDBC_ENGINE_VERSION, CONFIG_FILES, INSTANCE_ID, JDBC_CONNECTION_URL, JDBC_ENFORCE_SSL, CUSTOM_JDBC_CERT, SKIP_CUSTOM_JDBC_CERT_VALIDATION, CUSTOM_JDBC_CERT_STRING, CONNECTION_URL, KAFKA_BOOTSTRAP_SERVERS, KAFKA_SSL_ENABLED, KAFKA_CUSTOM_CERT, KAFKA_SKIP_CUSTOM_CERT_VALIDATION, KAFKA_CLIENT_KEYSTORE, KAFKA_CLIENT_KEYSTORE_PASSWORD, KAFKA_CLIENT_KEY_PASSWORD, ENCRYPTED_KAFKA_CLIENT_KEYSTORE_PASSWORD, ENCRYPTED_KAFKA_CLIENT_KEY_PASSWORD, KAFKA_SASL_MECHANISM, KAFKA_SASL_PLAIN_USERNAME, KAFKA_SASL_PLAIN_PASSWORD, ENCRYPTED_KAFKA_SASL_PLAIN_PASSWORD, KAFKA_SASL_SCRAM_USERNAME, KAFKA_SASL_SCRAM_PASSWORD, KAFKA_SASL_SCRAM_SECRETS_ARN, ENCRYPTED_KAFKA_SASL_SCRAM_PASSWORD, KAFKA_SASL_GSSAPI_KEYTAB, KAFKA_SASL_GSSAPI_KRB5_CONF, KAFKA_SASL_GSSAPI_SERVICE, KAFKA_SASL_GSSAPI_PRINCIPAL, SECRET_ID, CONNECTOR_URL, CONNECTOR_TYPE, CONNECTOR_CLASS_NAME, ENDPOINT, ENDPOINT_TYPE, ROLE_ARN, REGION, WORKGROUP_NAME, CLUSTER_IDENTIFIER, DATABASE, value: min: 1, max: 1024
        },    # max: 100
        ConnectionType => 'JDBC'
        , # values: JDBC, SFTP, MONGODB, KAFKA, NETWORK, MARKETPLACE, CUSTOM, SALESFORCE, VIEW_VALIDATION_REDSHIFT, VIEW_VALIDATION_ATHENA, GOOGLEADS, GOOGLESHEETS, GOOGLEANALYTICS4, SERVICENOW, MARKETO, SAPODATA, ZENDESK, JIRACLOUD, NETSUITEERP, HUBSPOT, FACEBOOKADS, INSTAGRAMADS, ZOHOCRM, SALESFORCEPARDOT, SALESFORCEMARKETINGCLOUD, SLACK, STRIPE, INTERCOM, SNAPCHATADS
        AuthenticationConfiguration => {
          AuthenticationType =>
            'BASIC',    # values: BASIC, OAUTH2, CUSTOM, IAM; OPTIONAL
          BasicAuthenticationCredentials => {
            Password => 'MyPassword',    # max: 512; OPTIONAL
            Username => 'MyUsername',    # max: 512; OPTIONAL
          },    # OPTIONAL
          CustomAuthenticationCredentials => {
            'MyCredentialKey' => 'MyCredentialValue'
            ,    # key: min: 1, max: 128, value: min: 1, max: 2048
          },    # OPTIONAL
          KmsKeyArn        => 'MyKmsKeyArn',    # OPTIONAL
          OAuth2Properties => {
            AuthorizationCodeProperties => {
              AuthorizationCode =>
                'MyAuthorizationCode',          # min: 1, max: 4096; OPTIONAL
              RedirectUri => 'MyRedirectUri',   # max: 512; OPTIONAL
            },    # OPTIONAL
            OAuth2ClientApplication => {
              AWSManagedClientApplicationReference =>
                'MyAWSManagedClientApplicationReference',  # max: 2048; OPTIONAL
              UserManagedClientApplicationClientId =>
                'MyUserManagedClientApplicationClientId',  # max: 2048; OPTIONAL
            },    # OPTIONAL
            OAuth2Credentials => {
              AccessToken  => 'MyAccessToken',     # max: 4096; OPTIONAL
              JwtToken     => 'MyJwtToken',        # max: 8000; OPTIONAL
              RefreshToken => 'MyRefreshToken',    # max: 4096; OPTIONAL
              UserManagedClientApplicationClientSecret =>
                'MyUserManagedClientApplicationClientSecret'
              ,                                    # max: 512; OPTIONAL
            },    # OPTIONAL
            OAuth2GrantType => 'AUTHORIZATION_CODE'
            , # values: AUTHORIZATION_CODE, CLIENT_CREDENTIALS, JWT_BEARER; OPTIONAL
            TokenUrl              => 'MyTokenUrl',    # max: 256; OPTIONAL
            TokenUrlParametersMap => {
              'MyTokenUrlParameterKey' => 'MyTokenUrlParameterValue'
              ,    # key: min: 1, max: 128, value: min: 1, max: 512
            },    # OPTIONAL
          },    # OPTIONAL
          SecretArn => 'MySecretArn',    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/TestConnection>

=head1 ATTRIBUTES


=head2 CatalogId => Str

The catalog ID where the connection resides.



=head2 ConnectionName => Str

Optional. The name of the connection to test. If only name is provided,
the operation will get the connection and use that for testing.



=head2 TestConnectionInput => L<Paws::Glue::TestConnectionInput>

A structure that is used to specify testing a connection to a service.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TestConnection in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

