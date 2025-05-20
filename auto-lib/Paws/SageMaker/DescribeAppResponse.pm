
package Paws::SageMaker::DescribeAppResponse;
  use Moose;
  has AppArn => (is => 'ro', isa => 'Str');
  has AppName => (is => 'ro', isa => 'Str');
  has AppType => (is => 'ro', isa => 'Str');
  has BuiltInLifecycleConfigArn => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has DomainId => (is => 'ro', isa => 'Str');
  has FailureReason => (is => 'ro', isa => 'Str');
  has LastHealthCheckTimestamp => (is => 'ro', isa => 'Str');
  has LastUserActivityTimestamp => (is => 'ro', isa => 'Str');
  has RecoveryMode => (is => 'ro', isa => 'Bool');
  has ResourceSpec => (is => 'ro', isa => 'Paws::SageMaker::ResourceSpec');
  has SpaceName => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has UserProfileName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeAppResponse

=head1 ATTRIBUTES


=head2 AppArn => Str

The Amazon Resource Name (ARN) of the app.


=head2 AppName => Str

The name of the app.


=head2 AppType => Str

The type of app.

Valid values are: C<"JupyterServer">, C<"KernelGateway">, C<"DetailedProfiler">, C<"TensorBoard">, C<"CodeEditor">, C<"JupyterLab">, C<"RStudioServerPro">, C<"RSessionGateway">, C<"Canvas">
=head2 BuiltInLifecycleConfigArn => Str

The lifecycle configuration that runs before the default lifecycle
configuration


=head2 CreationTime => Str

The creation time of the application.

After an application has been shut down for 24 hours, SageMaker AI
deletes all metadata for the application. To be considered an update
and retain application metadata, applications must be restarted within
24 hours after the previous application has been shut down. After this
time window, creation of an application is considered a new application
rather than an update of the previous application.


=head2 DomainId => Str

The domain ID.


=head2 FailureReason => Str

The failure reason.


=head2 LastHealthCheckTimestamp => Str

The timestamp of the last health check.


=head2 LastUserActivityTimestamp => Str

The timestamp of the last user's activity. C<LastUserActivityTimestamp>
is also updated when SageMaker AI performs health checks without user
activity. As a result, this value is set to the same value as
C<LastHealthCheckTimestamp>.


=head2 RecoveryMode => Bool

Indicates whether the application is launched in recovery mode.


=head2 ResourceSpec => L<Paws::SageMaker::ResourceSpec>

The instance type and the Amazon Resource Name (ARN) of the SageMaker
AI image created on the instance.


=head2 SpaceName => Str

The name of the space. If this value is not set, then
C<UserProfileName> must be set.


=head2 Status => Str

The status.

Valid values are: C<"Deleted">, C<"Deleting">, C<"Failed">, C<"InService">, C<"Pending">
=head2 UserProfileName => Str

The user profile name.


=head2 _request_id => Str


=cut

1;