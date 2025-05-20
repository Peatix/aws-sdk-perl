
package Paws::CleanRooms::UpdateIdNamespaceAssociation;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has IdMappingConfig => (is => 'ro', isa => 'Paws::CleanRooms::IdMappingConfig', traits => ['NameInRequest'], request_name => 'idMappingConfig');
  has IdNamespaceAssociationIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'idNamespaceAssociationIdentifier', required => 1);
  has MembershipIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'membershipIdentifier', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateIdNamespaceAssociation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/memberships/{membershipIdentifier}/idnamespaceassociations/{idNamespaceAssociationIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRooms::UpdateIdNamespaceAssociationOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::UpdateIdNamespaceAssociation - Arguments for method UpdateIdNamespaceAssociation on L<Paws::CleanRooms>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateIdNamespaceAssociation on the
L<AWS Clean Rooms Service|Paws::CleanRooms> service. Use the attributes of this class
as arguments to method UpdateIdNamespaceAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateIdNamespaceAssociation.

=head1 SYNOPSIS

    my $cleanrooms = Paws->service('CleanRooms');
    my $UpdateIdNamespaceAssociationOutput =
      $cleanrooms->UpdateIdNamespaceAssociation(
      IdNamespaceAssociationIdentifier => 'MyIdNamespaceAssociationIdentifier',
      MembershipIdentifier             => 'MyMembershipIdentifier',
      Description                      => 'MyResourceDescription',    # OPTIONAL
      IdMappingConfig                  => {
        AllowUseAsDimensionColumn => 1,

      },                                                              # OPTIONAL
      Name => 'MyGenericResourceName',                                # OPTIONAL
      );

    # Results:
    my $IdNamespaceAssociation =
      $UpdateIdNamespaceAssociationOutput->IdNamespaceAssociation;

    # Returns a L<Paws::CleanRooms::UpdateIdNamespaceAssociationOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms/UpdateIdNamespaceAssociation>

=head1 ATTRIBUTES


=head2 Description => Str

A new description for the ID namespace association.



=head2 IdMappingConfig => L<Paws::CleanRooms::IdMappingConfig>

The configuration settings for the ID mapping table.



=head2 B<REQUIRED> IdNamespaceAssociationIdentifier => Str

The unique identifier of the ID namespace association that you want to
update.



=head2 B<REQUIRED> MembershipIdentifier => Str

The unique identifier of the membership that contains the ID namespace
association that you want to update.



=head2 Name => Str

A new name for the ID namespace association.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateIdNamespaceAssociation in L<Paws::CleanRooms>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

