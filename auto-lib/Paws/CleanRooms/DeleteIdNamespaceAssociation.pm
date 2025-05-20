
package Paws::CleanRooms::DeleteIdNamespaceAssociation;
  use Moose;
  has IdNamespaceAssociationIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'idNamespaceAssociationIdentifier', required => 1);
  has MembershipIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'membershipIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteIdNamespaceAssociation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/memberships/{membershipIdentifier}/idnamespaceassociations/{idNamespaceAssociationIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRooms::DeleteIdNamespaceAssociationOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::DeleteIdNamespaceAssociation - Arguments for method DeleteIdNamespaceAssociation on L<Paws::CleanRooms>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteIdNamespaceAssociation on the
L<AWS Clean Rooms Service|Paws::CleanRooms> service. Use the attributes of this class
as arguments to method DeleteIdNamespaceAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteIdNamespaceAssociation.

=head1 SYNOPSIS

    my $cleanrooms = Paws->service('CleanRooms');
    my $DeleteIdNamespaceAssociationOutput =
      $cleanrooms->DeleteIdNamespaceAssociation(
      IdNamespaceAssociationIdentifier => 'MyIdNamespaceAssociationIdentifier',
      MembershipIdentifier             => 'MyMembershipIdentifier',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms/DeleteIdNamespaceAssociation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> IdNamespaceAssociationIdentifier => Str

The unique identifier of the ID namespace association that you want to
delete.



=head2 B<REQUIRED> MembershipIdentifier => Str

The unique identifier of the membership that contains the ID namespace
association that you want to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteIdNamespaceAssociation in L<Paws::CleanRooms>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

