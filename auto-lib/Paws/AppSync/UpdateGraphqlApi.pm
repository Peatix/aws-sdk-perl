
package Paws::AppSync::UpdateGraphqlApi;
  use Moose;
  has AdditionalAuthenticationProviders => (is => 'ro', isa => 'ArrayRef[Paws::AppSync::AdditionalAuthenticationProvider]', traits => ['NameInRequest'], request_name => 'additionalAuthenticationProviders');
  has ApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'apiId', required => 1);
  has AuthenticationType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'authenticationType', required => 1);
  has EnhancedMetricsConfig => (is => 'ro', isa => 'Paws::AppSync::EnhancedMetricsConfig', traits => ['NameInRequest'], request_name => 'enhancedMetricsConfig');
  has IntrospectionConfig => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'introspectionConfig');
  has LambdaAuthorizerConfig => (is => 'ro', isa => 'Paws::AppSync::LambdaAuthorizerConfig', traits => ['NameInRequest'], request_name => 'lambdaAuthorizerConfig');
  has LogConfig => (is => 'ro', isa => 'Paws::AppSync::LogConfig', traits => ['NameInRequest'], request_name => 'logConfig');
  has MergedApiExecutionRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'mergedApiExecutionRoleArn');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has OpenIDConnectConfig => (is => 'ro', isa => 'Paws::AppSync::OpenIDConnectConfig', traits => ['NameInRequest'], request_name => 'openIDConnectConfig');
  has OwnerContact => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ownerContact');
  has QueryDepthLimit => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'queryDepthLimit');
  has ResolverCountLimit => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'resolverCountLimit');
  has UserPoolConfig => (is => 'ro', isa => 'Paws::AppSync::UserPoolConfig', traits => ['NameInRequest'], request_name => 'userPoolConfig');
  has XrayEnabled => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'xrayEnabled');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateGraphqlApi');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/apis/{apiId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppSync::UpdateGraphqlApiResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::UpdateGraphqlApi - Arguments for method UpdateGraphqlApi on L<Paws::AppSync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateGraphqlApi on the
L<AWS AppSync|Paws::AppSync> service. Use the attributes of this class
as arguments to method UpdateGraphqlApi.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateGraphqlApi.

