
package Paws::CognitoIdp::RespondToAuthChallenge;
  use Moose;
  has AnalyticsMetadata => (is => 'ro', isa => 'Paws::CognitoIdp::AnalyticsMetadataType');
  has ChallengeName => (is => 'ro', isa => 'Str', required => 1);
  has ChallengeResponses => (is => 'ro', isa => 'Paws::CognitoIdp::ChallengeResponsesType');
  has ClientId => (is => 'ro', isa => 'Str', required => 1);
  has ClientMetadata => (is => 'ro', isa => 'Paws::CognitoIdp::ClientMetadataType');
  has Session => (is => 'ro', isa => 'Str');
  has UserContextData => (is => 'ro', isa => 'Paws::CognitoIdp::UserContextDataType');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RespondToAuthChallenge');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::RespondToAuthChallengeResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::RespondToAuthChallenge - Arguments for method RespondToAuthChallenge on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RespondToAuthChallenge on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method RespondToAuthChallenge.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RespondToAuthChallenge.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $RespondToAuthChallengeResponse = $cognito -idp->RespondToAuthChallenge(
      ChallengeName     => 'SMS_MFA',
      ClientId          => 'MyClientIdType',
      AnalyticsMetadata => {
        AnalyticsEndpointId => 'MyStringType',    # max: 131072; OPTIONAL
      },    # OPTIONAL
      ChallengeResponses => {
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
    my $AuthenticationResult =
      $RespondToAuthChallengeResponse->AuthenticationResult;
    my $ChallengeName = $RespondToAuthChallengeResponse->ChallengeName;
    my $ChallengeParameters =
      $RespondToAuthChallengeResponse->ChallengeParameters;
    my $Session = $RespondToAuthChallengeResponse->Session;

    # Returns a L<Paws::CognitoIdp::RespondToAuthChallengeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 AnalyticsMetadata => L<Paws::CognitoIdp::AnalyticsMetadataType>

Information that supports analytics outcomes with Amazon Pinpoint,
including the user's endpoint ID. The endpoint ID is a destination for
Amazon Pinpoint push notifications, for example a device identifier,
email address, or phone number.



=head2 B<REQUIRED> ChallengeName => Str

The name of the challenge that you are responding to.

You can't respond to an C<ADMIN_NO_SRP_AUTH> challenge with this
operation.

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

=head2 ChallengeResponses => L<Paws::CognitoIdp::ChallengeResponsesType>

The responses to the challenge that you received in the previous
request. Each challenge has its own required response parameters. The
following examples are partial JSON request bodies that highlight
challenge-response parameters.

You must provide a SECRET_HASH parameter in all challenge responses to
an app client that has a client secret. Include a C<DEVICE_KEY> for
device authentication.

=over

=item SELECT_CHALLENGE

C<"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
"USERNAME": "[username]", "ANSWER": "[Challenge name]"}>

Available challenges are C<PASSWORD>, C<PASSWORD_SRP>, C<EMAIL_OTP>,
C<SMS_OTP>, and C<WEB_AUTHN>.

Complete authentication in the C<SELECT_CHALLENGE> response for
C<PASSWORD>, C<PASSWORD_SRP>, and C<WEB_AUTHN>:

=over

=item *

C<"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
"ANSWER": "WEB_AUTHN", "USERNAME": "[username]", "CREDENTIAL":
"[AuthenticationResponseJSON]"}>

See AuthenticationResponseJSON
(https://www.w3.org/TR/WebAuthn-3/#dictdef-authenticationresponsejson).

=item *

C<"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
"ANSWER": "PASSWORD", "USERNAME": "[username]", "PASSWORD":
"[password]"}>

=item *

C<"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
"ANSWER": "PASSWORD_SRP", "USERNAME": "[username]", "SRP_A":
"[SRP_A]"}>

=back

For C<SMS_OTP> and C<EMAIL_OTP>, respond with the username and answer.
Your user pool will send a code for the user to submit in the next
challenge response.

=over

=item *

C<"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
"ANSWER": "SMS_OTP", "USERNAME": "[username]"}>

=item *

C<"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
"ANSWER": "EMAIL_OTP", "USERNAME": "[username]"}>

=back

=item SMS_OTP

C<"ChallengeName": "SMS_OTP", "ChallengeResponses": {"SMS_OTP_CODE":
"[code]", "USERNAME": "[username]"}>

=item EMAIL_OTP

C<"ChallengeName": "EMAIL_OTP", "ChallengeResponses":
{"EMAIL_OTP_CODE": "[code]", "USERNAME": "[username]"}>

=item SMS_MFA

C<"ChallengeName": "SMS_MFA", "ChallengeResponses": {"SMS_MFA_CODE":
"[code]", "USERNAME": "[username]"}>

=item PASSWORD_VERIFIER

This challenge response is part of the SRP flow. Amazon Cognito
requires that your application respond to this challenge within a few
seconds. When the response time exceeds this period, your user pool
returns a C<NotAuthorizedException> error.

