
package Paws::GameLift::ListFleetDeploymentsOutput;
  use Moose;
  has FleetDeployments => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::FleetDeployment]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::ListFleetDeploymentsOutput

=head1 ATTRIBUTES


=head2 FleetDeployments => ArrayRef[L<Paws::GameLift::FleetDeployment>]

The requested deployment information.


=head2 NextToken => Str

A token that indicates where to resume retrieving results on the next
call to this operation. If no token is returned, these results
represent the end of the list.


=head2 _request_id => Str


=cut

1;