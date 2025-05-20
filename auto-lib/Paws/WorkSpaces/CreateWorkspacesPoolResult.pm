
package Paws::WorkSpaces::CreateWorkspacesPoolResult;
  use Moose;
  has WorkspacesPool => (is => 'ro', isa => 'Paws::WorkSpaces::WorkspacesPool');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::CreateWorkspacesPoolResult

=head1 ATTRIBUTES


=head2 WorkspacesPool => L<Paws::WorkSpaces::WorkspacesPool>

Indicates the pool to create.


=head2 _request_id => Str


=cut

1;