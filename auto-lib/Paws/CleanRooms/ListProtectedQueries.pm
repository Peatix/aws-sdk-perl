
package Paws::CleanRooms::ListProtectedQueries;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has MembershipIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'membershipIdentifier', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has Status => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'status');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListProtectedQueries');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/memberships/{membershipIdentifier}/protectedQueries');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRooms::ListProtectedQueriesOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::ListProtectedQueries - Arguments for method ListProtectedQueries on L<Paws::CleanRooms>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListProtectedQueries on the
L<AWS Clean Rooms Service|Paws::CleanRooms> service. Use the attributes of this class
as arguments to method ListProtectedQueries.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListProtectedQueries.

=head1 SYNOPSIS

    my $cleanrooms = Paws->service('CleanRooms');
    my $ListProtectedQueriesOutput = $cleanrooms->ListProtectedQueries(
      MembershipIdentifier => 'MyMembershipIdentifier',
      MaxResults           => 1,                          # OPTIONAL
      NextToken            => 'MyPaginationToken',        # OPTIONAL
      Status               => 'SUBMITTED',                # OPTIONAL
    );

    # Results:
    my $NextToken        = $ListProtectedQueriesOutput->NextToken;
    my $ProtectedQueries = $ListProtectedQueriesOutput->ProtectedQueries;

    # Returns a L<Paws::CleanRooms::ListProtectedQueriesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms/ListProtectedQueries>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results that are returned for an API request
call. The service chooses a default number if you don't set one. The
service might return a `nextToken` even if the `maxResults` value has
not been met.



=head2 B<REQUIRED> MembershipIdentifier => Str

The identifier for the membership in the collaboration.



=head2 NextToken => Str

The pagination token that's used to fetch the next set of results.



=head2 Status => Str

A filter on the status of the protected query.

Valid values are: C<"SUBMITTED">, C<"STARTED">, C<"CANCELLED">, C<"CANCELLING">, C<"FAILED">, C<"SUCCESS">, C<"TIMED_OUT">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListProtectedQueries in L<Paws::CleanRooms>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

