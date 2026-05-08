
package Paws::CognitoIdp::StartWebAuthnRegistrationResponse;
  use Moose;
  has CredentialCreationOptions => (is => 'ro', isa => 'Paws::CognitoIdp::Document', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::StartWebAuthnRegistrationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CredentialCreationOptions => L<Paws::CognitoIdp::Document>

The information that a user can provide in their request to register
with their passkey provider.


=head2 _request_id => Str


=cut

1;