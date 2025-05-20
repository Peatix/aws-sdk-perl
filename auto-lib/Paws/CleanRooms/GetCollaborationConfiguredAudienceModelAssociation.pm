
package Paws::CleanRooms::GetCollaborationConfiguredAudienceModelAssociation;
  use Moose;
  has CollaborationIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'collaborationIdentifier', required => 1);
  has ConfiguredAudienceModelAssociationIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'configuredAudienceModelAssociationIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCollaborationConfiguredAudienceModelAssociation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/collaborations/{collaborationIdentifier}/configuredaudiencemodelassociations/{configuredAudienceModelAssociationIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRooms::GetCollaborationConfiguredAudienceModelAssociationOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::GetCollaborationConfiguredAudienceModelAssociation - Arguments for method GetCollaborationConfiguredAudienceModelAssociation on L<Paws::CleanRooms>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCollaborationConfiguredAudienceModelAssociation on the
L<AWS Clean Rooms Service|Paws::CleanRooms> service. Use the attributes of this class
as arguments to method GetCollaborationConfiguredAudienceModelAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCollaborationConfiguredAudienceModelAssociation.

=head1 SYNOPSIS

    my $cleanrooms = Paws->service('CleanRooms');
    my $GetCollaborationConfiguredAudienceModelAssociationOutput =
      $cleanrooms->GetCollaborationConfiguredAudienceModelAssociation(
      CollaborationIdentifier => 'MyCollaborationIdentifier',
      ConfiguredAudienceModelAssociationIdentifier =>
        'MyConfiguredAudienceModelAssociationIdentifier',

      );

    # Results:
    my $CollaborationConfiguredAudienceModelAssociation =
      $GetCollaborationConfiguredAudienceModelAssociationOutput
      ->CollaborationConfiguredAudienceModelAssociation;

# Returns a L<Paws::CleanRooms::GetCollaborationConfiguredAudienceModelAssociationOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms/GetCollaborationConfiguredAudienceModelAssociation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CollaborationIdentifier => Str

A unique identifier for the collaboration that the configured audience
model association belongs to. Accepts a collaboration ID.



=head2 B<REQUIRED> ConfiguredAudienceModelAssociationIdentifier => Str

A unique identifier for the configured audience model association that
you want to retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCollaborationConfiguredAudienceModelAssociation in L<Paws::CleanRooms>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

