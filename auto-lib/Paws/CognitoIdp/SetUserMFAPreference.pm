
package Paws::CognitoIdp::SetUserMFAPreference;
  use Moose;
  has AccessToken => (is => 'ro', isa => 'Str', required => 1);
  has EmailMfaSettings => (is => 'ro', isa => 'Paws::CognitoIdp::EmailMfaSettingsType');
  has SMSMfaSettings => (is => 'ro', isa => 'Paws::CognitoIdp::SMSMfaSettingsType');
  has SoftwareTokenMfaSettings => (is => 'ro', isa => 'Paws::CognitoIdp::SoftwareTokenMfaSettingsType');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetUserMFAPreference');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::SetUserMFAPreferenceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::SetUserMFAPreference - Arguments for method SetUserMFAPreference on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SetUserMFAPreference on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method SetUserMFAPreference.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SetUserMFAPreference.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $SetUserMFAPreferenceResponse = $cognito -idp->SetUserMFAPreference(
      AccessToken      => 'MyTokenModelType',
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


=head2 B<REQUIRED> AccessToken => Str

A valid access token that Amazon Cognito issued to the currently
signed-in user. Must include a scope claim for
C<aws.cognito.signin.user.admin>.



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
multiple methods are available. Users must register a TOTP
authenticator before they set this as their preferred MFA method.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SetUserMFAPreference in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

