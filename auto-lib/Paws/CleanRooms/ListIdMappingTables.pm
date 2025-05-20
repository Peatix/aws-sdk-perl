
package Paws::CleanRooms::ListIdMappingTables;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has MembershipIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'membershipIdentifier', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListIdMappingTables');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/memberships/{membershipIdentifier}/idmappingtables');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRooms::ListIdMappingTablesOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::ListIdMappingTables - Arguments for method ListIdMappingTables on L<Paws::CleanRooms>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListIdMappingTables on the
L<AWS Clean Rooms Service|Paws::CleanRooms> service. Use the attributes of this class
as arguments to method ListIdMappingTables.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListIdMappingTables.

=head1 SYNOPSIS

    my $cleanrooms = Paws->service('CleanRooms');
    my $ListIdMappingTablesOutput = $cleanrooms->ListIdMappingTables(
      MembershipIdentifier => 'MyMembershipIdentifier',
      MaxResults           => 1,                          # OPTIONAL
      NextToken            => 'MyPaginationToken',        # OPTIONAL
    );

    # Results:
    my $IdMappingTableSummaries =
      $ListIdMappingTablesOutput->IdMappingTableSummaries;
    my $NextToken = $ListIdMappingTablesOutput->NextToken;

    # Returns a L<Paws::CleanRooms::ListIdMappingTablesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms/ListIdMappingTables>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum size of the results that is returned per call. Service
chooses a default if it has not been set. Service may return a
nextToken even if the maximum results has not been met.



=head2 B<REQUIRED> MembershipIdentifier => Str

The unique identifier of the membership that contains the ID mapping
tables that you want to view.



=head2 NextToken => Str

The pagination token that's used to fetch the next set of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListIdMappingTables in L<Paws::CleanRooms>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

