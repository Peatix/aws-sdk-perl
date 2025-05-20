
package Paws::GameLift::DescribeFleetDeploymentOutput;
  use Moose;
  has FleetDeployment => (is => 'ro', isa => 'Paws::GameLift::FleetDeployment');
  has LocationalDeployments => (is => 'ro', isa => 'Paws::GameLift::LocationalDeployments');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeFleetDeploymentOutput

=head1 ATTRIBUTES


=head2 FleetDeployment => L<Paws::GameLift::FleetDeployment>

The requested deployment information.


=head2 LocationalDeployments => L<Paws::GameLift::LocationalDeployments>

If the deployment is for a multi-location fleet, the requests returns
the deployment status in each fleet location.


=head2 _request_id => Str


=cut

1;