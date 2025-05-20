
package Paws::CodeCatalyst::CreateAccessTokenResponse;
  use Moose;
  has AccessTokenId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'accessTokenId', required => 1);
  has ExpiresTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'expiresTime', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Secret => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'secret', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCatalyst::CreateAccessTokenResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccessTokenId => Str

The system-generated unique ID of the access token.


=head2 B<REQUIRED> ExpiresTime => Str

The date and time the personal access token expires, in coordinated
universal time (UTC) timestamp format as specified in RFC 3339
(https://www.rfc-editor.org/rfc/rfc3339#section-5.6). If not specified,
the default is one year from creation.


=head2 B<REQUIRED> Name => Str

The friendly name of the personal access token.


=head2 B<REQUIRED> Secret => Str

The secret value of the personal access token.


=head2 _request_id => Str


=cut

