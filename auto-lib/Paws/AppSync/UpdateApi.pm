
package Paws::AppSync::UpdateApi;
  use Moose;
  has ApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'apiId', required => 1);
  has EventConfig => (is => 'ro', isa => 'Paws::AppSync::EventConfig', traits => ['NameInRequest'], request_name => 'eventConfig');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has OwnerContact => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ownerContact');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateApi');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/apis/{apiId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppSync::UpdateApiResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::UpdateApi - Arguments for method UpdateApi on L<Paws::AppSync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateApi on the
L<AWS AppSync|Paws::AppSync> service. Use the attributes of this class
as arguments to method UpdateApi.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateApi.

=head1 SYNOPSIS

    my $appsync = Paws->service('AppSync');
    my $UpdateApiResponse = $appsync->UpdateApi(
      ApiId       => 'MyString',
      Name        => 'MyApiName',
      EventConfig => {
        AuthProviders => [
          {
            AuthType => 'API_KEY'
            , # values: API_KEY, AWS_IAM, AMAZON_COGNITO_USER_POOLS, OPENID_CONNECT, AWS_LAMBDA
            CognitoConfig => {
              AwsRegion        => 'MyString',
              UserPoolId       => 'MyString',
              AppIdClientRegex => 'MyString',
            },    # OPTIONAL
            LambdaAuthorizerConfig => {
              AuthorizerUri                => 'MyString',
              AuthorizerResultTtlInSeconds => 1,           # max: 3600; OPTIONAL
              IdentityValidationExpression => 'MyString',
            },    # OPTIONAL
            OpenIDConnectConfig => {
              Issuer   => 'MyString',
              AuthTTL  => 1,            # OPTIONAL
              ClientId => 'MyString',
              IatTTL   => 1,            # OPTIONAL
            },    # OPTIONAL
          },
          ...
        ],
        ConnectionAuthModes => [
          {
            AuthType => 'API_KEY'
            , # values: API_KEY, AWS_IAM, AMAZON_COGNITO_USER_POOLS, OPENID_CONNECT, AWS_LAMBDA

          },
          ...
        ],
        DefaultPublishAuthModes => [
          {
            AuthType => 'API_KEY'
            , # values: API_KEY, AWS_IAM, AMAZON_COGNITO_USER_POOLS, OPENID_CONNECT, AWS_LAMBDA

          },
          ...
        ],
        DefaultSubscribeAuthModes => [
          {
            AuthType => 'API_KEY'
            , # values: API_KEY, AWS_IAM, AMAZON_COGNITO_USER_POOLS, OPENID_CONNECT, AWS_LAMBDA

          },
          ...
        ],
        LogConfig => {
          CloudWatchLogsRoleArn => 'MyString',
          LogLevel => 'NONE',    # values: NONE, ERROR, ALL, INFO, DEBUG

        },    # OPTIONAL
      },    # OPTIONAL
      OwnerContact => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Api = $UpdateApiResponse->Api;

    # Returns a L<Paws::AppSync::UpdateApiResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appsync/UpdateApi>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiId => Str

The C<Api> ID.



=head2 EventConfig => L<Paws::AppSync::EventConfig>

The new event configuration. This includes the default authorization
configuration for connecting, publishing, and subscribing to an Event
API.



=head2 B<REQUIRED> Name => Str

The name of the Api.



=head2 OwnerContact => Str

The owner contact information for the C<Api>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateApi in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

