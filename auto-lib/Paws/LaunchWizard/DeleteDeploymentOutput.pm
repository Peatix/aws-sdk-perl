
package Paws::LaunchWizard::DeleteDeploymentOutput;
  use Moose;
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has StatusReason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'statusReason');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LaunchWizard::DeleteDeploymentOutput

=head1 ATTRIBUTES


=head2 Status => Str

The status of the deployment.

Valid values are: C<"COMPLETED">, C<"CREATING">, C<"DELETE_IN_PROGRESS">, C<"DELETE_INITIATING">, C<"DELETE_FAILED">, C<"DELETED">, C<"FAILED">, C<"IN_PROGRESS">, C<"VALIDATING">
=head2 StatusReason => Str

The reason for the deployment status.


=head2 _request_id => Str


=cut

