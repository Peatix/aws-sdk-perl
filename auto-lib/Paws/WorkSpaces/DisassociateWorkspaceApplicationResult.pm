
package Paws::WorkSpaces::DisassociateWorkspaceApplicationResult;
  use Moose;
  has Association => (is => 'ro', isa => 'Paws::WorkSpaces::WorkspaceResourceAssociation');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::DisassociateWorkspaceApplicationResult

=head1 ATTRIBUTES


=head2 Association => L<Paws::WorkSpaces::WorkspaceResourceAssociation>

Information about the targeted association.


=head2 _request_id => Str


=cut

1;