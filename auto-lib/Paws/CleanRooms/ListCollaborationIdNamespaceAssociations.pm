
package Paws::CleanRooms::ListCollaborationIdNamespaceAssociations;
  use Moose;
  has CollaborationIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'collaborationIdentifier', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListCollaborationIdNamespaceAssociations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/collaborations/{collaborationIdentifier}/idnamespaceassociations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRooms::ListCollaborationIdNamespaceAssociationsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::ListCollaborationIdNamespaceAssociations - Arguments for method ListCollaborationIdNamespaceAssociations on L<Paws::CleanRooms>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListCollaborationIdNamespaceAssociations on the
L<AWS Clean Rooms Service|Paws::CleanRooms> service. Use the attributes of this class
as arguments to method ListCollaborationIdNamespaceAssociations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListCollaborationIdNamespaceAssociations.

=head1 SYNOPSIS

    my $cleanrooms = Paws->service('CleanRooms');
    my $ListCollaborationIdNamespaceAssociationsOutput =
      $cleanrooms->ListCollaborationIdNamespaceAssociations(
      CollaborationIdentifier => 'MyCollaborationIdentifier',
      MaxResults              => 1,                             # OPTIONAL
      NextToken               => 'MyPaginationToken',           # OPTIONAL
      );

    # Results:
    my $CollaborationIdNamespaceAssociationSummaries =
      $ListCollaborationIdNamespaceAssociationsOutput
      ->CollaborationIdNamespaceAssociationSummaries;
    my $NextToken = $ListCollaborationIdNamespaceAssociationsOutput->NextToken;

# Returns a L<Paws::CleanRooms::ListCollaborationIdNamespaceAssociationsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms/ListCollaborationIdNamespaceAssociations>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CollaborationIdentifier => Str

The unique identifier of the collaboration that contains the ID
namespace associations that you want to retrieve.



=head2 MaxResults => Int

The maximum size of the results that is returned per call. Service
chooses a default if it has not been set. Service may return a
nextToken even if the maximum results has not been met.E<gt>



=head2 NextToken => Str

The pagination token that's used to fetch the next set of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListCollaborationIdNamespaceAssociations in L<Paws::CleanRooms>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

