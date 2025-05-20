
package Paws::CleanRooms::GetCollaborationIdNamespaceAssociationOutput;
  use Moose;
  has CollaborationIdNamespaceAssociation => (is => 'ro', isa => 'Paws::CleanRooms::CollaborationIdNamespaceAssociation', traits => ['NameInRequest'], request_name => 'collaborationIdNamespaceAssociation', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::GetCollaborationIdNamespaceAssociationOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> CollaborationIdNamespaceAssociation => L<Paws::CleanRooms::CollaborationIdNamespaceAssociation>

The ID namespace association that you requested.


=head2 _request_id => Str


=cut

