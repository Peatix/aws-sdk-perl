
package Paws::CognitoIdp::CreateUserPoolClient;
  use Moose;
  has AccessTokenValidity => (is => 'ro', isa => 'Int');
  has AllowedOAuthFlows => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has AllowedOAuthFlowsUserPoolClient => (is => 'ro', isa => 'Bool');
  has AllowedOAuthScopes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has AnalyticsConfiguration => (is => 'ro', isa => 'Paws::CognitoIdp::AnalyticsConfigurationType');
  has AuthSessionValidity => (is => 'ro', isa => 'Int');
  has CallbackURLs => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ClientName => (is => 'ro', isa => 'Str', required => 1);
  has DefaultRedirectURI => (is => 'ro', isa => 'Str');
  has EnablePropagateAdditionalUserContextData => (is => 'ro', isa => 'Bool');
  has EnableTokenRevocation => (is => 'ro', isa => 'Bool');
  has ExplicitAuthFlows => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has GenerateSecret => (is => 'ro', isa => 'Bool');
  has IdTokenValidity => (is => 'ro', isa => 'Int');
  has LogoutURLs => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has PreventUserExistenceErrors => (is => 'ro', isa => 'Str');
  has ReadAttributes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has RefreshTokenRotation => (is => 'ro', isa => 'Paws::CognitoIdp::RefreshTokenRotationType');
  has RefreshTokenValidity => (is => 'ro', isa => 'Int');
  has SupportedIdentityProviders => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has TokenValidityUnits => (is => 'ro', isa => 'Paws::CognitoIdp::TokenValidityUnitsType');
  has UserPoolId => (is => 'ro', isa => 'Str', required => 1);
  has WriteAttributes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateUserPoolClient');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::CreateUserPoolClientResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::CreateUserPoolClient - Arguments for method CreateUserPoolClient on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateUserPoolClient on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method CreateUserPoolClient.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateUserPoolClient.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $CreateUserPoolClientResponse = $cognito -idp->CreateUserPoolClient(
      ClientName          => 'MyClientNameType',
      UserPoolId          => 'MyUserPoolIdType',
      AccessTokenValidity => 1,                    # OPTIONAL
      AllowedOAuthFlows   => [
        'code', ...    # values: code, implicit, client_credentials
      ],    # OPTIONAL
      AllowedOAuthFlowsUserPoolClient => 1,    # OPTIONAL
      AllowedOAuthScopes              => [
        'MyScopeType', ...                     # min: 1, max: 256
      ],    # OPTIONAL
      AnalyticsConfiguration => {
        ApplicationArn => 'MyArnType',          # min: 20, max: 2048; OPTIONAL
        ApplicationId  => 'MyHexStringType',    # OPTIONAL
        ExternalId     => 'MyStringType',       # max: 131072; OPTIONAL
        RoleArn        => 'MyArnType',          # min: 20, max: 2048; OPTIONAL
        UserDataShared => 1,
      },    # OPTIONAL
      AuthSessionValidity => 1,    # OPTIONAL
      CallbackURLs        => [
        'MyRedirectUrlType', ...    # min: 1, max: 1024
      ],    # OPTIONAL
      DefaultRedirectURI => 'MyRedirectUrlType',        # OPTIONAL
      EnablePropagateAdditionalUserContextData => 1,    # OPTIONAL
      EnableTokenRevocation                    => 1,    # OPTIONAL
      ExplicitAuthFlows                        => [
        'ADMIN_NO_SRP_AUTH',
        ... # values: ADMIN_NO_SRP_AUTH, CUSTOM_AUTH_FLOW_ONLY, USER_PASSWORD_AUTH, ALLOW_ADMIN_USER_PASSWORD_AUTH, ALLOW_CUSTOM_AUTH, ALLOW_USER_PASSWORD_AUTH, ALLOW_USER_SRP_AUTH, ALLOW_REFRESH_TOKEN_AUTH, ALLOW_USER_AUTH
      ],    # OPTIONAL
      GenerateSecret  => 1,    # OPTIONAL
      IdTokenValidity => 1,    # OPTIONAL
      LogoutURLs      => [
        'MyRedirectUrlType', ...    # min: 1, max: 1024
      ],    # OPTIONAL
      PreventUserExistenceErrors => 'LEGACY',    # OPTIONAL
      ReadAttributes             => [
        'MyClientPermissionType', ...            # min: 1, max: 2048
      ],    # OPTIONAL
      RefreshTokenRotation => {
        Feature                 => 'ENABLED',    # values: ENABLED, DISABLED
        RetryGracePeriodSeconds => 1,            # max: 60; OPTIONAL
      },    # OPTIONAL
      RefreshTokenValidity       => 1,    # OPTIONAL
      SupportedIdentityProviders => [
        'MyProviderNameType', ...         # min: 1, max: 32
      ],    # OPTIONAL
      TokenValidityUnits => {
        AccessToken =>
          'seconds',    # values: seconds, minutes, hours, days; OPTIONAL
        IdToken => 'seconds',  # values: seconds, minutes, hours, days; OPTIONAL
        RefreshToken =>
          'seconds',           # values: seconds, minutes, hours, days; OPTIONAL
      },    # OPTIONAL
      WriteAttributes => [
        'MyClientPermissionType', ...    # min: 1, max: 2048
      ],    # OPTIONAL
    );

    # Results:
    my $UserPoolClient = $CreateUserPoolClientResponse->UserPoolClient;

    # Returns a L<Paws::CognitoIdp::CreateUserPoolClientResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 AccessTokenValidity => Int

