
package Paws::WorkSpaces::AssociateWorkspaceApplicationResult;
  use Moose;
  has Association => (is => 'ro', isa => 'Paws::WorkSpaces::WorkspaceResourceAssociation');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::AssociateWorkspaceApplicationResult

=head1 ATTRIBUTES


=head2 Association => L<Paws::WorkSpaces::WorkspaceResourceAssociation>

Information about the association between the specified WorkSpace and
the specified application.


=head2 _request_id => Str


=cut

1;