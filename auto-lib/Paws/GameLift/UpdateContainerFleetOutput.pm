
package Paws::GameLift::UpdateContainerFleetOutput;
  use Moose;
  has ContainerFleet => (is => 'ro', isa => 'Paws::GameLift::ContainerFleet');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::UpdateContainerFleetOutput

=head1 ATTRIBUTES


=head2 ContainerFleet => L<Paws::GameLift::ContainerFleet>

A collection of container fleet objects for all fleets that match the
request criteria.


=head2 _request_id => Str


=cut

1;