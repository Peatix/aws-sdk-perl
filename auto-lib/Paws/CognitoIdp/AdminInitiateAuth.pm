
package Paws::CognitoIdp::AdminInitiateAuth;
  use Moose;
  has AnalyticsMetadata => (is => 'ro', isa => 'Paws::CognitoIdp::AnalyticsMetadataType');
  has AuthFlow => (is => 'ro', isa => 'Str', required => 1);
  has AuthParameters => (is => 'ro', isa => 'Paws::CognitoIdp::AuthParametersType');
  has ClientId => (is => 'ro', isa => 'Str', required => 1);
  has ClientMetadata => (is => 'ro', isa => 'Paws::CognitoIdp::ClientMetadataType');
  has ContextData => (is => 'ro', isa => 'Paws::CognitoIdp::ContextDataType');
  has Session => (is => 'ro', isa => 'Str');
  has UserPoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AdminInitiateAuth');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::AdminInitiateAuthResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::AdminInitiateAuth - Arguments for method AdminInitiateAuth on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AdminInitiateAuth on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method AdminInitiateAuth.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AdminInitiateAuth.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $AdminInitiateAuthResponse = $cognito -idp->AdminInitiateAuth(
      AuthFlow          => 'USER_SRP_AUTH',
      ClientId          => 'MyClientIdType',
      UserPoolId        => 'MyUserPoolIdType',
      AnalyticsMetadata => {
        AnalyticsEndpointId => 'MyStringType',    # max: 131072; OPTIONAL
      },    # OPTIONAL
      AuthParameters => {
        'MyStringType' => 'MyStringType'
        ,    # key: max: 131072; OPTIONAL, value: max: 131072; OPTIONAL
      },    # OPTIONAL
      ClientMetadata => {
        'MyStringType' => 'MyStringType'
        ,    # key: max: 131072; OPTIONAL, value: max: 131072; OPTIONAL
      },    # OPTIONAL
      ContextData => {
        HttpHeaders => [
          {
            HeaderName  => 'MyStringType',    # max: 131072; OPTIONAL
            HeaderValue => 'MyStringType',    # max: 131072; OPTIONAL
          },
          ...
        ],
        IpAddress   => 'MyStringType',    # max: 131072; OPTIONAL
        ServerName  => 'MyStringType',    # max: 131072; OPTIONAL
        ServerPath  => 'MyStringType',    # max: 131072; OPTIONAL
        EncodedData => 'MyStringType',    # max: 131072; OPTIONAL
      },    # OPTIONAL
      Session => 'MySessionType',    # OPTIONAL
    );

    # Results:
    my $AuthenticationResult = $AdminInitiateAuthResponse->AuthenticationResult;
    my $AvailableChallenges  = $AdminInitiateAuthResponse->AvailableChallenges;
    my $ChallengeName        = $AdminInitiateAuthResponse->ChallengeName;
    my $ChallengeParameters  = $AdminInitiateAuthResponse->ChallengeParameters;
    my $Session              = $AdminInitiateAuthResponse->Session;

    # Returns a L<Paws::CognitoIdp::AdminInitiateAuthResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 AnalyticsMetadata => L<Paws::CognitoIdp::AnalyticsMetadataType>

Information that supports analytics outcomes with Amazon Pinpoint,
including the user's endpoint ID. The endpoint ID is a destination for
Amazon Pinpoint push notifications, for example a device identifier,
email address, or phone number.



=head2 B<REQUIRED> AuthFlow => Str

The authentication flow that you want to initiate. Each C<AuthFlow> has
linked C<AuthParameters> that you must submit. The following are some
example flows.

=over

=item USER_AUTH

