
package Paws::AppSync::CreateChannelNamespace;
  use Moose;
  has ApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'apiId', required => 1);
  has CodeHandlers => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'codeHandlers');
  has HandlerConfigs => (is => 'ro', isa => 'Paws::AppSync::HandlerConfigs', traits => ['NameInRequest'], request_name => 'handlerConfigs');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has PublishAuthModes => (is => 'ro', isa => 'ArrayRef[Paws::AppSync::AuthMode]', traits => ['NameInRequest'], request_name => 'publishAuthModes');
  has SubscribeAuthModes => (is => 'ro', isa => 'ArrayRef[Paws::AppSync::AuthMode]', traits => ['NameInRequest'], request_name => 'subscribeAuthModes');
  has Tags => (is => 'ro', isa => 'Paws::AppSync::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateChannelNamespace');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/apis/{apiId}/channelNamespaces');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppSync::CreateChannelNamespaceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::CreateChannelNamespace - Arguments for method CreateChannelNamespace on L<Paws::AppSync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateChannelNamespace on the
L<AWS AppSync|Paws::AppSync> service. Use the attributes of this class
as arguments to method CreateChannelNamespace.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateChannelNamespace.

=head1 SYNOPSIS

    my $appsync = Paws->service('AppSync');
    my $CreateChannelNamespaceResponse = $appsync->CreateChannelNamespace(
      ApiId          => 'MyString',
      Name           => 'MyNamespace',
      CodeHandlers   => 'MyCode',        # OPTIONAL
      HandlerConfigs => {
        OnPublish => {
          Behavior    => 'CODE',         # values: CODE, DIRECT
          Integration => {
            DataSourceName => 'MyString',
            LambdaConfig   => {
              InvokeType =>
                'REQUEST_RESPONSE',  # values: REQUEST_RESPONSE, EVENT; OPTIONAL
            },    # OPTIONAL
          },

        },    # OPTIONAL
        OnSubscribe => {
          Behavior    => 'CODE',    # values: CODE, DIRECT
          Integration => {
            DataSourceName => 'MyString',
            LambdaConfig   => {
              InvokeType =>
                'REQUEST_RESPONSE',  # values: REQUEST_RESPONSE, EVENT; OPTIONAL
            },    # OPTIONAL
          },

        },    # OPTIONAL
      },    # OPTIONAL
      PublishAuthModes => [
        {
          AuthType => 'API_KEY'
          , # values: API_KEY, AWS_IAM, AMAZON_COGNITO_USER_POOLS, OPENID_CONNECT, AWS_LAMBDA

        },
        ...
      ],    # OPTIONAL
      SubscribeAuthModes => [
        {
          AuthType => 'API_KEY'
          , # values: API_KEY, AWS_IAM, AMAZON_COGNITO_USER_POOLS, OPENID_CONNECT, AWS_LAMBDA

        },
        ...
      ],    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $ChannelNamespace = $CreateChannelNamespaceResponse->ChannelNamespace;

    # Returns a L<Paws::AppSync::CreateChannelNamespaceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appsync/CreateChannelNamespace>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiId => Str

The C<Api> ID.



=head2 CodeHandlers => Str

The event handler functions that run custom business logic to process
published events and subscribe requests.



=head2 HandlerConfigs => L<Paws::AppSync::HandlerConfigs>

The configuration for the C<OnPublish> and C<OnSubscribe> handlers.



=head2 B<REQUIRED> Name => Str

The name of the C<ChannelNamespace>. This name must be unique within
the C<Api>



=head2 PublishAuthModes => ArrayRef[L<Paws::AppSync::AuthMode>]

The authorization mode to use for publishing messages on the channel
namespace. This configuration overrides the default C<Api>
authorization configuration.



=head2 SubscribeAuthModes => ArrayRef[L<Paws::AppSync::AuthMode>]

The authorization mode to use for subscribing to messages on the
channel namespace. This configuration overrides the default C<Api>
authorization configuration.



=head2 Tags => L<Paws::AppSync::TagMap>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateChannelNamespace in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

