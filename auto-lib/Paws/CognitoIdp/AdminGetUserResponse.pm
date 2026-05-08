
package Paws::CognitoIdp::AdminGetUserResponse;
  use Moose;
  has Enabled => (is => 'ro', isa => 'Bool');
  has MFAOptions => (is => 'ro', isa => 'ArrayRef[Paws::CognitoIdp::MFAOptionType]');
  has PreferredMfaSetting => (is => 'ro', isa => 'Str');
  has UserAttributes => (is => 'ro', isa => 'ArrayRef[Paws::CognitoIdp::AttributeType]');
  has UserCreateDate => (is => 'ro', isa => 'Str');
  has UserLastModifiedDate => (is => 'ro', isa => 'Str');
  has UserMFASettingList => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Username => (is => 'ro', isa => 'Str', required => 1);
  has UserStatus => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::AdminGetUserResponse

=head1 ATTRIBUTES


=head2 Enabled => Bool

Indicates whether the user is activated for sign-in.


=head2 MFAOptions => ArrayRef[L<Paws::CognitoIdp::MFAOptionType>]

I<This response parameter is no longer supported.> It provides
information only about SMS MFA configurations. It doesn't provide
information about time-based one-time password (TOTP) software token
MFA configurations. To look up information about either type of MFA
configuration, use UserMFASettingList instead.


=head2 PreferredMfaSetting => Str

The user's preferred MFA. Users can prefer SMS message, email message,
or TOTP MFA.


=head2 UserAttributes => ArrayRef[L<Paws::CognitoIdp::AttributeType>]

An array of name-value pairs of user attributes and their values, for
example C<"email": "testuser@example.com">.


=head2 UserCreateDate => Str

The date and time when the item was created. Amazon Cognito returns
this timestamp in UNIX epoch time format. Your SDK might render the
output in a human-readable format like ISO 8601 or a Java C<Date>
object.


=head2 UserLastModifiedDate => Str

The date and time when the item was modified. Amazon Cognito returns
this timestamp in UNIX epoch time format. Your SDK might render the
output in a human-readable format like ISO 8601 or a Java C<Date>
object.


=head2 UserMFASettingList => ArrayRef[Str|Undef]

The MFA options that are activated for the user. The possible values in
this list are C<SMS_MFA>, C<EMAIL_OTP>, and C<SOFTWARE_TOKEN_MFA>.


=head2 B<REQUIRED> Username => Str

The username of the user that you requested.


=head2 UserStatus => Str

The user's status. Can be one of the following:

=over

=item *

UNCONFIRMED - User has been created but not confirmed.

=item *

CONFIRMED - User has been confirmed.

=item *

UNKNOWN - User status isn't known.

=item *

RESET_REQUIRED - User is confirmed, but the user must request a code
and reset their password before they can sign in.

=item *

FORCE_CHANGE_PASSWORD - The user is confirmed and the user can sign in
using a temporary password, but on first sign-in, the user must change
their password to a new value before doing anything else.

=item *

EXTERNAL_PROVIDER - The user signed in with a third-party identity
provider.

=back


Valid values are: C<"UNCONFIRMED">, C<"CONFIRMED">, C<"ARCHIVED">, C<"COMPROMISED">, C<"UNKNOWN">, C<"RESET_REQUIRED">, C<"FORCE_CHANGE_PASSWORD">, C<"EXTERNAL_PROVIDER">
=head2 _request_id => Str


=cut

1;