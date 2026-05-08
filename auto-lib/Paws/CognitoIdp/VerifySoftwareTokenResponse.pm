
package Paws::CognitoIdp::VerifySoftwareTokenResponse;
  use Moose;
  has Session => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::VerifySoftwareTokenResponse

=head1 ATTRIBUTES


=head2 Session => Str

This session ID satisfies an C<MFA_SETUP> challenge. Supply the session
ID in your challenge response.


=head2 Status => Str

Amazon Cognito can accept or reject the code that you provide. This
response parameter indicates the success of TOTP verification. Some
reasons that this operation might return an error are clock skew on the
user's device and excessive retries.

Valid values are: C<"SUCCESS">, C<"ERROR">
=head2 _request_id => Str


=cut

1;