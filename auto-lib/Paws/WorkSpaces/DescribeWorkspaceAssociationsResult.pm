
package Paws::WorkSpaces::DescribeWorkspaceAssociationsResult;
  use Moose;
  has Associations => (is => 'ro', isa => 'ArrayRef[Paws::WorkSpaces::WorkspaceResourceAssociation]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::DescribeWorkspaceAssociationsResult

=head1 ATTRIBUTES


=head2 Associations => ArrayRef[L<Paws::WorkSpaces::WorkspaceResourceAssociation>]

List of information about the specified associations.


=head2 _request_id => Str


=cut

1;