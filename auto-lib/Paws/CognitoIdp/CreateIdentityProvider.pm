
package Paws::CognitoIdp::CreateIdentityProvider;
  use Moose;
  has AttributeMapping => (is => 'ro', isa => 'Paws::CognitoIdp::AttributeMappingType');
  has IdpIdentifiers => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ProviderDetails => (is => 'ro', isa => 'Paws::CognitoIdp::ProviderDetailsType', required => 1);
  has ProviderName => (is => 'ro', isa => 'Str', required => 1);
  has ProviderType => (is => 'ro', isa => 'Str', required => 1);
  has UserPoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateIdentityProvider');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::CreateIdentityProviderResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::CreateIdentityProvider - Arguments for method CreateIdentityProvider on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateIdentityProvider on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method CreateIdentityProvider.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateIdentityProvider.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $CreateIdentityProviderResponse = $cognito -idp->CreateIdentityProvider(
      ProviderDetails => {
        'MyStringType' => 'MyStringType', # key: max: 131072, value: max: 131072
      },
      ProviderName     => 'MyProviderNameTypeV2',
      ProviderType     => 'SAML',
      UserPoolId       => 'MyUserPoolIdType',
      AttributeMapping => {
        'MyAttributeMappingKeyType' =>
          'MyStringType',    # key: min: 1, max: 32, value: max: 131072
      },    # OPTIONAL
      IdpIdentifiers => [
        'MyIdpIdentifierType', ...    # min: 1, max: 40
      ],    # OPTIONAL
    );

    # Results:
    my $IdentityProvider = $CreateIdentityProviderResponse->IdentityProvider;

    # Returns a L<Paws::CognitoIdp::CreateIdentityProviderResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 AttributeMapping => L<Paws::CognitoIdp::AttributeMappingType>

A mapping of IdP attributes to standard and custom user pool
attributes. Specify a user pool attribute as the key of the key-value
pair, and the IdP attribute claim name as the value.



=head2 IdpIdentifiers => ArrayRef[Str|Undef]

