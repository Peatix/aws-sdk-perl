
package Paws::CognitoIdp::InitiateAuth;
  use Moose;
  has AnalyticsMetadata => (is => 'ro', isa => 'Paws::CognitoIdp::AnalyticsMetadataType');
  has AuthFlow => (is => 'ro', isa => 'Str', required => 1);
  has AuthParameters => (is => 'ro', isa => 'Paws::CognitoIdp::AuthParametersType');
  has ClientId => (is => 'ro', isa => 'Str', required => 1);
  has ClientMetadata => (is => 'ro', isa => 'Paws::CognitoIdp::ClientMetadataType');
  has Session => (is => 'ro', isa => 'Str');
  has UserContextData => (is => 'ro', isa => 'Paws::CognitoIdp::UserContextDataType');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'InitiateAuth');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::InitiateAuthResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::InitiateAuth - Arguments for method InitiateAuth on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method InitiateAuth on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method InitiateAuth.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to InitiateAuth.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $InitiateAuthResponse = $cognito -idp->InitiateAuth(
      AuthFlow          => 'USER_SRP_AUTH',
      ClientId          => 'MyClientIdType',
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
      Session         => 'MySessionType',    # OPTIONAL
      UserContextData => {
        EncodedData => 'MyStringType',       # max: 131072; OPTIONAL
        IpAddress   => 'MyStringType',       # max: 131072; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $AuthenticationResult = $InitiateAuthResponse->AuthenticationResult;
    my $AvailableChallenges  = $InitiateAuthResponse->AvailableChallenges;
    my $ChallengeName        = $InitiateAuthResponse->ChallengeName;
    my $ChallengeParameters  = $InitiateAuthResponse->ChallengeParameters;
    my $Session              = $InitiateAuthResponse->Session;

    # Returns a L<Paws::CognitoIdp::InitiateAuthResponse> object.

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

=item USER_PASSWORD_AUTH

Client-side username-password authentication with the password sent
directly in the request. For more information about client-side and
server-side authentication, see SDK authorization models
(https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flows-public-server-side.html).

=back

C<ADMIN_USER_PASSWORD_AUTH> is a flow type of C<AdminInitiateAuth> and
isn't valid for InitiateAuth. C<ADMIN_NO_SRP_AUTH> is a legacy
server-side username-password flow and isn't valid for InitiateAuth.

Valid values are: C<"USER_SRP_AUTH">, C<"REFRESH_TOKEN_AUTH">, C<"REFRESH_TOKEN">, C<"CUSTOM_AUTH">, C<"ADMIN_NO_SRP_AUTH">, C<"USER_PASSWORD_AUTH">, C<"ADMIN_USER_PASSWORD_AUTH">, C<"USER_AUTH">

=head2 AuthParameters => L<Paws::CognitoIdp::AuthParametersType>

The authentication parameters. These are inputs corresponding to the
C<AuthFlow> that you're invoking.

The required values are specific to the InitiateAuthRequest$AuthFlow.

The following are some authentication flows and their parameters. Add a
C<SECRET_HASH> parameter if your app client has a client secret.

=over

=item *

C<USER_AUTH>: C<USERNAME> (required), C<PREFERRED_CHALLENGE>. If you
don't provide a value for C<PREFERRED_CHALLENGE>, Amazon Cognito
responds with the C<AvailableChallenges> parameter that specifies the
available sign-in methods.

=item *

C<USER_SRP_AUTH>: C<USERNAME> (required), C<SRP_A> (required),
C<DEVICE_KEY>.

=item *

C<USER_PASSWORD_AUTH>: C<USERNAME> (required), C<PASSWORD> (required),
C<DEVICE_KEY>.

=item *

C<REFRESH_TOKEN_AUTH/REFRESH_TOKEN>: C<REFRESH_TOKEN> (required),
C<DEVICE_KEY>.

=item *

C<CUSTOM_AUTH>: C<USERNAME> (required), C<SECRET_HASH> (if app client
is configured with client secret), C<DEVICE_KEY>. To start the
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

The ID of the app client that your user wants to sign in to.



=head2 ClientMetadata => L<Paws::CognitoIdp::ClientMetadataType>

A map of custom key-value pairs that you can provide as input for
certain custom workflows that this action triggers.

You create custom workflows by assigning Lambda functions to user pool
triggers. When you send an C<InitiateAuth> request, Amazon Cognito
invokes the Lambda functions that are specified for various triggers.
The C<ClientMetadata> value is passed as input to the functions for
only the following triggers.

=over

=item *

Pre sign-up

=item *

Pre authentication

=item *

User migration

=back

When Amazon Cognito invokes the functions for these triggers, it passes
a JSON payload as input to the function. This payload contains a
C<validationData> attribute with the data that you assigned to the
C<ClientMetadata> parameter in your C<InitiateAuth> request. In your
function, C<validationData> can contribute to operations that require
data that isn't in the default payload.

C<InitiateAuth> requests invokes the following triggers without
C<ClientMetadata> as input.

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




=head2 Session => Str

The optional session ID from a C<ConfirmSignUp> API request. You can
sign in a user directly from the sign-up process with the C<USER_AUTH>
authentication flow. When you pass the session ID to C<InitiateAuth>,
Amazon Cognito assumes the SMS or email message one-time verification
password from C<ConfirmSignUp> as the primary authentication factor.
You're not required to submit this code a second time. This option is
only valid for users who have confirmed their sign-up and are signing
in for the first time within the authentication flow session duration
of the session ID.



=head2 UserContextData => L<Paws::CognitoIdp::UserContextDataType>

Contextual data about your user session like the device fingerprint, IP
address, or location. Amazon Cognito threat protection evaluates the
risk of an authentication event based on the context that your app
generates and passes to Amazon Cognito when it makes API requests.

For more information, see Collecting data for threat protection in
applications
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-viewing-threat-protection-app.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method InitiateAuth in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

