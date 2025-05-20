
package Paws::CleanRooms::CreateConfiguredTableAssociation;
  use Moose;
  has ConfiguredTableIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'configuredTableIdentifier', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has MembershipIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'membershipIdentifier', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::CleanRooms::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateConfiguredTableAssociation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/memberships/{membershipIdentifier}/configuredTableAssociations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRooms::CreateConfiguredTableAssociationOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::CreateConfiguredTableAssociation - Arguments for method CreateConfiguredTableAssociation on L<Paws::CleanRooms>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateConfiguredTableAssociation on the
L<AWS Clean Rooms Service|Paws::CleanRooms> service. Use the attributes of this class
as arguments to method CreateConfiguredTableAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateConfiguredTableAssociation.

=head1 SYNOPSIS

    my $cleanrooms = Paws->service('CleanRooms');
    my $CreateConfiguredTableAssociationOutput =
      $cleanrooms->CreateConfiguredTableAssociation(
      ConfiguredTableIdentifier => 'MyConfiguredTableIdentifier',
      MembershipIdentifier      => 'MyMembershipIdentifier',
      Name                      => 'MyTableAlias',
      RoleArn                   => 'MyRoleArn',
      Description               => 'MyTableDescription',            # OPTIONAL
      Tags                      => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      );

    # Results:
    my $ConfiguredTableAssociation =
      $CreateConfiguredTableAssociationOutput->ConfiguredTableAssociation;

 # Returns a L<Paws::CleanRooms::CreateConfiguredTableAssociationOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms/CreateConfiguredTableAssociation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfiguredTableIdentifier => Str

A unique identifier for the configured table to be associated to.
Currently accepts a configured table ID.



=head2 Description => Str

A description for the configured table association.



=head2 B<REQUIRED> MembershipIdentifier => Str

A unique identifier for one of your memberships for a collaboration.
The configured table is associated to the collaboration that this
membership belongs to. Currently accepts a membership ID.



=head2 B<REQUIRED> Name => Str

The name of the configured table association. This name is used to
query the underlying configured table.



=head2 B<REQUIRED> RoleArn => Str

The service will assume this role to access catalog metadata and query
the table.



=head2 Tags => L<Paws::CleanRooms::TagMap>

An optional label that you can assign to a resource when you create it.
Each tag consists of a key and an optional value, both of which you
define. When you use tagging, you can also use tag-based access control
in IAM policies to control access to this resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateConfiguredTableAssociation in L<Paws::CleanRooms>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

