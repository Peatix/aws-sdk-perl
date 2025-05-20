
package Paws::GameLift::ListContainerFleetsOutput;
  use Moose;
  has ContainerFleets => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::ContainerFleet]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::ListContainerFleetsOutput

=head1 ATTRIBUTES


=head2 ContainerFleets => ArrayRef[L<Paws::GameLift::ContainerFleet>]

A collection of container fleet objects for all fleets that match the
request criteria.


=head2 NextToken => Str

A token that indicates where to resume retrieving results on the next
call to this operation. If no token is returned, these results
represent the end of the list.


=head2 _request_id => Str


=cut

1;