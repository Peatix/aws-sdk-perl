
package Paws::Ivschat::CreateChatTokenResponse;
  use Moose;
  has SessionExpirationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sessionExpirationTime');
  has Token => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'token');
  has TokenExpirationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'tokenExpirationTime');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Ivschat::CreateChatTokenResponse

=head1 ATTRIBUTES


=head2 SessionExpirationTime => Str

Time after which an end user's session is no longer valid. This is an
ISO 8601 timestamp; I<note that this is returned as a string>.


=head2 Token => Str

The issued client token, encrypted.


=head2 TokenExpirationTime => Str

Time after which the token is no longer valid and cannot be used to
connect to a room. This is an ISO 8601 timestamp; I<note that this is
returned as a string>.


=head2 _request_id => Str


=cut

