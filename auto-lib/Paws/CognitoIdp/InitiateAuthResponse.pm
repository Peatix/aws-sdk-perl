
package Paws::CognitoIdp::InitiateAuthResponse;
  use Moose;
  has AuthenticationResult => (is => 'ro', isa => 'Paws::CognitoIdp::AuthenticationResultType');
  has AvailableChallenges => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ChallengeName => (is => 'ro', isa => 'Str');
  has ChallengeParameters => (is => 'ro', isa => 'Paws::CognitoIdp::ChallengeParametersType');
  has Session => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::InitiateAuthResponse

=head1 ATTRIBUTES


=head2 AuthenticationResult => L<Paws::CognitoIdp::AuthenticationResultType>

The result of a successful and complete authentication request. This
result is only returned if the user doesn't need to pass another
challenge. If they must pass another challenge before they get tokens,
Amazon Cognito returns a challenge in C<ChallengeName>,
C<ChallengeParameters>, and C<Session> response parameters.


=head2 AvailableChallenges => ArrayRef[Str|Undef]

This response parameter lists the available authentication challenges
that users can select from in choice-based authentication
(https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flows-selection-sdk.html#authentication-flows-selection-choice).
For example, they might be able to choose between passkey
authentication, a one-time password from an SMS message, and a
traditional password.


=head2 ChallengeName => Str

The name of an additional authentication challenge that you must
respond to.

Possible challenges include the following:

All of the following challenges require C<USERNAME> and, when the app
client has a client secret, C<SECRET_HASH> in the parameters.

=over

=item *

C<WEB_AUTHN>: Respond to the challenge with the results of a successful
authentication with a WebAuthn authenticator, or passkey. Examples of
WebAuthn authenticators include biometric devices and security keys.

=item *

C<PASSWORD>: Respond with C<USER_PASSWORD_AUTH> parameters: C<USERNAME>
(required), C<PASSWORD> (required), C<SECRET_HASH> (required if the app
client is configured with a client secret), C<DEVICE_KEY>.

=item *

C<PASSWORD_SRP>: Respond with C<USER_SRP_AUTH> parameters: C<USERNAME>
(required), C<SRP_A> (required), C<SECRET_HASH> (required if the app
client is configured with a client secret), C<DEVICE_KEY>.

=item *

C<SELECT_CHALLENGE>: Respond to the challenge with C<USERNAME> and an
C<ANSWER> that matches one of the challenge types in the
C<AvailableChallenges> response parameter.

=item *

C<SMS_MFA>: Respond with an C<SMS_MFA_CODE> that your user pool
delivered in an SMS message.

=item *

C<EMAIL_OTP>: Respond with an C<EMAIL_OTP_CODE> that your user pool
delivered in an email message.

=item *

C<PASSWORD_VERIFIER>: Respond with C<PASSWORD_CLAIM_SIGNATURE>,
C<PASSWORD_CLAIM_SECRET_BLOCK>, and C<TIMESTAMP> after client-side SRP
calculations.

=item *

C<CUSTOM_CHALLENGE>: This is returned if your custom authentication
flow determines that the user should pass another challenge before
tokens are issued. The parameters of the challenge are determined by
your Lambda function.

=item *

C<DEVICE_SRP_AUTH>: Respond with the initial parameters of device SRP
authentication. For more information, see Signing in with a device
(https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html#user-pools-remembered-devices-signing-in-with-a-device).

=item *

C<DEVICE_PASSWORD_VERIFIER>: Respond with C<PASSWORD_CLAIM_SIGNATURE>,
C<PASSWORD_CLAIM_SECRET_BLOCK>, and C<TIMESTAMP> after client-side SRP
calculations. For more information, see Signing in with a device
(https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html#user-pools-remembered-devices-signing-in-with-a-device).

=item *

C<NEW_PASSWORD_REQUIRED>: For users who are required to change their
passwords after successful first login. Respond to this challenge with
C<NEW_PASSWORD> and any required attributes that Amazon Cognito
returned in the C<requiredAttributes> parameter. You can also set
values for attributes that aren't required by your user pool and that
your app client can write.

Amazon Cognito only returns this challenge for users who have temporary
passwords. When you create passwordless users, you must provide values
for all required attributes.

In a C<NEW_PASSWORD_REQUIRED> challenge response, you can't modify a
required attribute that already has a value. In
C<AdminRespondToAuthChallenge> or C<RespondToAuthChallenge>, set a
value for any keys that Amazon Cognito returned in the
C<requiredAttributes> parameter, then use the
C<AdminUpdateUserAttributes> or C<UpdateUserAttributes> API operation
to modify the value of any additional attributes.

=item *

C<MFA_SETUP>: For users who are required to setup an MFA factor before
they can sign in. The MFA types activated for the user pool will be
listed in the challenge parameters C<MFAS_CAN_SETUP> value.

To set up time-based one-time password (TOTP) MFA, use the session
returned in this challenge from C<InitiateAuth> or C<AdminInitiateAuth>
as an input to C<AssociateSoftwareToken>. Then, use the session
returned by C<VerifySoftwareToken> as an input to
C<RespondToAuthChallenge> or C<AdminRespondToAuthChallenge> with
challenge name C<MFA_SETUP> to complete sign-in.

To set up SMS or email MFA, collect a C<phone_number> or C<email>
attribute for the user. Then restart the authentication flow with an
C<InitiateAuth> or C<AdminInitiateAuth> request.

=back


Valid values are: C<"SMS_MFA">, C<"EMAIL_OTP">, C<"SOFTWARE_TOKEN_MFA">, C<"SELECT_MFA_TYPE">, C<"MFA_SETUP">, C<"PASSWORD_VERIFIER">, C<"CUSTOM_CHALLENGE">, C<"SELECT_CHALLENGE">, C<"DEVICE_SRP_AUTH">, C<"DEVICE_PASSWORD_VERIFIER">, C<"ADMIN_NO_SRP_AUTH">, C<"NEW_PASSWORD_REQUIRED">, C<"SMS_OTP">, C<"PASSWORD">, C<"WEB_AUTHN">, C<"PASSWORD_SRP">
=head2 ChallengeParameters => L<Paws::CognitoIdp::ChallengeParametersType>

The required parameters of the C<ChallengeName> challenge.

All challenges require C<USERNAME>. They also require C<SECRET_HASH> if
your app client has a client secret.


=head2 Session => Str

The session identifier that links a challenge response to the initial
authentication request. If the user must pass another challenge, Amazon
Cognito returns a session ID and challenge parameters.


=head2 _request_id => Str


=cut

1;