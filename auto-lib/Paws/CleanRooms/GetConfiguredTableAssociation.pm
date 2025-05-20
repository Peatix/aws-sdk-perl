
package Paws::CleanRooms::GetConfiguredTableAssociation;
  use Moose;
  has ConfiguredTableAssociationIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'configuredTableAssociationIdentifier', required => 1);
  has MembershipIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'membershipIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetConfiguredTableAssociation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/memberships/{membershipIdentifier}/configuredTableAssociations/{configuredTableAssociationIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRooms::GetConfiguredTableAssociationOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::GetConfiguredTableAssociation - Arguments for method GetConfiguredTableAssociation on L<Paws::CleanRooms>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetConfiguredTableAssociation on the
L<AWS Clean Rooms Service|Paws::CleanRooms> service. Use the attributes of this class
as arguments to method GetConfiguredTableAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetConfiguredTableAssociation.

=head1 SYNOPSIS

    my $cleanrooms = Paws->service('CleanRooms');
    my $GetConfiguredTableAssociationOutput =
      $cleanrooms->GetConfiguredTableAssociation(
      ConfiguredTableAssociationIdentifier =>
        'MyConfiguredTableAssociationIdentifier',
      MembershipIdentifier => 'MyMembershipIdentifier',

      );

    # Results:
    my $ConfiguredTableAssociation =
      $GetConfiguredTableAssociationOutput->ConfiguredTableAssociation;

    # Returns a L<Paws::CleanRooms::GetConfiguredTableAssociationOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms/GetConfiguredTableAssociation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfiguredTableAssociationIdentifier => Str

The unique ID for the configured table association to retrieve.
Currently accepts the configured table ID.



=head2 B<REQUIRED> MembershipIdentifier => Str

A unique identifier for the membership that the configured table
association belongs to. Currently accepts the membership ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetConfiguredTableAssociation in L<Paws::CleanRooms>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

