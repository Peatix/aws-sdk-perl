
package Paws::CleanRooms::DeleteConfiguredAudienceModelAssociation;
  use Moose;
  has ConfiguredAudienceModelAssociationIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'configuredAudienceModelAssociationIdentifier', required => 1);
  has MembershipIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'membershipIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteConfiguredAudienceModelAssociation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/memberships/{membershipIdentifier}/configuredaudiencemodelassociations/{configuredAudienceModelAssociationIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRooms::DeleteConfiguredAudienceModelAssociationOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::DeleteConfiguredAudienceModelAssociation - Arguments for method DeleteConfiguredAudienceModelAssociation on L<Paws::CleanRooms>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteConfiguredAudienceModelAssociation on the
L<AWS Clean Rooms Service|Paws::CleanRooms> service. Use the attributes of this class
as arguments to method DeleteConfiguredAudienceModelAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteConfiguredAudienceModelAssociation.

=head1 SYNOPSIS

    my $cleanrooms = Paws->service('CleanRooms');
    my $DeleteConfiguredAudienceModelAssociationOutput =
      $cleanrooms->DeleteConfiguredAudienceModelAssociation(
      ConfiguredAudienceModelAssociationIdentifier =>
        'MyConfiguredAudienceModelAssociationIdentifier',
      MembershipIdentifier => 'MyMembershipIdentifier',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms/DeleteConfiguredAudienceModelAssociation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfiguredAudienceModelAssociationIdentifier => Str

A unique identifier of the configured audience model association that
you want to delete.



=head2 B<REQUIRED> MembershipIdentifier => Str

A unique identifier of the membership that contains the audience model
association that you want to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteConfiguredAudienceModelAssociation in L<Paws::CleanRooms>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

