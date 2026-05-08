
package Paws::CognitoIdp::GetUserPoolMfaConfigResponse;
  use Moose;
  has EmailMfaConfiguration => (is => 'ro', isa => 'Paws::CognitoIdp::EmailMfaConfigType');
  has MfaConfiguration => (is => 'ro', isa => 'Str');
  has SmsMfaConfiguration => (is => 'ro', isa => 'Paws::CognitoIdp::SmsMfaConfigType');
  has SoftwareTokenMfaConfiguration => (is => 'ro', isa => 'Paws::CognitoIdp::SoftwareTokenMfaConfigType');
  has WebAuthnConfiguration => (is => 'ro', isa => 'Paws::CognitoIdp::WebAuthnConfigurationType');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::GetUserPoolMfaConfigResponse

=head1 ATTRIBUTES


=head2 EmailMfaConfiguration => L<Paws::CognitoIdp::EmailMfaConfigType>

Shows configuration for user pool email message MFA and sign-in with
one-time passwords (OTPs). Includes the subject and body of the email
message template for sign-in and MFA messages. To activate this
setting, your user pool must be in the Essentials tier
(https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-essentials.html)
or higher.


=head2 MfaConfiguration => Str

Displays the state of multi-factor authentication (MFA) as on, off, or
optional. When C<ON>, all users must set up MFA before they can sign
in. When C<OPTIONAL>, your application must make a client-side
determination of whether a user wants to register an MFA device. For
user pools with adaptive authentication with threat protection, choose
C<OPTIONAL>.

When C<MfaConfiguration> is C<OPTIONAL>, managed login doesn't
automatically prompt users to set up MFA. Amazon Cognito generates MFA
prompts in API responses and in managed login for users who have chosen
and configured a preferred MFA factor.

Valid values are: C<"OFF">, C<"ON">, C<"OPTIONAL">
=head2 SmsMfaConfiguration => L<Paws::CognitoIdp::SmsMfaConfigType>

Shows user pool configuration for SMS message MFA. Includes the message
template and the SMS message sending configuration for Amazon SNS.


=head2 SoftwareTokenMfaConfiguration => L<Paws::CognitoIdp::SoftwareTokenMfaConfigType>

Shows user pool configuration for time-based one-time password (TOTP)
MFA. Includes TOTP enabled or disabled state.


=head2 WebAuthnConfiguration => L<Paws::CognitoIdp::WebAuthnConfigurationType>

Shows user pool configuration for sign-in with passkey authenticators
like biometric devices and security keys. Passkeys are not eligible MFA
factors. They are instead an eligible primary sign-in factor for
choice-based authentication
(https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flows-selection-sdk.html#authentication-flows-selection-choice),
or the C<USER_AUTH> flow.


=head2 _request_id => Str


=cut

1;