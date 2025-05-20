
package Paws::ControlTower::ListLandingZoneOperations;
  use Moose;
  has Filter => (is => 'ro', isa => 'Paws::ControlTower::LandingZoneOperationFilter', traits => ['NameInRequest'], request_name => 'filter');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListLandingZoneOperations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/list-landingzone-operations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ControlTower::ListLandingZoneOperationsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ControlTower::ListLandingZoneOperations - Arguments for method ListLandingZoneOperations on L<Paws::ControlTower>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListLandingZoneOperations on the
L<AWS Control Tower|Paws::ControlTower> service. Use the attributes of this class
as arguments to method ListLandingZoneOperations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListLandingZoneOperations.

=head1 SYNOPSIS

    my $controltower = Paws->service('ControlTower');
    my $ListLandingZoneOperationsOutput =
      $controltower->ListLandingZoneOperations(
      Filter => {
        Statuses => [
          'SUCCEEDED', ...    # values: SUCCEEDED, FAILED, IN_PROGRESS
        ],    # min: 1, max: 1; OPTIONAL
        Types => [
          'DELETE', ...    # values: DELETE, CREATE, UPDATE, RESET
        ],    # min: 1, max: 1; OPTIONAL
      },    # OPTIONAL
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
      );

    # Results:
    my $LandingZoneOperations =
      $ListLandingZoneOperationsOutput->LandingZoneOperations;
    my $NextToken = $ListLandingZoneOperationsOutput->NextToken;

    # Returns a L<Paws::ControlTower::ListLandingZoneOperationsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/controltower/ListLandingZoneOperations>

=head1 ATTRIBUTES


=head2 Filter => L<Paws::ControlTower::LandingZoneOperationFilter>

An input filter for the C<ListLandingZoneOperations> API that lets you
select the types of landing zone operations to view.



=head2 MaxResults => Int

How many results to return per API call.



=head2 NextToken => Str

The token to continue the list from a previous API call with the same
parameters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListLandingZoneOperations in L<Paws::ControlTower>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

