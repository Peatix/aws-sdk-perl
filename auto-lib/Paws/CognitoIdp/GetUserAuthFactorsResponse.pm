
package Paws::CognitoIdp::GetUserAuthFactorsResponse;
  use Moose;
  has ConfiguredUserAuthFactors => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has PreferredMfaSetting => (is => 'ro', isa => 'Str');
  has UserMFASettingList => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Username => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::GetUserAuthFactorsResponse

=head1 ATTRIBUTES


=head2 ConfiguredUserAuthFactors => ArrayRef[Str|Undef]

The authentication types that are available to the user with
C<USER_AUTH> sign-in, for example C<["PASSWORD", "WEB_AUTHN"]>.


=head2 PreferredMfaSetting => Str

The challenge method that Amazon Cognito returns to the user in
response to sign-in requests. Users can prefer SMS message, email
message, or TOTP MFA.


=head2 UserMFASettingList => ArrayRef[Str|Undef]

The MFA options that are activated for the user. The possible values in
this list are C<SMS_MFA>, C<EMAIL_OTP>, and C<SOFTWARE_TOKEN_MFA>.


=head2 B<REQUIRED> Username => Str

The name of the user who is eligible for the authentication factors in
the response.


=head2 _request_id => Str


=cut

1;