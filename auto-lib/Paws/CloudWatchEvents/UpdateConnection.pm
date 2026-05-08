
package Paws::CloudWatchEvents::UpdateConnection;
  use Moose;
  has AuthorizationType => (is => 'ro', isa => 'Str');
  has AuthParameters => (is => 'ro', isa => 'Paws::CloudWatchEvents::UpdateConnectionAuthRequestParameters');
  has Description => (is => 'ro', isa => 'Str');
  has InvocationConnectivityParameters => (is => 'ro', isa => 'Paws::CloudWatchEvents::ConnectivityResourceParameters');
  has KmsKeyIdentifier => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateConnection');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchEvents::UpdateConnectionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::UpdateConnection - Arguments for method UpdateConnection on L<Paws::CloudWatchEvents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateConnection on the
L<Amazon EventBridge|Paws::CloudWatchEvents> service. Use the attributes of this class
as arguments to method UpdateConnection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateConnection.

=head1 SYNOPSIS

    my $events = Paws->service('CloudWatchEvents');
    my $UpdateConnectionResponse = $events->UpdateConnection(
      Name           => 'MyConnectionName',
      AuthParameters => {
        ApiKeyAuthParameters => {
          ApiKeyName  => 'MyAuthHeaderParameters',  # min: 1, max: 512; OPTIONAL
          ApiKeyValue =>
            'MyAuthHeaderParametersSensitive',      # min: 1, max: 512; OPTIONAL
        },    # OPTIONAL
        BasicAuthParameters => {
          Password =>
            'MyAuthHeaderParametersSensitive',    # min: 1, max: 512; OPTIONAL
          Username => 'MyAuthHeaderParameters',   # min: 1, max: 512; OPTIONAL
        },    # OPTIONAL
        ConnectivityParameters => {
          ResourceParameters => {
            ResourceConfigurationArn =>
              'MyResourceConfigurationArn',    # max: 2048

          },

        },    # OPTIONAL
        InvocationHttpParameters => {
          BodyParameters => [
            {
              IsValueSecret => 1,                      # OPTIONAL
              Key           => 'MyString',             # OPTIONAL
              Value         => 'MySensitiveString',    # OPTIONAL
            },
            ...
          ],    # max: 100; OPTIONAL
          HeaderParameters => [
            {
              IsValueSecret => 1,                           # OPTIONAL
              Key           => 'MyHeaderKey',               # max: 512; OPTIONAL
              Value         => 'MyHeaderValueSensitive',    # max: 512; OPTIONAL
            },
            ...
          ],    # max: 100; OPTIONAL
          QueryStringParameters => [
            {
              IsValueSecret => 1,                        # OPTIONAL
              Key           => 'MyQueryStringKey',       # max: 512; OPTIONAL
              Value => 'MyQueryStringValueSensitive',    # max: 512; OPTIONAL
            },
            ...
          ],    # max: 100; OPTIONAL
        },    # OPTIONAL
        OAuthParameters => {
          AuthorizationEndpoint =>
            'MyHttpsEndpoint',    # min: 1, max: 2048; OPTIONAL
          ClientParameters => {
            ClientID => 'MyAuthHeaderParameters',   # min: 1, max: 512; OPTIONAL
            ClientSecret =>
              'MyAuthHeaderParametersSensitive',    # min: 1, max: 512; OPTIONAL
          },    # OPTIONAL
          HttpMethod          => 'GET',    # values: GET, POST, PUT; OPTIONAL
          OAuthHttpParameters => {
            BodyParameters => [
              {
                IsValueSecret => 1,                      # OPTIONAL
                Key           => 'MyString',             # OPTIONAL
                Value         => 'MySensitiveString',    # OPTIONAL
              },
              ...
            ],    # max: 100; OPTIONAL
            HeaderParameters => [
              {
                IsValueSecret => 1,                         # OPTIONAL
                Key           => 'MyHeaderKey',             # max: 512; OPTIONAL
                Value         => 'MyHeaderValueSensitive',  # max: 512; OPTIONAL
              },
              ...
            ],    # max: 100; OPTIONAL
            QueryStringParameters => [
              {
                IsValueSecret => 1,                        # OPTIONAL
                Key           => 'MyQueryStringKey',       # max: 512; OPTIONAL
                Value => 'MyQueryStringValueSensitive',    # max: 512; OPTIONAL
              },
              ...
            ],    # max: 100; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      AuthorizationType                => 'BASIC',                    # OPTIONAL
      Description                      => 'MyConnectionDescription',  # OPTIONAL
      InvocationConnectivityParameters => {
        ResourceParameters => {
          ResourceConfigurationArn => 'MyResourceConfigurationArn',  # max: 2048

        },

      },    # OPTIONAL
      KmsKeyIdentifier => 'MyKmsKeyIdentifier',    # OPTIONAL
    );

    # Results:
    my $ConnectionArn      = $UpdateConnectionResponse->ConnectionArn;
    my $ConnectionState    = $UpdateConnectionResponse->ConnectionState;
    my $CreationTime       = $UpdateConnectionResponse->CreationTime;
    my $LastAuthorizedTime = $UpdateConnectionResponse->LastAuthorizedTime;
    my $LastModifiedTime   = $UpdateConnectionResponse->LastModifiedTime;

    # Returns a L<Paws::CloudWatchEvents::UpdateConnectionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 AuthorizationType => Str

The type of authorization to use for the connection.

Valid values are: C<"BASIC">, C<"OAUTH_CLIENT_CREDENTIALS">, C<"API_KEY">

=head2 AuthParameters => L<Paws::CloudWatchEvents::UpdateConnectionAuthRequestParameters>

The authorization parameters to use for the connection.



=head2 Description => Str

A description for the connection.



=head2 InvocationConnectivityParameters => L<Paws::CloudWatchEvents::ConnectivityResourceParameters>

For connections to private APIs, the parameters to use for invoking the
API.

For more information, see Connecting to private APIs
(https://docs.aws.amazon.com/eventbridge/latest/userguide/connection-private.html)
in the I< I<Amazon EventBridge User Guide> >.



=head2 KmsKeyIdentifier => Str

The identifier of the KMS customer managed key for EventBridge to use,
if you choose to use a customer managed key to encrypt this connection.
The identifier can be the key Amazon Resource Name (ARN), KeyId, key
alias, or key alias ARN.

If you do not specify a customer managed key identifier, EventBridge
uses an Amazon Web Services owned key to encrypt the connection.

For more information, see Identify and view keys
(https://docs.aws.amazon.com/kms/latest/developerguide/viewing-keys.html)
in the I<Key Management Service Developer Guide>.



=head2 B<REQUIRED> Name => Str

The name of the connection to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateConnection in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