=head1 SYNOPSIS

    my $appsync = Paws->service('AppSync');
    my $UpdateGraphqlApiResponse = $appsync->UpdateGraphqlApi(
      ApiId                             => 'MyString',
      AuthenticationType                => 'API_KEY',
      Name                              => 'MyString',
      AdditionalAuthenticationProviders => [
        {
          AuthenticationType => 'API_KEY'
          , # values: API_KEY, AWS_IAM, AMAZON_COGNITO_USER_POOLS, OPENID_CONNECT, AWS_LAMBDA
          LambdaAuthorizerConfig => {
            AuthorizerUri                => 'MyString',
            AuthorizerResultTtlInSeconds => 1,            # max: 3600; OPTIONAL
            IdentityValidationExpression => 'MyString',
          },    # OPTIONAL
          OpenIDConnectConfig => {
            Issuer   => 'MyString',
            AuthTTL  => 1,            # OPTIONAL
            ClientId => 'MyString',
            IatTTL   => 1,            # OPTIONAL
          },    # OPTIONAL
          UserPoolConfig => {
            AwsRegion        => 'MyString',
            UserPoolId       => 'MyString',
            AppIdClientRegex => 'MyString',
          },    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      EnhancedMetricsConfig => {
        DataSourceLevelMetricsBehavior => 'FULL_REQUEST_DATA_SOURCE_METRICS'
        ,    # values: FULL_REQUEST_DATA_SOURCE_METRICS, PER_DATA_SOURCE_METRICS
        OperationLevelMetricsConfig  => 'ENABLED',   # values: ENABLED, DISABLED
        ResolverLevelMetricsBehavior => 'FULL_REQUEST_RESOLVER_METRICS'
        ,    # values: FULL_REQUEST_RESOLVER_METRICS, PER_RESOLVER_METRICS

      },    # OPTIONAL
      IntrospectionConfig    => 'ENABLED',    # OPTIONAL
      LambdaAuthorizerConfig => {
        AuthorizerUri                => 'MyString',
        AuthorizerResultTtlInSeconds => 1,            # max: 3600; OPTIONAL
        IdentityValidationExpression => 'MyString',
      },    # OPTIONAL
      LogConfig => {
        CloudWatchLogsRoleArn => 'MyString',
        FieldLogLevel         => 'NONE', # values: NONE, ERROR, ALL, INFO, DEBUG
        ExcludeVerboseContent => 1,      # OPTIONAL
      },    # OPTIONAL
      MergedApiExecutionRoleArn => 'MyString',    # OPTIONAL
      OpenIDConnectConfig       => {
        Issuer   => 'MyString',
        AuthTTL  => 1,                            # OPTIONAL
        ClientId => 'MyString',
        IatTTL   => 1,                            # OPTIONAL
      },    # OPTIONAL
      OwnerContact       => 'MyString',    # OPTIONAL
      QueryDepthLimit    => 1,             # OPTIONAL
      ResolverCountLimit => 1,             # OPTIONAL
      UserPoolConfig     => {
        AwsRegion        => 'MyString',
        DefaultAction    => 'ALLOW',       # values: ALLOW, DENY
        UserPoolId       => 'MyString',
        AppIdClientRegex => 'MyString',
      },    # OPTIONAL
      XrayEnabled => 1,    # OPTIONAL
    );

    # Results:
    my $GraphqlApi = $UpdateGraphqlApiResponse->GraphqlApi;

    # Returns a L<Paws::AppSync::UpdateGraphqlApiResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appsync/UpdateGraphqlApi>

=head1 ATTRIBUTES


=head2 AdditionalAuthenticationProviders => ArrayRef[L<Paws::AppSync::AdditionalAuthenticationProvider>]

A list of additional authentication providers for the C<GraphqlApi>
API.



=head2 B<REQUIRED> ApiId => Str

The API ID.



=head2 B<REQUIRED> AuthenticationType => Str

The new authentication type for the C<GraphqlApi> object.

Valid values are: C<"API_KEY">, C<"AWS_IAM">, C<"AMAZON_COGNITO_USER_POOLS">, C<"OPENID_CONNECT">, C<"AWS_LAMBDA">

=head2 EnhancedMetricsConfig => L<Paws::AppSync::EnhancedMetricsConfig>

The C<enhancedMetricsConfig> object.



=head2 IntrospectionConfig => Str

Sets the value of the GraphQL API to enable (C<ENABLED>) or disable
(C<DISABLED>) introspection. If no value is provided, the introspection
configuration will be set to C<ENABLED> by default. This field will
produce an error if the operation attempts to use the introspection
feature while this field is disabled.

For more information about introspection, see GraphQL introspection
(https://graphql.org/learn/introspection/).

Valid values are: C<"ENABLED">, C<"DISABLED">

=head2 LambdaAuthorizerConfig => L<Paws::AppSync::LambdaAuthorizerConfig>

Configuration for Lambda function authorization.



=head2 LogConfig => L<Paws::AppSync::LogConfig>

The Amazon CloudWatch Logs configuration for the C<GraphqlApi> object.



=head2 MergedApiExecutionRoleArn => Str

The Identity and Access Management service role ARN for a merged API.
The AppSync service assumes this role on behalf of the Merged API to
validate access to source APIs at runtime and to prompt the
C<AUTO_MERGE> to update the merged API endpoint with the source API
changes automatically.



=head2 B<REQUIRED> Name => Str

The new name for the C<GraphqlApi> object.



=head2 OpenIDConnectConfig => L<Paws::AppSync::OpenIDConnectConfig>

The OpenID Connect configuration for the C<GraphqlApi> object.



=head2 OwnerContact => Str

The owner contact information for an API resource.

This field accepts any string input with a length of 0 - 256
characters.



=head2 QueryDepthLimit => Int

The maximum depth a query can have in a single request. Depth refers to
the amount of nested levels allowed in the body of query. The default
value is C<0> (or unspecified), which indicates there's no depth limit.
If you set a limit, it can be between C<1> and C<75> nested levels.
This field will produce a limit error if the operation falls out of
bounds.

Note that fields can still be set to nullable or non-nullable. If a
non-nullable field produces an error, the error will be thrown upwards
to the first nullable field available.



=head2 ResolverCountLimit => Int

The maximum number of resolvers that can be invoked in a single
request. The default value is C<0> (or unspecified), which will set the
limit to C<10000>. When specified, the limit value can be between C<1>
and C<10000>. This field will produce a limit error if the operation
falls out of bounds.



=head2 UserPoolConfig => L<Paws::AppSync::UserPoolConfig>

The new Amazon Cognito user pool configuration for the C<~GraphqlApi>
object.



=head2 XrayEnabled => Bool

A flag indicating whether to use X-Ray tracing for the C<GraphqlApi>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateGraphqlApi in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

