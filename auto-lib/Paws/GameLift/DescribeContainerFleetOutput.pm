
package Paws::GameLift::DescribeContainerFleetOutput;
  use Moose;
  has ContainerFleet => (is => 'ro', isa => 'Paws::GameLift::ContainerFleet');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeContainerFleetOutput

=head1 ATTRIBUTES


=head2 ContainerFleet => L<Paws::GameLift::ContainerFleet>

The properties for the requested container fleet, including current
status.


=head2 _request_id => Str


=cut

1;