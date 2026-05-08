
package Paws::CognitoIdp::UpdateUserPool;
  use Moose;
  has AccountRecoverySetting => (is => 'ro', isa => 'Paws::CognitoIdp::AccountRecoverySettingType');
  has AdminCreateUserConfig => (is => 'ro', isa => 'Paws::CognitoIdp::AdminCreateUserConfigType');
  has AutoVerifiedAttributes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has DeletionProtection => (is => 'ro', isa => 'Str');
  has DeviceConfiguration => (is => 'ro', isa => 'Paws::CognitoIdp::DeviceConfigurationType');
  has EmailConfiguration => (is => 'ro', isa => 'Paws::CognitoIdp::EmailConfigurationType');
  has EmailVerificationMessage => (is => 'ro', isa => 'Str');
  has EmailVerificationSubject => (is => 'ro', isa => 'Str');
  has LambdaConfig => (is => 'ro', isa => 'Paws::CognitoIdp::LambdaConfigType');
  has MfaConfiguration => (is => 'ro', isa => 'Str');
  has Policies => (is => 'ro', isa => 'Paws::CognitoIdp::UserPoolPolicyType');
  has PoolName => (is => 'ro', isa => 'Str');
  has SmsAuthenticationMessage => (is => 'ro', isa => 'Str');
  has SmsConfiguration => (is => 'ro', isa => 'Paws::CognitoIdp::SmsConfigurationType');
  has SmsVerificationMessage => (is => 'ro', isa => 'Str');
  has UserAttributeUpdateSettings => (is => 'ro', isa => 'Paws::CognitoIdp::UserAttributeUpdateSettingsType');
  has UserPoolAddOns => (is => 'ro', isa => 'Paws::CognitoIdp::UserPoolAddOnsType');
  has UserPoolId => (is => 'ro', isa => 'Str', required => 1);
  has UserPoolTags => (is => 'ro', isa => 'Paws::CognitoIdp::UserPoolTagsType');
  has UserPoolTier => (is => 'ro', isa => 'Str');
  has VerificationMessageTemplate => (is => 'ro', isa => 'Paws::CognitoIdp::VerificationMessageTemplateType');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateUserPool');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::UpdateUserPoolResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::UpdateUserPool - Arguments for method UpdateUserPool on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateUserPool on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method UpdateUserPool.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateUserPool.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $UpdateUserPoolResponse = $cognito -idp->UpdateUserPool(
      UserPoolId             => 'MyUserPoolIdType',
      AccountRecoverySetting => {
        RecoveryMechanisms => [
          {
            Name => 'verified_email'
            ,    # values: verified_email, verified_phone_number, admin_only
            Priority => 1,    # min: 1, max: 2

          },
          ...
        ],    # min: 1, max: 2; OPTIONAL
      },    # OPTIONAL
      AdminCreateUserConfig => {
        AllowAdminCreateUserOnly => 1,    # OPTIONAL
        InviteMessageTemplate    => {
          EmailMessage =>
            'MyEmailInviteMessageType',    # min: 6, max: 20000; OPTIONAL
          EmailSubject =>
            'MyEmailVerificationSubjectType',    # min: 1, max: 140; OPTIONAL
          SMSMessage => 'MySmsInviteMessageType',   # min: 6, max: 140; OPTIONAL
        },    # OPTIONAL
        UnusedAccountValidityDays => 1,    # max: 365; OPTIONAL
      },    # OPTIONAL
      AutoVerifiedAttributes => [
        'phone_number', ...    # values: phone_number, email
      ],    # OPTIONAL
      DeletionProtection  => 'ACTIVE',    # OPTIONAL
      DeviceConfiguration => {
        ChallengeRequiredOnNewDevice     => 1,    # OPTIONAL
        DeviceOnlyRememberedOnUserPrompt => 1,    # OPTIONAL
      },    # OPTIONAL
      EmailConfiguration => {
        ConfigurationSet => 'MySESConfigurationSet', # min: 1, max: 64; OPTIONAL
        EmailSendingAccount =>
          'COGNITO_DEFAULT',    # values: COGNITO_DEFAULT, DEVELOPER; OPTIONAL
        From                => 'MyStringType',          # max: 131072; OPTIONAL
        ReplyToEmailAddress => 'MyEmailAddressType',    # OPTIONAL
        SourceArn           => 'MyArnType',    # min: 20, max: 2048; OPTIONAL
      },    # OPTIONAL
      EmailVerificationMessage => 'MyEmailVerificationMessageType',   # OPTIONAL
      EmailVerificationSubject => 'MyEmailVerificationSubjectType',   # OPTIONAL
      LambdaConfig             => {
        CreateAuthChallenge => 'MyArnType',    # min: 20, max: 2048; OPTIONAL
        CustomEmailSender   => {
          LambdaArn     => 'MyArnType',        # min: 20, max: 2048; OPTIONAL
          LambdaVersion => 'V1_0',             # values: V1_0

        },    # OPTIONAL
        CustomMessage   => 'MyArnType',    # min: 20, max: 2048; OPTIONAL
        CustomSMSSender => {
          LambdaArn     => 'MyArnType',    # min: 20, max: 2048; OPTIONAL
          LambdaVersion => 'V1_0',         # values: V1_0

        },    # OPTIONAL
        DefineAuthChallenge      => 'MyArnType',  # min: 20, max: 2048; OPTIONAL
        KMSKeyID                 => 'MyArnType',  # min: 20, max: 2048; OPTIONAL
        PostAuthentication       => 'MyArnType',  # min: 20, max: 2048; OPTIONAL
        PostConfirmation         => 'MyArnType',  # min: 20, max: 2048; OPTIONAL
        PreAuthentication        => 'MyArnType',  # min: 20, max: 2048; OPTIONAL
        PreSignUp                => 'MyArnType',  # min: 20, max: 2048; OPTIONAL
        PreTokenGeneration       => 'MyArnType',  # min: 20, max: 2048; OPTIONAL
        PreTokenGenerationConfig => {
          LambdaArn     => 'MyArnType',           # min: 20, max: 2048; OPTIONAL
          LambdaVersion => 'V1_0',                # values: V1_0, V2_0, V3_0

        },    # OPTIONAL
        UserMigration => 'MyArnType',    # min: 20, max: 2048; OPTIONAL
        VerifyAuthChallengeResponse =>
          'MyArnType',                   # min: 20, max: 2048; OPTIONAL
      },    # OPTIONAL
      MfaConfiguration => 'OFF',    # OPTIONAL
      Policies         => {
        PasswordPolicy => {
          MinimumLength                 => 1,    # min: 6, max: 99; OPTIONAL
          PasswordHistorySize           => 1,    # max: 24; OPTIONAL
          RequireLowercase              => 1,    # OPTIONAL
          RequireNumbers                => 1,    # OPTIONAL
          RequireSymbols                => 1,    # OPTIONAL
          RequireUppercase              => 1,    # OPTIONAL
          TemporaryPasswordValidityDays => 1,    # max: 365; OPTIONAL
        },    # OPTIONAL
        SignInPolicy => {
          AllowedFirstAuthFactors => [
            'PASSWORD', ...    # values: PASSWORD, EMAIL_OTP, SMS_OTP, WEB_AUTHN
          ],    # min: 1, max: 4; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      PoolName                 => 'MyUserPoolNameType',              # OPTIONAL
      SmsAuthenticationMessage => 'MySmsVerificationMessageType',    # OPTIONAL
      SmsConfiguration         => {
        SnsCallerArn => 'MyArnType',           # min: 20, max: 2048; OPTIONAL
        ExternalId   => 'MyStringType',        # max: 131072; OPTIONAL
        SnsRegion    => 'MyRegionCodeType',    # min: 5, max: 32; OPTIONAL
      },    # OPTIONAL
      SmsVerificationMessage      => 'MySmsVerificationMessageType',  # OPTIONAL
      UserAttributeUpdateSettings => {
        AttributesRequireVerificationBeforeUpdate => [
          'phone_number', ...    # values: phone_number, email
        ],    # OPTIONAL
      },    # OPTIONAL
      UserPoolAddOns => {
        AdvancedSecurityMode            => 'OFF', # values: OFF, AUDIT, ENFORCED
        AdvancedSecurityAdditionalFlows => {
          CustomAuthMode => 'AUDIT',    # values: AUDIT, ENFORCED; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      UserPoolTags => {
        'MyTagKeysType' =>
          'MyTagValueType',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      UserPoolTier                => 'LITE',    # OPTIONAL
      VerificationMessageTemplate => {
        DefaultEmailOption => 'CONFIRM_WITH_LINK'
        ,    # values: CONFIRM_WITH_LINK, CONFIRM_WITH_CODE; OPTIONAL
        EmailMessage => 'MyEmailVerificationMessageType',   # min: 6, max: 20000
        EmailMessageByLink =>
          'MyEmailVerificationMessageByLinkType', # min: 6, max: 20000; OPTIONAL
        EmailSubject =>
          'MyEmailVerificationSubjectType',       # min: 1, max: 140; OPTIONAL
        EmailSubjectByLink =>
          'MyEmailVerificationSubjectByLinkType',   # min: 1, max: 140; OPTIONAL
        SmsMessage => 'MySmsVerificationMessageType',    # min: 6, max: 140
      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 AccountRecoverySetting => L<Paws::CognitoIdp::AccountRecoverySettingType>

The available verified method a user can use to recover their password
when they call C<ForgotPassword>. You can use this setting to define a
preferred method when a user has more than one method available. With
this setting, SMS doesn't qualify for a valid password recovery
mechanism if the user also has SMS multi-factor authentication (MFA)
activated. In the absence of this setting, Amazon Cognito uses the
legacy behavior to determine the recovery method where SMS is preferred
through email.



=head2 AdminCreateUserConfig => L<Paws::CognitoIdp::AdminCreateUserConfigType>

The configuration for administrative creation of users. Includes the
template for the invitation message for new users, the duration of
temporary passwords, and permitting self-service sign-up.



=head2 AutoVerifiedAttributes => ArrayRef[Str|Undef]

The attributes that you want your user pool to automatically verify.
Possible values: B<email>, B<phone_number>. For more information see
Verifying contact information at sign-up
(https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#allowing-users-to-sign-up-and-confirm-themselves).



=head2 DeletionProtection => Str

When active, C<DeletionProtection> prevents accidental deletion of your
user pool. Before you can delete a user pool that you have protected
against deletion, you must deactivate this feature.

When you try to delete a protected user pool in a C<DeleteUserPool> API
request, Amazon Cognito returns an C<InvalidParameterException> error.
To delete a protected user pool, send a new C<DeleteUserPool> request
after you deactivate deletion protection in an C<UpdateUserPool> API
request.

Valid values are: C<"ACTIVE">, C<"INACTIVE">

=head2 DeviceConfiguration => L<Paws::CognitoIdp::DeviceConfigurationType>

The device-remembering configuration for a user pool. Device
remembering or device tracking is a "Remember me on this device" option
for user pools that perform authentication with the device key of a
trusted device in the back end, instead of a user-provided MFA code.
For more information about device authentication, see Working with user
devices in your user pool
(https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html).
A null value indicates that you have deactivated device remembering in
your user pool.

When you provide a value for any C<DeviceConfiguration> field, you
activate the Amazon Cognito device-remembering feature. For more
information, see Working with devices
(https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html).



=head2 EmailConfiguration => L<Paws::CognitoIdp::EmailConfigurationType>

The email configuration of your user pool. The email configuration type
sets your preferred sending method, Amazon Web Services Region, and
sender for email invitation and verification messages from your user
pool.



=head2 EmailVerificationMessage => Str

This parameter is no longer used.



=head2 EmailVerificationSubject => Str

This parameter is no longer used.



=head2 LambdaConfig => L<Paws::CognitoIdp::LambdaConfigType>

A collection of user pool Lambda triggers. Amazon Cognito invokes
triggers at several possible stages of authentication operations.
Triggers can modify the outcome of the operations that invoked them.



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

=head2 Policies => L<Paws::CognitoIdp::UserPoolPolicyType>

The password policy and sign-in policy in the user pool. The password
policy sets options like password complexity requirements and password
history. The sign-in policy sets the options available to applications
in choice-based authentication
(https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flows-selection-sdk.html#authentication-flows-selection-choice).



=head2 PoolName => Str

The updated name of your user pool.



=head2 SmsAuthenticationMessage => Str

The contents of the SMS message that your user pool sends to users in
SMS authentication.



=head2 SmsConfiguration => L<Paws::CognitoIdp::SmsConfigurationType>

The SMS configuration with the settings for your Amazon Cognito user
pool to send SMS message with Amazon Simple Notification Service. To
send SMS messages with Amazon SNS in the Amazon Web Services Region
that you want, the Amazon Cognito user pool uses an Identity and Access
Management (IAM) role in your Amazon Web Services account. For more
information see SMS message settings
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html).



=head2 SmsVerificationMessage => Str

This parameter is no longer used.



=head2 UserAttributeUpdateSettings => L<Paws::CognitoIdp::UserAttributeUpdateSettingsType>

The settings for updates to user attributes. These settings include the
property C<AttributesRequireVerificationBeforeUpdate>, a user-pool
setting that tells Amazon Cognito how to handle changes to the value of
your users' email address and phone number attributes. For more
information, see Verifying updates to email addresses and phone numbers
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-email-phone-verification.html#user-pool-settings-verifications-verify-attribute-updates).



=head2 UserPoolAddOns => L<Paws::CognitoIdp::UserPoolAddOnsType>

Contains settings for activation of threat protection, including the
operating mode and additional authentication types. To log user
security information but take no action, set to C<AUDIT>. To configure
automatic security responses to potentially unwanted traffic to your
user pool, set to C<ENFORCED>.

For more information, see Adding advanced security to a user pool
(https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pool-settings-advanced-security.html).
To activate this setting, your user pool must be on the Plus tier
(https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-plus.html).



=head2 B<REQUIRED> UserPoolId => Str

The ID of the user pool you want to update.



=head2 UserPoolTags => L<Paws::CognitoIdp::UserPoolTagsType>

The tag keys and values to assign to the user pool. A tag is a label
that you can use to categorize and manage user pools in different ways,
such as by purpose, owner, environment, or other criteria.



=head2 UserPoolTier => Str

The user pool feature plan
(https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-sign-in-feature-plans.html),
or tier. This parameter determines the eligibility of the user pool for
features like managed login, access-token customization, and threat
protection. Defaults to C<ESSENTIALS>.

Valid values are: C<"LITE">, C<"ESSENTIALS">, C<"PLUS">

=head2 VerificationMessageTemplate => L<Paws::CognitoIdp::VerificationMessageTemplateType>

The template for the verification message that your user pool delivers
to users who set an email address or phone number attribute.

Set the email message type that corresponds to your
C<DefaultEmailOption> selection. For C<CONFIRM_WITH_LINK>, specify an
C<EmailMessageByLink> and leave C<EmailMessage> blank. For
C<CONFIRM_WITH_CODE>, specify an C<EmailMessage> and leave
C<EmailMessageByLink> blank. When you supply both parameters with
either choice, Amazon Cognito returns an error.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateUserPool in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

