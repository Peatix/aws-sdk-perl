
package Paws::CleanRooms::CreateIdNamespaceAssociationOutput;
  use Moose;
  has IdNamespaceAssociation => (is => 'ro', isa => 'Paws::CleanRooms::IdNamespaceAssociation', traits => ['NameInRequest'], request_name => 'idNamespaceAssociation', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::CreateIdNamespaceAssociationOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> IdNamespaceAssociation => L<Paws::CleanRooms::IdNamespaceAssociation>

The ID namespace association that was created.


=head2 _request_id => Str


=cut

