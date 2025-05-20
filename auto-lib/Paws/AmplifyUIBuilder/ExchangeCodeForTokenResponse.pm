
package Paws::AmplifyUIBuilder::ExchangeCodeForTokenResponse;
  use Moose;
  has AccessToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'accessToken', required => 1);
  has ExpiresIn => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'expiresIn', required => 1);
  has RefreshToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'refreshToken', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyUIBuilder::ExchangeCodeForTokenResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccessToken => Str

The access token.


=head2 B<REQUIRED> ExpiresIn => Int

The date and time when the new access token expires.


=head2 B<REQUIRED> RefreshToken => Str

The token to use to refresh a previously issued access token that might
have expired.


=head2 _request_id => Str


=cut

