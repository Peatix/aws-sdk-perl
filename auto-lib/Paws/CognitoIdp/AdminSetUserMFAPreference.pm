
package Paws::CognitoIdp::AdminSetUserMFAPreference;
  use Moose;
  has EmailMfaSettings => (is => 'ro', isa => 'Paws::CognitoIdp::EmailMfaSettingsType');
  has SMSMfaSettings => (is => 'ro', isa => 'Paws::CognitoIdp::SMSMfaSettingsType');
  has SoftwareTokenMfaSettings => (is => 'ro', isa => 'Paws::CognitoIdp::SoftwareTokenMfaSettingsType');
  has Username => (is => 'ro', isa => 'Str', required => 1);
  has UserPoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AdminSetUserMFAPreference');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::AdminSetUserMFAPreferenceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::AdminSetUserMFAPreference - Arguments for method AdminSetUserMFAPreference on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AdminSetUserMFAPreference on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method AdminSetUserMFAPreference.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AdminSetUserMFAPreference.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $AdminSetUserMFAPreferenceResponse =
      $cognito -idp->AdminSetUserMFAPreference(
      UserPoolId       => 'MyUserPoolIdType',
      Username         => 'MyUsernameType',
      EmailMfaSettings => {
        Enabled      => 1,    # OPTIONAL
        PreferredMfa => 1,    # OPTIONAL
      },    # OPTIONAL
      SMSMfaSettings => {
        Enabled      => 1,    # OPTIONAL
        PreferredMfa => 1,    # OPTIONAL
      },    # OPTIONAL
      SoftwareTokenMfaSettings => {
        Enabled      => 1,    # OPTIONAL
        PreferredMfa => 1,    # OPTIONAL
      },    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 EmailMfaSettings => L<Paws::CognitoIdp::EmailMfaSettingsType>

User preferences for email message MFA. Activates or deactivates email
MFA and sets it as the preferred MFA method when multiple methods are
available. To activate this setting, your user pool must be in the
Essentials tier
(https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-essentials.html)
or higher.



=head2 SMSMfaSettings => L<Paws::CognitoIdp::SMSMfaSettingsType>

User preferences for SMS message MFA. Activates or deactivates SMS MFA
and sets it as the preferred MFA method when multiple methods are
available.



=head2 SoftwareTokenMfaSettings => L<Paws::CognitoIdp::SoftwareTokenMfaSettingsType>

User preferences for time-based one-time password (TOTP) MFA. Activates
or deactivates TOTP MFA and sets it as the preferred MFA method when
multiple methods are available. This operation can set TOTP as a user's
preferred MFA method before they register a TOTP authenticator.



=head2 B<REQUIRED> Username => Str

The name of the user that you want to query or modify. The value of
this parameter is typically your user's username, but it can be any of
their alias attributes. If C<username> isn't an alias attribute in your
user pool, this value must be the C<sub> of a local user or the
username of a user from a third-party IdP.



=head2 B<REQUIRED> UserPoolId => Str

The ID of the user pool where you want to set a user's MFA preferences.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AdminSetUserMFAPreference in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