The access token time limit. After this limit expires, your user can't
use their access token. To specify the time unit for
C<AccessTokenValidity> as C<seconds>, C<minutes>, C<hours>, or C<days>,
set a C<TokenValidityUnits> value in your API request.

For example, when you set C<AccessTokenValidity> to C<10> and
C<TokenValidityUnits> to C<hours>, your user can authorize access with
their access token for 10 hours.

The default time unit for C<AccessTokenValidity> in an API request is
hours. I<Valid range> is displayed below in seconds.

If you don't specify otherwise in the configuration of your app client,
your access tokens are valid for one hour.



=head2 AllowedOAuthFlows => ArrayRef[Str|Undef]

The OAuth grant types that you want your app client to generate for
clients in managed login authentication. To create an app client that
generates client credentials grants, you must add C<client_credentials>
as the only allowed OAuth flow.

=over

=item code

Use a code grant flow, which provides an authorization code as the
response. This code can be exchanged for access tokens with the
C</oauth2/token> endpoint.

=item implicit

Issue the access token, and the ID token when scopes like C<openid> and
C<profile> are requested, directly to your user.

=item client_credentials

Issue the access token from the C</oauth2/token> endpoint directly to a
non-person user, authorized by a combination of the client ID and
client secret.

=back




=head2 AllowedOAuthFlowsUserPoolClient => Bool

Set to C<true> to use OAuth 2.0 authorization server features in your
app client.

This parameter must have a value of C<true> before you can configure
the following features in your app client.

=over

=item *

C<CallBackURLs>: Callback URLs.

=item *

C<LogoutURLs>: Sign-out redirect URLs.

=item *

C<AllowedOAuthScopes>: OAuth 2.0 scopes.

=item *

C<AllowedOAuthFlows>: Support for authorization code, implicit, and
client credentials OAuth 2.0 grants.

=back

To use authorization server features, configure one of these features
in the Amazon Cognito console or set C<AllowedOAuthFlowsUserPoolClient>
to C<true> in a C<CreateUserPoolClient> or C<UpdateUserPoolClient> API
request. If you don't set a value for
C<AllowedOAuthFlowsUserPoolClient> in a request with the CLI or SDKs,
it defaults to C<false>. When C<false>, only SDK-based API sign-in is
permitted.



