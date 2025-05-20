
package Paws::AppConfig::Deployment;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str');
  has AppliedExtensions => (is => 'ro', isa => 'ArrayRef[Paws::AppConfig::AppliedExtension]');
  has CompletedAt => (is => 'ro', isa => 'Str');
  has ConfigurationLocationUri => (is => 'ro', isa => 'Str');
  has ConfigurationName => (is => 'ro', isa => 'Str');
  has ConfigurationProfileId => (is => 'ro', isa => 'Str');
  has ConfigurationVersion => (is => 'ro', isa => 'Str');
  has DeploymentDurationInMinutes => (is => 'ro', isa => 'Int');
  has DeploymentNumber => (is => 'ro', isa => 'Int');
  has DeploymentStrategyId => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has EventLog => (is => 'ro', isa => 'ArrayRef[Paws::AppConfig::DeploymentEvent]');
  has FinalBakeTimeInMinutes => (is => 'ro', isa => 'Int');
  has GrowthFactor => (is => 'ro', isa => 'Num');
  has GrowthType => (is => 'ro', isa => 'Str');
  has KmsKeyArn => (is => 'ro', isa => 'Str');
  has KmsKeyIdentifier => (is => 'ro', isa => 'Str');
  has PercentageComplete => (is => 'ro', isa => 'Num');
  has StartedAt => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has VersionLabel => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppConfig::Deployment

=head1 ATTRIBUTES


=head2 ApplicationId => Str

The ID of the application that was deployed.


=head2 AppliedExtensions => ArrayRef[L<Paws::AppConfig::AppliedExtension>]

A list of extensions that were processed as part of the deployment. The
extensions that were previously associated to the configuration
profile, environment, or the application when C<StartDeployment> was
called.


=head2 CompletedAt => Str

The time the deployment completed.


=head2 ConfigurationLocationUri => Str

Information about the source location of the configuration.


=head2 ConfigurationName => Str

The name of the configuration.


=head2 ConfigurationProfileId => Str

The ID of the configuration profile that was deployed.


=head2 ConfigurationVersion => Str

The configuration version that was deployed.


=head2 DeploymentDurationInMinutes => Int

Total amount of time the deployment lasted.


=head2 DeploymentNumber => Int

The sequence number of the deployment.


=head2 DeploymentStrategyId => Str

The ID of the deployment strategy that was deployed.


=head2 Description => Str

The description of the deployment.


=head2 EnvironmentId => Str

The ID of the environment that was deployed.


=head2 EventLog => ArrayRef[L<Paws::AppConfig::DeploymentEvent>]

A list containing all events related to a deployment. The most recent
events are displayed first.


=head2 FinalBakeTimeInMinutes => Int

The amount of time that AppConfig monitored for alarms before
considering the deployment to be complete and no longer eligible for
automatic rollback.


=head2 GrowthFactor => Num

The percentage of targets to receive a deployed configuration during
each interval.


=head2 GrowthType => Str

The algorithm used to define how percentage grew over time.

Valid values are: C<"LINEAR">, C<"EXPONENTIAL">
=head2 KmsKeyArn => Str

The Amazon Resource Name of the Key Management Service key used to
encrypt configuration data. You can encrypt secrets stored in Secrets
Manager, Amazon Simple Storage Service (Amazon S3) objects encrypted
with SSE-KMS, or secure string parameters stored in Amazon Web Services
Systems Manager Parameter Store.


=head2 KmsKeyIdentifier => Str

The Key Management Service key identifier (key ID, key alias, or key
ARN) provided when the resource was created or updated.


=head2 PercentageComplete => Num

The percentage of targets for which the deployment is available.


=head2 StartedAt => Str

The time the deployment started.


=head2 State => Str

The state of the deployment.

Valid values are: C<"BAKING">, C<"VALIDATING">, C<"DEPLOYING">, C<"COMPLETE">, C<"ROLLING_BACK">, C<"ROLLED_BACK">, C<"REVERTED">
=head2 VersionLabel => Str

A user-defined label for an AppConfig hosted configuration version.


=head2 _request_id => Str


=cut

