
package Paws::SageMaker::DescribeMlflowTrackingServerResponse;
  use Moose;
  has ArtifactStoreUri => (is => 'ro', isa => 'Str');
  has AutomaticModelRegistration => (is => 'ro', isa => 'Bool');
  has CreatedBy => (is => 'ro', isa => 'Paws::SageMaker::UserContext');
  has CreationTime => (is => 'ro', isa => 'Str');
  has IsActive => (is => 'ro', isa => 'Str');
  has LastModifiedBy => (is => 'ro', isa => 'Paws::SageMaker::UserContext');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has MlflowVersion => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str');
  has TrackingServerArn => (is => 'ro', isa => 'Str');
  has TrackingServerName => (is => 'ro', isa => 'Str');
  has TrackingServerSize => (is => 'ro', isa => 'Str');
  has TrackingServerStatus => (is => 'ro', isa => 'Str');
  has TrackingServerUrl => (is => 'ro', isa => 'Str');
  has WeeklyMaintenanceWindowStart => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeMlflowTrackingServerResponse

=head1 ATTRIBUTES


=head2 ArtifactStoreUri => Str

The S3 URI of the general purpose bucket used as the MLflow Tracking
Server artifact store.


=head2 AutomaticModelRegistration => Bool

Whether automatic registration of new MLflow models to the SageMaker
Model Registry is enabled.


=head2 CreatedBy => L<Paws::SageMaker::UserContext>




=head2 CreationTime => Str

The timestamp of when the described MLflow Tracking Server was created.


=head2 IsActive => Str

Whether the described MLflow Tracking Server is currently active.

Valid values are: C<"Active">, C<"Inactive">
=head2 LastModifiedBy => L<Paws::SageMaker::UserContext>




=head2 LastModifiedTime => Str

The timestamp of when the described MLflow Tracking Server was last
modified.


=head2 MlflowVersion => Str

The MLflow version used for the described tracking server.


=head2 RoleArn => Str

The Amazon Resource Name (ARN) for an IAM role in your account that the
described MLflow Tracking Server uses to access the artifact store in
Amazon S3.


=head2 TrackingServerArn => Str

The ARN of the described tracking server.


=head2 TrackingServerName => Str

The name of the described tracking server.


=head2 TrackingServerSize => Str

The size of the described tracking server.

Valid values are: C<"Small">, C<"Medium">, C<"Large">
=head2 TrackingServerStatus => Str

The current creation status of the described MLflow Tracking Server.

Valid values are: C<"Creating">, C<"Created">, C<"CreateFailed">, C<"Updating">, C<"Updated">, C<"UpdateFailed">, C<"Deleting">, C<"DeleteFailed">, C<"Stopping">, C<"Stopped">, C<"StopFailed">, C<"Starting">, C<"Started">, C<"StartFailed">, C<"MaintenanceInProgress">, C<"MaintenanceComplete">, C<"MaintenanceFailed">
=head2 TrackingServerUrl => Str

The URL to connect to the MLflow user interface for the described
tracking server.


=head2 WeeklyMaintenanceWindowStart => Str

The day and time of the week when weekly maintenance occurs on the
described tracking server.


=head2 _request_id => Str


=cut

1;