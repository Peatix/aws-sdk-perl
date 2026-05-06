
package Paws::CognitoIdp::AssociateSoftwareTokenResponse;
  use Moose;
  has SecretCode => (is => 'ro', isa => 'Str');
  has Session => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::AssociateSoftwareTokenResponse

=head1 ATTRIBUTES


=head2 SecretCode => Str

A unique generated shared secret code that is used by the TOTP
algorithm to generate a one-time code.


=head2 Session => Str

The session identifier that maintains the state of authentication
requests and challenge responses.


=head2 _request_id => Str


=cut

1;