
package Paws::CognitoIdp::SetUserPoolMfaConfig;
  use Moose;
  has EmailMfaConfiguration => (is => 'ro', isa => 'Paws::CognitoIdp::EmailMfaConfigType');
  has MfaConfiguration => (is => 'ro', isa => 'Str');
  has SmsMfaConfiguration => (is => 'ro', isa => 'Paws::CognitoIdp::SmsMfaConfigType');
  has SoftwareTokenMfaConfiguration => (is => 'ro', isa => 'Paws::CognitoIdp::SoftwareTokenMfaConfigType');
  has UserPoolId => (is => 'ro', isa => 'Str', required => 1);
  has WebAuthnConfiguration => (is => 'ro', isa => 'Paws::CognitoIdp::WebAuthnConfigurationType');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetUserPoolMfaConfig');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::SetUserPoolMfaConfigResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::SetUserPoolMfaConfig - Arguments for method SetUserPoolMfaConfig on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SetUserPoolMfaConfig on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method SetUserPoolMfaConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SetUserPoolMfaConfig.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $SetUserPoolMfaConfigResponse = $cognito -idp->SetUserPoolMfaConfig(
      UserPoolId            => 'MyUserPoolIdType',
      EmailMfaConfiguration => {
        Message => 'MyEmailMfaMessageType',    # min: 6, max: 20000; OPTIONAL
        Subject => 'MyEmailMfaSubjectType',    # OPTIONAL
      },    # OPTIONAL
      MfaConfiguration    => 'OFF',    # OPTIONAL
      SmsMfaConfiguration => {
        SmsAuthenticationMessage =>
          'MySmsVerificationMessageType',    # min: 6, max: 140; OPTIONAL
        SmsConfiguration => {
          SnsCallerArn => 'MyArnType',           # min: 20, max: 2048
          ExternalId   => 'MyStringType',        # max: 131072; OPTIONAL
          SnsRegion    => 'MyRegionCodeType',    # min: 5, max: 32; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      SoftwareTokenMfaConfiguration => {
        Enabled => 1,    # OPTIONAL
      },    # OPTIONAL
      WebAuthnConfiguration => {
        RelyingPartyId   => 'MyRelyingPartyIdType', # min: 1, max: 127; OPTIONAL
        UserVerification => 'required',  # values: required, preferred; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $EmailMfaConfiguration =
      $SetUserPoolMfaConfigResponse->EmailMfaConfiguration;
    my $MfaConfiguration = $SetUserPoolMfaConfigResponse->MfaConfiguration;
    my $SmsMfaConfiguration =
      $SetUserPoolMfaConfigResponse->SmsMfaConfiguration;
    my $SoftwareTokenMfaConfiguration =
      $SetUserPoolMfaConfigResponse->SoftwareTokenMfaConfiguration;
    my $WebAuthnConfiguration =
      $SetUserPoolMfaConfigResponse->WebAuthnConfiguration;

    # Returns a L<Paws::CognitoIdp::SetUserPoolMfaConfigResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 EmailMfaConfiguration => L<Paws::CognitoIdp::EmailMfaConfigType>

Sets configuration for user pool email message MFA and sign-in with
one-time passwords (OTPs). Includes the subject and body of the email
message template for sign-in and MFA messages. To activate this
setting, your user pool must be in the Essentials tier
(https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-essentials.html)
or higher.



=head2 MfaConfiguration => Str

Sets multi-factor authentication (MFA) to be on, off, or optional. When
C<ON>, all users must set up MFA before they can sign in. When
C<OPTIONAL>, your application must make a client-side determination of
whether a user wants to register an MFA device. For user pools with
adaptive authentication with threat protection, choose C<OPTIONAL>.

When C<MfaConfiguration> is C<OPTIONAL>, managed login doesn't
automatically prompt users to set up MFA. Amazon Cognito generates MFA
prompts in API responses and in managed login for users who have chosen
and configured a preferred MFA factor.

Valid values are: C<"OFF">, C<"ON">, C<"OPTIONAL">

=head2 SmsMfaConfiguration => L<Paws::CognitoIdp::SmsMfaConfigType>

Configures user pool SMS messages for MFA. Sets the message template
and the SMS message sending configuration for Amazon SNS.



=head2 SoftwareTokenMfaConfiguration => L<Paws::CognitoIdp::SoftwareTokenMfaConfigType>

Configures a user pool for time-based one-time password (TOTP) MFA.
Enables or disables TOTP.



=head2 B<REQUIRED> UserPoolId => Str

The user pool ID.



=head2 WebAuthnConfiguration => L<Paws::CognitoIdp::WebAuthnConfigurationType>

The configuration of your user pool for passkey, or WebAuthn,
authentication and registration. You can set this configuration
independent of the MFA configuration options in this operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SetUserPoolMfaConfig in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

