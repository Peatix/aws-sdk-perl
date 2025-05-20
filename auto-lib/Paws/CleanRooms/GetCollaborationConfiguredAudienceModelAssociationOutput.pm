
package Paws::CleanRooms::GetCollaborationConfiguredAudienceModelAssociationOutput;
  use Moose;
  has CollaborationConfiguredAudienceModelAssociation => (is => 'ro', isa => 'Paws::CleanRooms::CollaborationConfiguredAudienceModelAssociation', traits => ['NameInRequest'], request_name => 'collaborationConfiguredAudienceModelAssociation', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::GetCollaborationConfiguredAudienceModelAssociationOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> CollaborationConfiguredAudienceModelAssociation => L<Paws::CleanRooms::CollaborationConfiguredAudienceModelAssociation>

The metadata of the configured audience model association.


=head2 _request_id => Str


=cut

