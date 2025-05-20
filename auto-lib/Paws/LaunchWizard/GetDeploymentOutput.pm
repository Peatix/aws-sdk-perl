
package Paws::LaunchWizard::GetDeploymentOutput;
  use Moose;
  has Deployment => (is => 'ro', isa => 'Paws::LaunchWizard::DeploymentData', traits => ['NameInRequest'], request_name => 'deployment');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LaunchWizard::GetDeploymentOutput

=head1 ATTRIBUTES


=head2 Deployment => L<Paws::LaunchWizard::DeploymentData>

An object that details the deployment.


=head2 _request_id => Str


=cut

