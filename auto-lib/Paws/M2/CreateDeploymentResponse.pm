
package Paws::M2::CreateDeploymentResponse;
  use Moose;
  has DeploymentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::M2::CreateDeploymentResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeploymentId => Str

The unique identifier of the deployment.


=head2 _request_id => Str


=cut