An array of IdP identifiers, for example C<"IdPIdentifiers": [ "MyIdP",
"MyIdP2" ]>. Identifiers are friendly names that you can pass in the
C<idp_identifier> query parameter of requests to the Authorize endpoint
(https://docs.aws.amazon.com/cognito/latest/developerguide/authorization-endpoint.html)
to silently redirect to sign-in with the associated IdP. Identifiers in
a domain format also enable the use of email-address matching with SAML
providers
(https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-managing-saml-idp-naming.html).



=head2 B<REQUIRED> ProviderDetails => L<Paws::CognitoIdp::ProviderDetailsType>

The scopes, URLs, and identifiers for your external identity provider.
The following examples describe the provider detail keys for each IdP
type. These values and their schema are subject to change. Social IdP
C<authorize_scopes> values must match the values listed here.

=over

=item OpenID Connect (OIDC)

Amazon Cognito accepts the following elements when it can't discover
endpoint URLs from C<oidc_issuer>: C<attributes_url>, C<authorize_url>,
C<jwks_uri>, C<token_url>.

Create or update request: C<"ProviderDetails": {
"attributes_request_method": "GET", "attributes_url":
"https://auth.example.com/userInfo", "authorize_scopes": "openid
profile email", "authorize_url": "https://auth.example.com/authorize",
"client_id": "1example23456789", "client_secret":
"provider-app-client-secret", "jwks_uri":
"https://auth.example.com/.well-known/jwks.json", "oidc_issuer":
"https://auth.example.com", "token_url": "https://example.com/token" }>

Describe response: C<"ProviderDetails": { "attributes_request_method":
"GET", "attributes_url": "https://auth.example.com/userInfo",
"attributes_url_add_attributes": "false", "authorize_scopes": "openid
profile email", "authorize_url": "https://auth.example.com/authorize",
"client_id": "1example23456789", "client_secret":
"provider-app-client-secret", "jwks_uri":
"https://auth.example.com/.well-known/jwks.json", "oidc_issuer":
"https://auth.example.com", "token_url": "https://example.com/token" }>

=item SAML

Create or update request with Metadata URL: C<"ProviderDetails": {
"IDPInit": "true", "IDPSignout": "true", "EncryptedResponses" : "true",
"MetadataURL": "https://auth.example.com/sso/saml/metadata",
"RequestSigningAlgorithm": "rsa-sha256" }>

Create or update request with Metadata file: C<"ProviderDetails": {
"IDPInit": "true", "IDPSignout": "true", "EncryptedResponses" : "true",
"MetadataFile": "[metadata XML]", "RequestSigningAlgorithm":
"rsa-sha256" }>

The value of C<MetadataFile> must be the plaintext metadata document
with all quote (") characters escaped by backslashes.

Describe response: C<"ProviderDetails": { "IDPInit": "true",
"IDPSignout": "true", "EncryptedResponses" : "true",
"ActiveEncryptionCertificate": "[certificate]", "MetadataURL":
"https://auth.example.com/sso/saml/metadata",
"RequestSigningAlgorithm": "rsa-sha256", "SLORedirectBindingURI":
"https://auth.example.com/slo/saml", "SSORedirectBindingURI":
"https://auth.example.com/sso/saml" }>

=item LoginWithAmazon

Create or update request: C<"ProviderDetails": { "authorize_scopes":
"profile postal_code", "client_id":
"amzn1.application-oa2-client.1example23456789", "client_secret":
"provider-app-client-secret">

Describe response: C<"ProviderDetails": { "attributes_url":
"https://api.amazon.com/user/profile", "attributes_url_add_attributes":
"false", "authorize_scopes": "profile postal_code", "authorize_url":
"https://www.amazon.com/ap/oa", "client_id":
"amzn1.application-oa2-client.1example23456789", "client_secret":
"provider-app-client-secret", "token_request_method": "POST",
"token_url": "https://api.amazon.com/auth/o2/token" }>

=item Google

Create or update request: C<"ProviderDetails": { "authorize_scopes":
"email profile openid", "client_id":
"1example23456789.apps.googleusercontent.com", "client_secret":
"provider-app-client-secret" }>

Describe response: C<"ProviderDetails": { "attributes_url":
"https://people.googleapis.com/v1/people/me?personFields=",
"attributes_url_add_attributes": "true", "authorize_scopes": "email
profile openid", "authorize_url":
"https://accounts.google.com/o/oauth2/v2/auth", "client_id":
"1example23456789.apps.googleusercontent.com", "client_secret":
"provider-app-client-secret", "oidc_issuer":
"https://accounts.google.com", "token_request_method": "POST",
"token_url": "https://www.googleapis.com/oauth2/v4/token" }>

=item SignInWithApple

Create or update request: C<"ProviderDetails": { "authorize_scopes":
"email name", "client_id": "com.example.cognito", "private_key":
"1EXAMPLE", "key_id": "2EXAMPLE", "team_id": "3EXAMPLE" }>

Describe response: C<"ProviderDetails": {
"attributes_url_add_attributes": "false", "authorize_scopes": "email
name", "authorize_url": "https://appleid.apple.com/auth/authorize",
"client_id": "com.example.cognito", "key_id": "1EXAMPLE",
"oidc_issuer": "https://appleid.apple.com", "team_id": "2EXAMPLE",
"token_request_method": "POST", "token_url":
"https://appleid.apple.com/auth/token" }>

=item Facebook

Create or update request: C<"ProviderDetails": { "api_version":
"v17.0", "authorize_scopes": "public_profile, email", "client_id":
"1example23456789", "client_secret": "provider-app-client-secret" }>

Describe response: C<"ProviderDetails": { "api_version": "v17.0",
"attributes_url": "https://graph.facebook.com/v17.0/me?fields=",
"attributes_url_add_attributes": "true", "authorize_scopes":
"public_profile, email", "authorize_url":
"https://www.facebook.com/v17.0/dialog/oauth", "client_id":
"1example23456789", "client_secret": "provider-app-client-secret",
"token_request_method": "GET", "token_url":
"https://graph.facebook.com/v17.0/oauth/access_token" }>

=back




=head2 B<REQUIRED> ProviderName => Str

The name that you want to assign to the IdP. You can pass the identity
provider name in the C<identity_provider> query parameter of requests
to the Authorize endpoint
(https://docs.aws.amazon.com/cognito/latest/developerguide/authorization-endpoint.html)
to silently redirect to sign-in with the associated IdP.



=head2 B<REQUIRED> ProviderType => Str

The type of IdP that you want to add. Amazon Cognito supports OIDC,
SAML 2.0, Login With Amazon, Sign In With Apple, Google, and Facebook
IdPs.

Valid values are: C<"SAML">, C<"Facebook">, C<"Google">, C<"LoginWithAmazon">, C<"SignInWithApple">, C<"OIDC">

=head2 B<REQUIRED> UserPoolId => Str

The Id of the user pool where you want to create an IdP.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateIdentityProvider in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

