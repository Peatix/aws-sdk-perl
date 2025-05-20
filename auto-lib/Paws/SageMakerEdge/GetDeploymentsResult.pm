
package Paws::SageMakerEdge::GetDeploymentsResult;
  use Moose;
  has Deployments => (is => 'ro', isa => 'ArrayRef[Paws::SageMakerEdge::EdgeDeployment]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerEdge::GetDeploymentsResult

=head1 ATTRIBUTES


=head2 Deployments => ArrayRef[L<Paws::SageMakerEdge::EdgeDeployment>]

Returns a list of the configurations of the active deployments on the
device.


=head2 _request_id => Str


=cut