=head2 AllowedOAuthScopes => ArrayRef[Str|Undef]

The OAuth, OpenID Connect (OIDC), and custom scopes that you want to
permit your app client to authorize access with. Scopes govern access
control to user pool self-service API operations, user data from the
C<userInfo> endpoint, and third-party APIs. Scope values include
C<phone>, C<email>, C<openid>, and C<profile>. The
C<aws.cognito.signin.user.admin> scope authorizes user self-service
operations. Custom scopes with resource servers authorize access to
external APIs.



=head2 AnalyticsConfiguration => L<Paws::CognitoIdp::AnalyticsConfigurationType>

The user pool analytics configuration for collecting metrics and
sending them to your Amazon Pinpoint campaign.

In Amazon Web Services Regions where Amazon Pinpoint isn't available,
user pools might not have access to analytics or might be configurable
with campaigns in the US East (N. Virginia) Region. For more
information, see Using Amazon Pinpoint analytics
(https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-pinpoint-integration.html).



=head2 AuthSessionValidity => Int

Amazon Cognito creates a session token for each API request in an
authentication flow. C<AuthSessionValidity> is the duration, in
minutes, of that session token. Your user pool native user must respond
to each authentication challenge before the session expires.



=head2 CallbackURLs => ArrayRef[Str|Undef]

A list of allowed redirect, or callback, URLs for managed login
authentication. These URLs are the paths where you want to send your
users' browsers after they complete authentication with managed login
or a third-party IdP. Typically, callback URLs are the home of an
application that uses OAuth or OIDC libraries to process authentication
outcomes.

A redirect URI must meet the following requirements:

=over

=item *

Be an absolute URI.

=item *

Be registered with the authorization server. Amazon Cognito doesn't
accept authorization requests with C<redirect_uri> values that aren't
in the list of C<CallbackURLs> that you provide in this parameter.

=item *

Not include a fragment component.

=back

