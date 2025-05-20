
package Paws::SSOOidc::CreateTokenWithIAMResponse;
  use Moose;
  has AccessToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'accessToken');
  has AwsAdditionalDetails => (is => 'ro', isa => 'Paws::SSOOidc::AwsAdditionalDetails', traits => ['NameInRequest'], request_name => 'awsAdditionalDetails');
  has ExpiresIn => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'expiresIn');
  has IdToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'idToken');
  has IssuedTokenType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'issuedTokenType');
  has RefreshToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'refreshToken');
  has Scope => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'scope');
  has TokenType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'tokenType');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSOOidc::CreateTokenWithIAMResponse

=head1 ATTRIBUTES


=head2 AccessToken => Str

A bearer token to access Amazon Web Services accounts and applications
assigned to a user.


=head2 AwsAdditionalDetails => L<Paws::SSOOidc::AwsAdditionalDetails>

A structure containing information from the C<idToken>. Only the
C<identityContext> is in it, which is a value extracted from the
C<idToken>. This provides direct access to identity information without
requiring JWT parsing.


=head2 ExpiresIn => Int

Indicates the time in seconds when an access token will expire.


=head2 IdToken => Str

A JSON Web Token (JWT) that identifies the user associated with the
issued access token.


=head2 IssuedTokenType => Str

Indicates the type of tokens that are issued by IAM Identity Center.
The following values are supported:

* Access Token - C<urn:ietf:params:oauth:token-type:access_token>

* Refresh Token - C<urn:ietf:params:oauth:token-type:refresh_token>


=head2 RefreshToken => Str

A token that, if present, can be used to refresh a previously issued
access token that might have expired.

For more information about the features and limitations of the current
IAM Identity Center OIDC implementation, see I<Considerations for Using
this Guide> in the IAM Identity Center OIDC API Reference
(https://docs.aws.amazon.com/singlesignon/latest/OIDCAPIReference/Welcome.html).


=head2 Scope => ArrayRef[Str|Undef]

The list of scopes for which authorization is granted. The access token
that is issued is limited to the scopes that are granted.


=head2 TokenType => Str

Used to notify the requester that the returned token is an access
token. The supported token type is C<Bearer>.


=head2 _request_id => Str


=cut

