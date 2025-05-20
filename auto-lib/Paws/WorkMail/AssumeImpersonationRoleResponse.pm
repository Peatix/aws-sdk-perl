
package Paws::WorkMail::AssumeImpersonationRoleResponse;
  use Moose;
  has ExpiresIn => (is => 'ro', isa => 'Int');
  has Token => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::AssumeImpersonationRoleResponse

=head1 ATTRIBUTES


=head2 ExpiresIn => Int

The authentication token's validity, in seconds.


=head2 Token => Str

The authentication token for the impersonation role.


=head2 _request_id => Str


=cut

1;