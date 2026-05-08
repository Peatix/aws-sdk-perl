
package Paws::CognitoIdp::CreateUserPoolResponse;
  use Moose;
  has UserPool => (is => 'ro', isa => 'Paws::CognitoIdp::UserPoolType');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::CreateUserPoolResponse

=head1 ATTRIBUTES


=head2 UserPool => L<Paws::CognitoIdp::UserPoolType>

The details of the created user pool.


=head2 _request_id => Str


=cut

1;