The entry point for choice-based authentication
(https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flows-selection-sdk.html#authentication-flows-selection-choice)
with passwords, one-time passwords, and WebAuthn authenticators.
Request a preferred authentication type or review available
authentication types. From the offered authentication types, select one
in a challenge response and then authenticate with that method in an
additional challenge response. To activate this setting, your user pool
must be in the Essentials tier
(https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-essentials.html)
or higher.

=item USER_SRP_AUTH

Username-password authentication with the Secure Remote Password (SRP)
protocol. For more information, see Use SRP password verification in
custom authentication flow
(https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-authentication-flow.html#Using-SRP-password-verification-in-custom-authentication-flow).

=item REFRESH_TOKEN_AUTH and REFRESH_TOKEN

Receive new ID and access tokens when you pass a C<REFRESH_TOKEN>
parameter with a valid refresh token as the value. For more
information, see Using the refresh token
(https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-using-the-refresh-token.html).

=item CUSTOM_AUTH

Custom authentication with Lambda triggers. For more information, see
Custom authentication challenge Lambda triggers
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-challenge.html).

=item ADMIN_USER_PASSWORD_AUTH

Server-side username-password authentication with the password sent
directly in the request. For more information about client-side and
server-side authentication, see SDK authorization models
(https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flows-public-server-side.html).

=back


Valid values are: C<"USER_SRP_AUTH">, C<"REFRESH_TOKEN_AUTH">, C<"REFRESH_TOKEN">, C<"CUSTOM_AUTH">, C<"ADMIN_NO_SRP_AUTH">, C<"USER_PASSWORD_AUTH">, C<"ADMIN_USER_PASSWORD_AUTH">, C<"USER_AUTH">

=head2 AuthParameters => L<Paws::CognitoIdp::AuthParametersType>

The authentication parameters. These are inputs corresponding to the
C<AuthFlow> that you're invoking. The required values depend on the
value of C<AuthFlow> for example:

=over

=item *

For C<USER_AUTH>: C<USERNAME> (required), C<PREFERRED_CHALLENGE>. If
you don't provide a value for C<PREFERRED_CHALLENGE>, Amazon Cognito
responds with the C<AvailableChallenges> parameter that specifies the
available sign-in methods.

=item *

For C<USER_SRP_AUTH>: C<USERNAME> (required), C<SRP_A> (required),
C<SECRET_HASH> (required if the app client is configured with a client
secret), C<DEVICE_KEY>.

=item *

For C<ADMIN_USER_PASSWORD_AUTH>: C<USERNAME> (required), C<PASSWORD>
(required), C<SECRET_HASH> (required if the app client is configured
with a client secret), C<DEVICE_KEY>.

=item *

For C<REFRESH_TOKEN_AUTH/REFRESH_TOKEN>: C<REFRESH_TOKEN> (required),
C<SECRET_HASH> (required if the app client is configured with a client
secret), C<DEVICE_KEY>.

=item *

For C<CUSTOM_AUTH>: C<USERNAME> (required), C<SECRET_HASH> (if app
client is configured with client secret), C<DEVICE_KEY>. To start the
authentication flow with password verification, include
C<ChallengeName: SRP_A> and C<SRP_A: (The SRP_A Value)>.

=back

For more information about C<SECRET_HASH>, see Computing secret hash
values
(https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#cognito-user-pools-computing-secret-hash).
For information about C<DEVICE_KEY>, see Working with user devices in
your user pool
(https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html).



=head2 B<REQUIRED> ClientId => Str

The ID of the app client where the user wants to sign in.



=head2 ClientMetadata => L<Paws::CognitoIdp::ClientMetadataType>

A map of custom key-value pairs that you can provide as input for
certain custom workflows that this action triggers.

You create custom workflows by assigning Lambda functions to user pool
triggers. When you use the AdminInitiateAuth API action, Amazon Cognito
invokes the Lambda functions that are specified for various triggers.
The ClientMetadata value is passed as input to the functions for only
the following triggers:

=over

=item *

Pre signup

=item *

Pre authentication

=item *

User migration

=back

When Amazon Cognito invokes the functions for these triggers, it passes
a JSON payload, which the function receives as input. This payload
contains a C<validationData> attribute, which provides the data that
you assigned to the ClientMetadata parameter in your AdminInitiateAuth
request. In your function code in Lambda, you can process the
C<validationData> value to enhance your workflow for your specific
needs.

When you use the AdminInitiateAuth API action, Amazon Cognito also
invokes the functions for the following triggers, but it doesn't
provide the ClientMetadata value as input:

=over

=item *

Post authentication

=item *

Custom message

=item *

Pre token generation

=item *

Create auth challenge

=item *

Define auth challenge

=item *

Custom email sender

=item *

Custom SMS sender

=back

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




=head2 ContextData => L<Paws::CognitoIdp::ContextDataType>

Contextual data about your user session like the device fingerprint, IP
address, or location. Amazon Cognito threat protection evaluates the
risk of an authentication event based on the context that your app
generates and passes to Amazon Cognito when it makes API requests.

For more information, see Collecting data for threat protection in
applications
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-viewing-threat-protection-app.html).



=head2 Session => Str

The optional session ID from a C<ConfirmSignUp> API request. You can
sign in a user directly from the sign-up process with an C<AuthFlow> of
C<USER_AUTH> and C<AuthParameters> of C<EMAIL_OTP> or C<SMS_OTP>,
depending on how your user pool sent the confirmation-code message.



=head2 B<REQUIRED> UserPoolId => Str

The ID of the user pool where the user wants to sign in.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AdminInitiateAuth in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

