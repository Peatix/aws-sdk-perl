
package Paws::CleanRooms::UpdateConfiguredAudienceModelAssociation;
  use Moose;
  has ConfiguredAudienceModelAssociationIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'configuredAudienceModelAssociationIdentifier', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has MembershipIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'membershipIdentifier', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateConfiguredAudienceModelAssociation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/memberships/{membershipIdentifier}/configuredaudiencemodelassociations/{configuredAudienceModelAssociationIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRooms::UpdateConfiguredAudienceModelAssociationOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::UpdateConfiguredAudienceModelAssociation - Arguments for method UpdateConfiguredAudienceModelAssociation on L<Paws::CleanRooms>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateConfiguredAudienceModelAssociation on the
L<AWS Clean Rooms Service|Paws::CleanRooms> service. Use the attributes of this class
as arguments to method UpdateConfiguredAudienceModelAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateConfiguredAudienceModelAssociation.

=head1 SYNOPSIS

    my $cleanrooms = Paws->service('CleanRooms');
    my $UpdateConfiguredAudienceModelAssociationOutput =
      $cleanrooms->UpdateConfiguredAudienceModelAssociation(
      ConfiguredAudienceModelAssociationIdentifier =>
        'MyConfiguredAudienceModelAssociationIdentifier',
      MembershipIdentifier => 'MyMembershipIdentifier',
      Description          => 'MyResourceDescription',       # OPTIONAL
      Name => 'MyConfiguredAudienceModelAssociationName',    # OPTIONAL
      );

    # Results:
    my $ConfiguredAudienceModelAssociation =
      $UpdateConfiguredAudienceModelAssociationOutput
      ->ConfiguredAudienceModelAssociation;

# Returns a L<Paws::CleanRooms::UpdateConfiguredAudienceModelAssociationOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms/UpdateConfiguredAudienceModelAssociation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfiguredAudienceModelAssociationIdentifier => Str

A unique identifier for the configured audience model association that
you want to update.



=head2 Description => Str

A new description for the configured audience model association.



=head2 B<REQUIRED> MembershipIdentifier => Str

A unique identifier of the membership that contains the configured
audience model association that you want to update.



=head2 Name => Str

A new name for the configured audience model association.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateConfiguredAudienceModelAssociation in L<Paws::CleanRooms>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

