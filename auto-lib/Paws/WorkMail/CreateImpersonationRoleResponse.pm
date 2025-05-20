
package Paws::WorkMail::CreateImpersonationRoleResponse;
  use Moose;
  has ImpersonationRoleId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::CreateImpersonationRoleResponse

=head1 ATTRIBUTES


=head2 ImpersonationRoleId => Str

The new impersonation role ID.


=head2 _request_id => Str


=cut

1;