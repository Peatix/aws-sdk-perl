
package Paws::Deadline::ListFleets;
  use Moose;
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'displayName');
  has FarmId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'farmId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has PrincipalId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'principalId');
  has Status => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'status');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListFleets');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2023-10-12/farms/{farmId}/fleets');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Deadline::ListFleetsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::ListFleets - Arguments for method ListFleets on L<Paws::Deadline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListFleets on the
L<AWSDeadlineCloud|Paws::Deadline> service. Use the attributes of this class
as arguments to method ListFleets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListFleets.

=head1 SYNOPSIS

    my $deadline = Paws->service('Deadline');
    my $ListFleetsResponse = $deadline->ListFleets(
      FarmId      => 'MyFarmId',
      DisplayName => 'MyResourceName',                 # OPTIONAL
      MaxResults  => 1,                                # OPTIONAL
      NextToken   => 'MyString',                       # OPTIONAL
      PrincipalId => 'MyIdentityCenterPrincipalId',    # OPTIONAL
      Status      => 'ACTIVE',                         # OPTIONAL
    );

    # Results:
    my $Fleets    = $ListFleetsResponse->Fleets;
    my $NextToken = $ListFleetsResponse->NextToken;

    # Returns a L<Paws::Deadline::ListFleetsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/deadline/ListFleets>

=head1 ATTRIBUTES


=head2 DisplayName => Str

The display names of a list of fleets.

This field can store any content. Escape or encode this content before
displaying it on a webpage or any other system that might interpret the
content of this field.



=head2 B<REQUIRED> FarmId => Str

The farm ID of the fleets.



=head2 MaxResults => Int

The maximum number of results to return. Use this parameter with
C<NextToken> to get results as a set of sequential pages.



=head2 NextToken => Str

The token for the next set of results, or C<null> to start from the
beginning.



=head2 PrincipalId => Str

The principal ID of the members to include in the fleet.



=head2 Status => Str

The status of the fleet.

Valid values are: C<"ACTIVE">, C<"CREATE_IN_PROGRESS">, C<"UPDATE_IN_PROGRESS">, C<"CREATE_FAILED">, C<"UPDATE_FAILED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListFleets in L<Paws::Deadline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

