
package Paws::ConnectParticipant::GetAuthenticationUrlResponse;
  use Moose;
  has AuthenticationUrl => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectParticipant::GetAuthenticationUrlResponse

=head1 ATTRIBUTES


=head2 AuthenticationUrl => Str

The URL where the customer will sign in to the identity provider. This
URL contains the authorize endpoint for the Cognito UserPool used in
the authentication.


=head2 _request_id => Str


=cut

