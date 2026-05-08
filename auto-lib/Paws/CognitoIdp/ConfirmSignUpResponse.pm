
package Paws::CognitoIdp::ConfirmSignUpResponse;
  use Moose;
  has Session => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::ConfirmSignUpResponse

=head1 ATTRIBUTES


=head2 Session => Str

A session identifier that you can use to immediately sign in the
confirmed user. You can automatically sign users in with the one-time
password that they provided in a successful C<ConfirmSignUp> request.


=head2 _request_id => Str


=cut

1;