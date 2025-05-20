
package Paws::M2::GetDeploymentResponse;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationId', required => 1);
  has ApplicationVersion => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'applicationVersion', required => 1);
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime', required => 1);
  has DeploymentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentId', required => 1);
  has EnvironmentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'environmentId', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has StatusReason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'statusReason');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::M2::GetDeploymentResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The unique identifier of the application.


=head2 B<REQUIRED> ApplicationVersion => Int

The application version.


=head2 B<REQUIRED> CreationTime => Str

The timestamp when the deployment was created.


=head2 B<REQUIRED> DeploymentId => Str

The unique identifier of the deployment.


=head2 B<REQUIRED> EnvironmentId => Str

The unique identifier of the runtime environment.


=head2 B<REQUIRED> Status => Str

The status of the deployment.

Valid values are: C<"Deploying">, C<"Succeeded">, C<"Failed">, C<"Updating Deployment">
=head2 StatusReason => Str

The reason for the reported status.


=head2 _request_id => Str


=cut

