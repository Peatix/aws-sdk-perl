
package Paws::CloudWatchEvents::DescribeConnectionResponse;
  use Moose;
  has AuthorizationType => (is => 'ro', isa => 'Str');
  has AuthParameters => (is => 'ro', isa => 'Paws::CloudWatchEvents::ConnectionAuthResponseParameters');
  has ConnectionArn => (is => 'ro', isa => 'Str');
  has ConnectionState => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has InvocationConnectivityParameters => (is => 'ro', isa => 'Paws::CloudWatchEvents::DescribeConnectionConnectivityParameters');
  has KmsKeyIdentifier => (is => 'ro', isa => 'Str');
  has LastAuthorizedTime => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has SecretArn => (is => 'ro', isa => 'Str');
  has StateReason => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::DescribeConnectionResponse

=head1 ATTRIBUTES


=head2 AuthorizationType => Str

The type of authorization specified for the connection.

Valid values are: C<"BASIC">, C<"OAUTH_CLIENT_CREDENTIALS">, C<"API_KEY">
=head2 AuthParameters => L<Paws::CloudWatchEvents::ConnectionAuthResponseParameters>

The parameters to use for authorization for the connection.


=head2 ConnectionArn => Str

The ARN of the connection retrieved.


=head2 ConnectionState => Str

The state of the connection retrieved.

Valid values are: C<"CREATING">, C<"UPDATING">, C<"DELETING">, C<"AUTHORIZED">, C<"DEAUTHORIZED">, C<"AUTHORIZING">, C<"DEAUTHORIZING">, C<"ACTIVE">, C<"FAILED_CONNECTIVITY">
=head2 CreationTime => Str

A time stamp for the time that the connection was created.


=head2 Description => Str

The description for the connection retrieved.


=head2 InvocationConnectivityParameters => L<Paws::CloudWatchEvents::DescribeConnectionConnectivityParameters>

For connections to private APIs The parameters EventBridge uses to
invoke the resource endpoint.

For more information, see Connecting to private APIs
(https://docs.aws.amazon.com/eventbridge/latest/userguide/connection-private.html)
in the I< I<Amazon EventBridge User Guide> >.


=head2 KmsKeyIdentifier => Str

The identifier of the KMS customer managed key for EventBridge to use
to encrypt the connection, if one has been specified.

For more information, see Encrypting connections
(https://docs.aws.amazon.com/eventbridge/latest/userguide/encryption-connections.html)
in the I<Amazon EventBridge User Guide>.


=head2 LastAuthorizedTime => Str

A time stamp for the time that the connection was last authorized.


=head2 LastModifiedTime => Str

A time stamp for the time that the connection was last modified.


=head2 Name => Str

The name of the connection retrieved.


=head2 SecretArn => Str

The ARN of the secret created from the authorization parameters
specified for the connection.


=head2 StateReason => Str

The reason that the connection is in the current connection state.


=head2 _request_id => Str


=cut

1;