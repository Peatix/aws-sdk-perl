
package Paws::CognitoIdp::GetTokensFromRefreshToken;
  use Moose;
  has ClientId => (is => 'ro', isa => 'Str', required => 1);
  has ClientMetadata => (is => 'ro', isa => 'Paws::CognitoIdp::ClientMetadataType');
  has ClientSecret => (is => 'ro', isa => 'Str');
  has DeviceKey => (is => 'ro', isa => 'Str');
  has RefreshToken => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTokensFromRefreshToken');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::GetTokensFromRefreshTokenResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::GetTokensFromRefreshToken - Arguments for method GetTokensFromRefreshToken on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTokensFromRefreshToken on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method GetTokensFromRefreshToken.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTokensFromRefreshToken.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $GetTokensFromRefreshTokenResponse =
      $cognito -idp->GetTokensFromRefreshToken(
      ClientId       => 'MyClientIdType',
      RefreshToken   => 'MyTokenModelType',
      ClientMetadata => {
        'MyStringType' => 'MyStringType', # key: max: 131072, value: max: 131072
      },    # OPTIONAL
      ClientSecret => 'MyClientSecretType',    # OPTIONAL
      DeviceKey    => 'MyDeviceKeyType',       # OPTIONAL
      );

    # Results:
    my $AuthenticationResult =
      $GetTokensFromRefreshTokenResponse->AuthenticationResult;

    # Returns a L<Paws::CognitoIdp::GetTokensFromRefreshTokenResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientId => Str

The app client that issued the refresh token to the user who wants to
request new tokens.



=head2 ClientMetadata => L<Paws::CognitoIdp::ClientMetadataType>

A map of custom key-value pairs that you can provide as input for
certain custom workflows that this action triggers.

You create custom workflows by assigning Lambda functions to user pool
triggers. When you use the C<GetTokensFromRefreshToken> API action,
Amazon Cognito invokes the Lambda function the pre token generation
trigger.

For more information, see Using Lambda triggers
(https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html)
in the I<Amazon Cognito Developer Guide>.

When you use the C<ClientMetadata> parameter, note that Amazon Cognito
won't do the following:

=over

=item *

Store the C<ClientMetadata> value. This data is available only to
Lambda triggers that are assigned to a user pool to support custom
workflows. If your user pool configuration doesn't include triggers,
the C<ClientMetadata> parameter serves no purpose.

=item *

Validate the C<ClientMetadata> value.

=item *

Encrypt the C<ClientMetadata> value. Don't send sensitive information
in this parameter.

=back




=head2 ClientSecret => Str

The client secret of the requested app client, if the client has a
secret.



=head2 DeviceKey => Str

When you enable device remembering, Amazon Cognito issues a device key
that you can use for device authentication that bypasses multi-factor
authentication (MFA). To implement C<GetTokensFromRefreshToken> in a
user pool with device remembering, you must capture the device key from
the initial authentication request. If your application doesn't provide
the key of a registered device, Amazon Cognito issues a new one. You
must provide the confirmed device key in this request if device
remembering is enabled in your user pool.

For more information about device remembering, see Working with devices
(https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html).



=head2 B<REQUIRED> RefreshToken => Str

A valid refresh token that can authorize the request for new tokens.
When refresh token rotation is active in the requested app client, this
token is invalidated after the request is complete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTokensFromRefreshToken in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

