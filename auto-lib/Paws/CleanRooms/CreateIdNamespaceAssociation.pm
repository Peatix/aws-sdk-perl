
package Paws::CleanRooms::CreateIdNamespaceAssociation;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has IdMappingConfig => (is => 'ro', isa => 'Paws::CleanRooms::IdMappingConfig', traits => ['NameInRequest'], request_name => 'idMappingConfig');
  has InputReferenceConfig => (is => 'ro', isa => 'Paws::CleanRooms::IdNamespaceAssociationInputReferenceConfig', traits => ['NameInRequest'], request_name => 'inputReferenceConfig', required => 1);
  has MembershipIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'membershipIdentifier', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::CleanRooms::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateIdNamespaceAssociation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/memberships/{membershipIdentifier}/idnamespaceassociations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRooms::CreateIdNamespaceAssociationOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::CreateIdNamespaceAssociation - Arguments for method CreateIdNamespaceAssociation on L<Paws::CleanRooms>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateIdNamespaceAssociation on the
L<AWS Clean Rooms Service|Paws::CleanRooms> service. Use the attributes of this class
as arguments to method CreateIdNamespaceAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateIdNamespaceAssociation.

=head1 SYNOPSIS

    my $cleanrooms = Paws->service('CleanRooms');
    my $CreateIdNamespaceAssociationOutput =
      $cleanrooms->CreateIdNamespaceAssociation(
      InputReferenceConfig => {
        InputReferenceArn =>
          'MyIdNamespaceAssociationInputReferenceArn',    # max: 256
        ManageResourcePolicies => 1,

      },
      MembershipIdentifier => 'MyMembershipIdentifier',
      Name                 => 'MyGenericResourceName',
      Description          => 'MyResourceDescription',    # OPTIONAL
      IdMappingConfig      => {
        AllowUseAsDimensionColumn => 1,

      },                                                  # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      );

    # Results:
    my $IdNamespaceAssociation =
      $CreateIdNamespaceAssociationOutput->IdNamespaceAssociation;

    # Returns a L<Paws::CleanRooms::CreateIdNamespaceAssociationOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms/CreateIdNamespaceAssociation>

=head1 ATTRIBUTES


=head2 Description => Str

The description of the ID namespace association.



=head2 IdMappingConfig => L<Paws::CleanRooms::IdMappingConfig>

The configuration settings for the ID mapping table.



=head2 B<REQUIRED> InputReferenceConfig => L<Paws::CleanRooms::IdNamespaceAssociationInputReferenceConfig>

The input reference configuration needed to create the ID namespace
association.



=head2 B<REQUIRED> MembershipIdentifier => Str

The unique identifier of the membership that contains the ID namespace
association.



=head2 B<REQUIRED> Name => Str

The name for the ID namespace association.



=head2 Tags => L<Paws::CleanRooms::TagMap>

An optional label that you can assign to a resource when you create it.
Each tag consists of a key and an optional value, both of which you
define. When you use tagging, you can also use tag-based access control
in IAM policies to control access to this resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateIdNamespaceAssociation in L<Paws::CleanRooms>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