See OAuth 2.0 - Redirection Endpoint
(https://tools.ietf.org/html/rfc6749#section-3.1.2).

Amazon Cognito requires HTTPS over HTTP except for http://localhost for
testing purposes only.

App callback URLs such as myapp://example are also supported.



=head2 B<REQUIRED> ClientName => Str

A friendly name for the app client that you want to create.



=head2 DefaultRedirectURI => Str

The default redirect URI. In app clients with one assigned IdP,
replaces C<redirect_uri> in authentication requests. Must be in the
C<CallbackURLs> list.



=head2 EnablePropagateAdditionalUserContextData => Bool

When C<true>, your application can include additional
C<UserContextData> in authentication requests. This data includes the
IP address, and contributes to analysis by threat protection features.
For more information about propagation of user context data, see Adding
session data to API requests
(https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pool-settings-adaptive-authentication.html#user-pool-settings-adaptive-authentication-device-fingerprint).
If you donE<rsquo>t include this parameter, you can't send the source
IP address to Amazon Cognito threat protection features. You can only
activate C<EnablePropagateAdditionalUserContextData> in an app client
that has a client secret.



=head2 EnableTokenRevocation => Bool

Activates or deactivates token revocation
(https://docs.aws.amazon.com/cognito/latest/developerguide/token-revocation.html)
in the target app client.

If you don't include this parameter, token revocation is automatically
activated for the new user pool client.



=head2 ExplicitAuthFlows => ArrayRef[Str|Undef]

The authentication flows
(https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-authentication-flow-methods.html)
that you want your user pool client to support. For each app client in
your user pool, you can sign in your users with any combination of one
or more flows, including with a user name and Secure Remote Password
(SRP), a user name and password, or a custom authentication process
that you define with Lambda functions.

If you don't specify a value for C<ExplicitAuthFlows>, your app client
supports C<ALLOW_REFRESH_TOKEN_AUTH>, C<ALLOW_USER_SRP_AUTH>, and
C<ALLOW_CUSTOM_AUTH>.

The values for authentication flow options include the following.

=over

=item *

C<ALLOW_USER_AUTH>: Enable selection-based sign-in with C<USER_AUTH>.
This setting covers username-password, secure remote password (SRP),
passwordless, and passkey authentication. This authentiation flow can
do username-password and SRP authentication without other
C<ExplicitAuthFlows> permitting them. For example users can complete an
SRP challenge through C<USER_AUTH> without the flow C<USER_SRP_AUTH>
being active for the app client. This flow doesn't include
C<CUSTOM_AUTH>.

To activate this setting, your user pool must be in the Essentials tier
(https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-essentials.html)
or higher.

=item *

C<ALLOW_ADMIN_USER_PASSWORD_AUTH>: Enable admin based user password
authentication flow C<ADMIN_USER_PASSWORD_AUTH>. This setting replaces
the C<ADMIN_NO_SRP_AUTH> setting. With this authentication flow, your
app passes a user name and password to Amazon Cognito in the request,
instead of using the Secure Remote Password (SRP) protocol to securely
transmit the password.

=item *

C<ALLOW_CUSTOM_AUTH>: Enable Lambda trigger based authentication.

=item *

C<ALLOW_USER_PASSWORD_AUTH>: Enable user password-based authentication.
In this flow, Amazon Cognito receives the password in the request
instead of using the SRP protocol to verify passwords.

=item *

C<ALLOW_USER_SRP_AUTH>: Enable SRP-based authentication.

=item *

C<ALLOW_REFRESH_TOKEN_AUTH>: Enable authflow to refresh tokens.

=back

In some environments, you will see the values C<ADMIN_NO_SRP_AUTH>,
C<CUSTOM_AUTH_FLOW_ONLY>, or C<USER_PASSWORD_AUTH>. You can't assign
these legacy C<ExplicitAuthFlows> values to user pool clients at the
same time as values that begin with C<ALLOW_>, like
C<ALLOW_USER_SRP_AUTH>.



=head2 GenerateSecret => Bool

When C<true>, generates a client secret for the app client. Client
secrets are used with server-side and machine-to-machine applications.
Client secrets are automatically generated; you can't specify a secret
value. For more information, see App client types
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-client-apps.html#user-pool-settings-client-app-client-types).



=head2 IdTokenValidity => Int

The ID token time limit. After this limit expires, your user can't use
their ID token. To specify the time unit for C<IdTokenValidity> as
C<seconds>, C<minutes>, C<hours>, or C<days>, set a
C<TokenValidityUnits> value in your API request.

For example, when you set C<IdTokenValidity> as C<10> and
C<TokenValidityUnits> as C<hours>, your user can authenticate their
session with their ID token for 10 hours.

The default time unit for C<IdTokenValidity> in an API request is
hours. I<Valid range> is displayed below in seconds.

If you don't specify otherwise in the configuration of your app client,
your ID tokens are valid for one hour.



=head2 LogoutURLs => ArrayRef[Str|Undef]

A list of allowed logout URLs for managed login authentication. When
you pass C<logout_uri> and C<client_id> parameters to C</logout>,
Amazon Cognito signs out your user and redirects them to the logout
URL. This parameter describes the URLs that you want to be the
permitted targets of C<logout_uri>. A typical use of these URLs is when
a user selects "Sign out" and you redirect them to your public
homepage. For more information, see Logout endpoint
(https://docs.aws.amazon.com/cognito/latest/developerguide/logout-endpoint.html).



=head2 PreventUserExistenceErrors => Str

When C<ENABLED>, suppresses messages that might indicate a valid user
exists when someone attempts sign-in. This parameters sets your
preference for the errors and responses that you want Amazon Cognito
APIs to return during authentication, account confirmation, and
password recovery when the user doesn't exist in the user pool. When
set to C<ENABLED> and the user doesn't exist, authentication returns an
error indicating either the username or password was incorrect. Account
confirmation and password recovery return a response indicating a code
was sent to a simulated destination. When set to C<LEGACY>, those APIs
return a C<UserNotFoundException> exception if the user doesn't exist
in the user pool.

Defaults to C<LEGACY>.

Valid values are: C<"LEGACY">, C<"ENABLED">

=head2 ReadAttributes => ArrayRef[Str|Undef]

The list of user attributes that you want your app client to have read
access to. After your user authenticates in your app, their access
token authorizes them to read their own attribute value for any
attribute in this list.

When you don't specify the C<ReadAttributes> for your app client, your
app can read the values of C<email_verified>, C<phone_number_verified>,
and the standard attributes of your user pool. When your user pool app
client has read access to these default attributes, C<ReadAttributes>
doesn't return any information. Amazon Cognito only populates
C<ReadAttributes> in the API response if you have specified your own
custom set of read attributes.



=head2 RefreshTokenRotation => L<Paws::CognitoIdp::RefreshTokenRotationType>

The configuration of your app client for refresh token rotation. When
enabled, your app client issues new ID, access, and refresh tokens when
users renew their sessions with refresh tokens. When disabled, token
refresh issues only ID and access tokens.



=head2 RefreshTokenValidity => Int

The refresh token time limit. After this limit expires, your user can't
use their refresh token. To specify the time unit for
C<RefreshTokenValidity> as C<seconds>, C<minutes>, C<hours>, or
C<days>, set a C<TokenValidityUnits> value in your API request.

For example, when you set C<RefreshTokenValidity> as C<10> and
C<TokenValidityUnits> as C<days>, your user can refresh their session
and retrieve new access and ID tokens for 10 days.

The default time unit for C<RefreshTokenValidity> in an API request is
days. You can't set C<RefreshTokenValidity> to 0. If you do, Amazon
Cognito overrides the value with the default value of 30 days. I<Valid
range> is displayed below in seconds.

If you don't specify otherwise in the configuration of your app client,
your refresh tokens are valid for 30 days.



=head2 SupportedIdentityProviders => ArrayRef[Str|Undef]

A list of provider names for the identity providers (IdPs) that are
supported on this client. The following are supported: C<COGNITO>,
C<Facebook>, C<Google>, C<SignInWithApple>, and C<LoginWithAmazon>. You
can also specify the names that you configured for the SAML and OIDC
IdPs in your user pool, for example C<MySAMLIdP> or C<MyOIDCIdP>.

This parameter sets the IdPs that managed login
(https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-managed-login.html)
will display on the login page for your app client. The removal of
C<COGNITO> from this list doesn't prevent authentication operations for
local users with the user pools API in an Amazon Web Services SDK. The
only way to prevent SDK-based authentication is to block access with a
WAF rule
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-waf.html).



=head2 TokenValidityUnits => L<Paws::CognitoIdp::TokenValidityUnitsType>

The units that validity times are represented in. The default unit for
refresh tokens is days, and the default for ID and access tokens are
hours.



=head2 B<REQUIRED> UserPoolId => Str

The ID of the user pool where you want to create an app client.



=head2 WriteAttributes => ArrayRef[Str|Undef]

The list of user attributes that you want your app client to have write
access to. After your user authenticates in your app, their access
token authorizes them to set or modify their own attribute value for
any attribute in this list.

When you don't specify the C<WriteAttributes> for your app client, your
app can write the values of the Standard attributes of your user pool.
When your user pool has write access to these default attributes,
C<WriteAttributes> doesn't return any information. Amazon Cognito only
populates C<WriteAttributes> in the API response if you have specified
your own custom set of write attributes.

If your app client allows users to sign in through an IdP, this array
must include all attributes that you have mapped to IdP attributes.
Amazon Cognito updates mapped attributes when users sign in to your
application through an IdP. If your app client does not have write
access to a mapped attribute, Amazon Cognito throws an error when it
tries to update the attribute. For more information, see Specifying IdP
Attribute Mappings for Your user pool
(https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-specifying-attribute-mapping.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateUserPoolClient in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

