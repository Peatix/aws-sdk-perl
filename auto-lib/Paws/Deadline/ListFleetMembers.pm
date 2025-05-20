
package Paws::Deadline::ListFleetMembers;
  use Moose;
  has FarmId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'farmId', required => 1);
  has FleetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'fleetId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListFleetMembers');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2023-10-12/farms/{farmId}/fleets/{fleetId}/members');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Deadline::ListFleetMembersResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::ListFleetMembers - Arguments for method ListFleetMembers on L<Paws::Deadline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListFleetMembers on the
L<AWSDeadlineCloud|Paws::Deadline> service. Use the attributes of this class
as arguments to method ListFleetMembers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListFleetMembers.

=head1 SYNOPSIS

    my $deadline = Paws->service('Deadline');
    my $ListFleetMembersResponse = $deadline->ListFleetMembers(
      FarmId     => 'MyFarmId',
      FleetId    => 'MyFleetId',
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Members   = $ListFleetMembersResponse->Members;
    my $NextToken = $ListFleetMembersResponse->NextToken;

    # Returns a L<Paws::Deadline::ListFleetMembersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/deadline/ListFleetMembers>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FarmId => Str

The farm ID of the fleet.



=head2 B<REQUIRED> FleetId => Str

The fleet ID to include on the list.



=head2 MaxResults => Int

The maximum number of results to return. Use this parameter with
C<NextToken> to get results as a set of sequential pages.



=head2 NextToken => Str

The token for the next set of results, or C<null> to start from the
beginning.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListFleetMembers in L<Paws::Deadline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

