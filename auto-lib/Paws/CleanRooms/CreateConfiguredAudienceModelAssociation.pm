
package Paws::CleanRooms::CreateConfiguredAudienceModelAssociation;
  use Moose;
  has ConfiguredAudienceModelArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'configuredAudienceModelArn', required => 1);
  has ConfiguredAudienceModelAssociationName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'configuredAudienceModelAssociationName', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has ManageResourcePolicies => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'manageResourcePolicies', required => 1);
  has MembershipIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'membershipIdentifier', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::CleanRooms::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateConfiguredAudienceModelAssociation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/memberships/{membershipIdentifier}/configuredaudiencemodelassociations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRooms::CreateConfiguredAudienceModelAssociationOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::CreateConfiguredAudienceModelAssociation - Arguments for method CreateConfiguredAudienceModelAssociation on L<Paws::CleanRooms>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateConfiguredAudienceModelAssociation on the
L<AWS Clean Rooms Service|Paws::CleanRooms> service. Use the attributes of this class
as arguments to method CreateConfiguredAudienceModelAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateConfiguredAudienceModelAssociation.

=head1 SYNOPSIS

    my $cleanrooms = Paws->service('CleanRooms');
    my $CreateConfiguredAudienceModelAssociationOutput =
      $cleanrooms->CreateConfiguredAudienceModelAssociation(
      ConfiguredAudienceModelArn             => 'MyConfiguredAudienceModelArn',
      ConfiguredAudienceModelAssociationName =>
        'MyConfiguredAudienceModelAssociationName',
      ManageResourcePolicies => 1,
      MembershipIdentifier   => 'MyMembershipIdentifier',
      Description            => 'MyResourceDescription',    # OPTIONAL
      Tags                   => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      );

    # Results:
    my $ConfiguredAudienceModelAssociation =
      $CreateConfiguredAudienceModelAssociationOutput
      ->ConfiguredAudienceModelAssociation;

# Returns a L<Paws::CleanRooms::CreateConfiguredAudienceModelAssociationOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms/CreateConfiguredAudienceModelAssociation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfiguredAudienceModelArn => Str

A unique identifier for the configured audience model that you want to
associate.



=head2 B<REQUIRED> ConfiguredAudienceModelAssociationName => Str

The name of the configured audience model association.



=head2 Description => Str

A description of the configured audience model association.



=head2 B<REQUIRED> ManageResourcePolicies => Bool

When C<TRUE>, indicates that the resource policy for the configured
audience model resource being associated is configured for Clean Rooms
to manage permissions related to the given collaboration. When
C<FALSE>, indicates that the configured audience model resource owner
will manage permissions related to the given collaboration.

Setting this to C<TRUE> requires you to have permissions to create,
update, and delete the resource policy for the C<cleanrooms-ml>
resource when you call the DeleteConfiguredAudienceModelAssociation
resource. In addition, if you are the collaboration creator and specify
C<TRUE>, you must have the same permissions when you call the
DeleteMember and DeleteCollaboration APIs.



=head2 B<REQUIRED> MembershipIdentifier => Str

A unique identifier for one of your memberships for a collaboration.
The configured audience model is associated to the collaboration that
this membership belongs to. Accepts a membership ID.



=head2 Tags => L<Paws::CleanRooms::TagMap>

An optional label that you can assign to a resource when you create it.
Each tag consists of a key and an optional value, both of which you
define. When you use tagging, you can also use tag-based access control
in IAM policies to control access to this resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateConfiguredAudienceModelAssociation in L<Paws::CleanRooms>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

