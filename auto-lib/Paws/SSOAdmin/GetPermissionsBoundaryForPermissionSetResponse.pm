
package Paws::SSOAdmin::GetPermissionsBoundaryForPermissionSetResponse;
  use Moose;
  has PermissionsBoundary => (is => 'ro', isa => 'Paws::SSOAdmin::PermissionsBoundary');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::GetPermissionsBoundaryForPermissionSetResponse

=head1 ATTRIBUTES


=head2 PermissionsBoundary => L<Paws::SSOAdmin::PermissionsBoundary>

The permissions boundary attached to the specified permission set.


=head2 _request_id => Str


=cut

1;