
package Paws::CleanRooms::CreateConfiguredAudienceModelAssociationOutput;
  use Moose;
  has ConfiguredAudienceModelAssociation => (is => 'ro', isa => 'Paws::CleanRooms::ConfiguredAudienceModelAssociation', traits => ['NameInRequest'], request_name => 'configuredAudienceModelAssociation', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::CreateConfiguredAudienceModelAssociationOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfiguredAudienceModelAssociation => L<Paws::CleanRooms::ConfiguredAudienceModelAssociation>

Information about the configured audience model association.


=head2 _request_id => Str


=cut