C<"ChallengeName": "PASSWORD_VERIFIER", "ChallengeResponses":
{"PASSWORD_CLAIM_SIGNATURE": "[claim_signature]",
"PASSWORD_CLAIM_SECRET_BLOCK": "[secret_block]", "TIMESTAMP":
[timestamp], "USERNAME": "[username]"}>

Add C<"DEVICE_KEY"> when you sign in with a remembered device.

=item CUSTOM_CHALLENGE

C<"ChallengeName": "CUSTOM_CHALLENGE", "ChallengeResponses":
{"USERNAME": "[username]", "ANSWER": "[challenge_answer]"}>

Add C<"DEVICE_KEY"> when you sign in with a remembered device.

=item NEW_PASSWORD_REQUIRED

C<"ChallengeName": "NEW_PASSWORD_REQUIRED", "ChallengeResponses":
{"NEW_PASSWORD": "[new_password]", "USERNAME": "[username]"}>

To set any required attributes that C<InitiateAuth> returned in an
C<requiredAttributes> parameter, add
C<"userAttributes.[attribute_name]": "[attribute_value]">. This
parameter can also set values for writable attributes that aren't
required by your user pool.

In a C<NEW_PASSWORD_REQUIRED> challenge response, you can't modify a
required attribute that already has a value. In
C<AdminRespondToAuthChallenge> or C<RespondToAuthChallenge>, set a
value for any keys that Amazon Cognito returned in the
C<requiredAttributes> parameter, then use the
C<AdminUpdateUserAttributes> or C<UpdateUserAttributes> API operation
to modify the value of any additional attributes.

=item SOFTWARE_TOKEN_MFA

C<"ChallengeName": "SOFTWARE_TOKEN_MFA", "ChallengeResponses":
{"USERNAME": "[username]", "SOFTWARE_TOKEN_MFA_CODE":
[authenticator_code]}>

=item DEVICE_SRP_AUTH

C<"ChallengeName": "DEVICE_SRP_AUTH", "ChallengeResponses":
{"USERNAME": "[username]", "DEVICE_KEY": "[device_key]", "SRP_A":
"[srp_a]"}>

=item DEVICE_PASSWORD_VERIFIER

C<"ChallengeName": "DEVICE_PASSWORD_VERIFIER", "ChallengeResponses":
{"DEVICE_KEY": "[device_key]", "PASSWORD_CLAIM_SIGNATURE":
"[claim_signature]", "PASSWORD_CLAIM_SECRET_BLOCK": "[secret_block]",
"TIMESTAMP": [timestamp], "USERNAME": "[username]"}>

=item MFA_SETUP

C<"ChallengeName": "MFA_SETUP", "ChallengeResponses": {"USERNAME":
"[username]"}, "SESSION": "[Session ID from VerifySoftwareToken]">

=item SELECT_MFA_TYPE

C<"ChallengeName": "SELECT_MFA_TYPE", "ChallengeResponses":
{"USERNAME": "[username]", "ANSWER": "[SMS_MFA or
SOFTWARE_TOKEN_MFA]"}>

=back

For more information about C<SECRET_HASH>, see Computing secret hash
values
(https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#cognito-user-pools-computing-secret-hash).
For information about C<DEVICE_KEY>, see Working with user devices in
your user pool
(https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html).



=head2 B<REQUIRED> ClientId => Str

The ID of the app client where the user is signing in.



=head2 ClientMetadata => L<Paws::CognitoIdp::ClientMetadataType>

A map of custom key-value pairs that you can provide as input for any
custom workflows that this action triggers.

You create custom workflows by assigning Lambda functions to user pool
triggers. When you use the RespondToAuthChallenge API action, Amazon
Cognito invokes any functions that are assigned to the following
triggers: I<post authentication>, I<pre token generation>, I<define
auth challenge>, I<create auth challenge>, and I<verify auth
challenge>. When Amazon Cognito invokes any of these functions, it
passes a JSON payload, which the function receives as input. This
payload contains a C<clientMetadata> attribute, which provides the data
that you assigned to the ClientMetadata parameter in your
RespondToAuthChallenge request. In your function code in Lambda, you
can process the C<clientMetadata> value to enhance your workflow for
your specific needs.

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

The session identifier that maintains the state of authentication
requests and challenge responses. If an C<AdminInitiateAuth> or
C<AdminRespondToAuthChallenge> API request results in a determination
that your application must pass another challenge, Amazon Cognito
returns a session with other challenge parameters. Send this session
identifier, unmodified, to the next C<AdminRespondToAuthChallenge>
request.



=head2 UserContextData => L<Paws::CognitoIdp::UserContextDataType>

Contextual data about your user session like the device fingerprint, IP
address, or location. Amazon Cognito threat protection evaluates the
risk of an authentication event based on the context that your app
generates and passes to Amazon Cognito when it makes API requests.

For more information, see Collecting data for threat protection in
applications
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-viewing-threat-protection-app.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RespondToAuthChallenge in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

