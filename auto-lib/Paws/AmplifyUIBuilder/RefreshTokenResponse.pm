
package Paws::AmplifyUIBuilder::RefreshTokenResponse;
  use Moose;
  has AccessToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'accessToken', required => 1);
  has ExpiresIn => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'expiresIn', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyUIBuilder::RefreshTokenResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccessToken => Str

The access token.


=head2 B<REQUIRED> ExpiresIn => Int

The date and time when the new access token expires.


=head2 _request_id => Str


=cut

