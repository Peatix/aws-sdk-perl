
package Paws::CognitoIdp::GetTokensFromRefreshTokenResponse;
  use Moose;
  has AuthenticationResult => (is => 'ro', isa => 'Paws::CognitoIdp::AuthenticationResultType');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::GetTokensFromRefreshTokenResponse

=head1 ATTRIBUTES


=head2 AuthenticationResult => L<Paws::CognitoIdp::AuthenticationResultType>




=head2 _request_id => Str


=cut

1;