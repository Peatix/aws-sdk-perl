
package Paws::CleanRooms::GetCollaborationIdNamespaceAssociation;
  use Moose;
  has CollaborationIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'collaborationIdentifier', required => 1);
  has IdNamespaceAssociationIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'idNamespaceAssociationIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCollaborationIdNamespaceAssociation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/collaborations/{collaborationIdentifier}/idnamespaceassociations/{idNamespaceAssociationIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRooms::GetCollaborationIdNamespaceAssociationOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::GetCollaborationIdNamespaceAssociation - Arguments for method GetCollaborationIdNamespaceAssociation on L<Paws::CleanRooms>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCollaborationIdNamespaceAssociation on the
L<AWS Clean Rooms Service|Paws::CleanRooms> service. Use the attributes of this class
as arguments to method GetCollaborationIdNamespaceAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCollaborationIdNamespaceAssociation.

=head1 SYNOPSIS

    my $cleanrooms = Paws->service('CleanRooms');
    my $GetCollaborationIdNamespaceAssociationOutput =
      $cleanrooms->GetCollaborationIdNamespaceAssociation(
      CollaborationIdentifier          => 'MyCollaborationIdentifier',
      IdNamespaceAssociationIdentifier => 'MyIdNamespaceAssociationIdentifier',

      );

    # Results:
    my $CollaborationIdNamespaceAssociation =
      $GetCollaborationIdNamespaceAssociationOutput
      ->CollaborationIdNamespaceAssociation;

# Returns a L<Paws::CleanRooms::GetCollaborationIdNamespaceAssociationOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms/GetCollaborationIdNamespaceAssociation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CollaborationIdentifier => Str

The unique identifier of the collaboration that contains the ID
namespace association that you want to retrieve.



=head2 B<REQUIRED> IdNamespaceAssociationIdentifier => Str

The unique identifier of the ID namespace association that you want to
retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCollaborationIdNamespaceAssociation in L<Paws::CleanRooms>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

