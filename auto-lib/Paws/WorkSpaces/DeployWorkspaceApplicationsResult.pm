
package Paws::WorkSpaces::DeployWorkspaceApplicationsResult;
  use Moose;
  has Deployment => (is => 'ro', isa => 'Paws::WorkSpaces::WorkSpaceApplicationDeployment');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::DeployWorkspaceApplicationsResult

=head1 ATTRIBUTES


=head2 Deployment => L<Paws::WorkSpaces::WorkSpaceApplicationDeployment>

The list of deployed associations and information about them.


=head2 _request_id => Str


=cut

1;