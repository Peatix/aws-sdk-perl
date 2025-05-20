
package Paws::WorkSpaces::UpdateWorkspacesPoolResult;
  use Moose;
  has WorkspacesPool => (is => 'ro', isa => 'Paws::WorkSpaces::WorkspacesPool');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::UpdateWorkspacesPoolResult

=head1 ATTRIBUTES


=head2 WorkspacesPool => L<Paws::WorkSpaces::WorkspacesPool>

Describes the specified pool.


=head2 _request_id => Str


=cut

1;