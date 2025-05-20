
package Paws::SSOOidc::CreateTokenResponse;
  use Moose;
  has AccessToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'accessToken');
  has ExpiresIn => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'expiresIn');
  has IdToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'idToken');
  has RefreshToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'refreshToken');
  has TokenType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'tokenType');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSOOidc::CreateTokenResponse

=head1 ATTRIBUTES


=head2 AccessToken => Str

A bearer token to access Amazon Web Services accounts and applications
assigned to a user.


=head2 ExpiresIn => Int

Indicates the time in seconds when an access token will expire.


=head2 IdToken => Str

The C<idToken> is not implemented or supported. For more information
about the features and limitations of the current IAM Identity Center
OIDC implementation, see I<Considerations for Using this Guide> in the
IAM Identity Center OIDC API Reference
(https://docs.aws.amazon.com/singlesignon/latest/OIDCAPIReference/Welcome.html).

A JSON Web Token (JWT) that identifies who is associated with the
issued access token.


=head2 RefreshToken => Str

A token that, if present, can be used to refresh a previously issued
access token that might have expired.

For more information about the features and limitations of the current
IAM Identity Center OIDC implementation, see I<Considerations for Using
this Guide> in the IAM Identity Center OIDC API Reference
(https://docs.aws.amazon.com/singlesignon/latest/OIDCAPIReference/Welcome.html).


=head2 TokenType => Str

Used to notify the client that the returned token is an access token.
The supported token type is C<Bearer>.


=head2 _request_id => Str


=cut

