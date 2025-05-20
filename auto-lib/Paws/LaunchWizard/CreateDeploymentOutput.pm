
package Paws::LaunchWizard::CreateDeploymentOutput;
  use Moose;
  has DeploymentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LaunchWizard::CreateDeploymentOutput

=head1 ATTRIBUTES


=head2 DeploymentId => Str

The ID of the deployment.


=head2 _request_id => Str


=cut

