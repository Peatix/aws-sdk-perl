
package Paws::CodeDeploy::CreateDeployment;
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationName' , required => 1);
  has AutoRollbackConfiguration => (is => 'ro', isa => 'Paws::CodeDeploy::AutoRollbackConfiguration', traits => ['NameInRequest'], request_name => 'autoRollbackConfiguration' );
  has DeploymentConfigName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentConfigName' );
  has DeploymentGroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentGroupName' );
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has FileExistsBehavior => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'fileExistsBehavior' );
  has IgnoreApplicationStopFailures => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'ignoreApplicationStopFailures' );
  has OverrideAlarmConfiguration => (is => 'ro', isa => 'Paws::CodeDeploy::AlarmConfiguration', traits => ['NameInRequest'], request_name => 'overrideAlarmConfiguration' );
  has Revision => (is => 'ro', isa => 'Paws::CodeDeploy::RevisionLocation', traits => ['NameInRequest'], request_name => 'revision' );
  has TargetInstances => (is => 'ro', isa => 'Paws::CodeDeploy::TargetInstances', traits => ['NameInRequest'], request_name => 'targetInstances' );
  has UpdateOutdatedInstancesOnly => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'updateOutdatedInstancesOnly' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDeployment');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeDeploy::CreateDeploymentOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::CreateDeployment - Arguments for method CreateDeployment on L<Paws::CodeDeploy>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDeployment on the
L<AWS CodeDeploy|Paws::CodeDeploy> service. Use the attributes of this class
as arguments to method CreateDeployment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDeployment.

=head1 SYNOPSIS

    my $codedeploy = Paws->service('CodeDeploy');
    my $CreateDeploymentOutput = $codedeploy->CreateDeployment(
      ApplicationName           => 'MyApplicationName',
      AutoRollbackConfiguration => {
        Enabled => 1,    # OPTIONAL
        Events  => [
          'DEPLOYMENT_FAILURE',
          ... # values: DEPLOYMENT_FAILURE, DEPLOYMENT_STOP_ON_ALARM, DEPLOYMENT_STOP_ON_REQUEST
        ],    # OPTIONAL
      },    # OPTIONAL
      DeploymentConfigName          => 'MyDeploymentConfigName',    # OPTIONAL
      DeploymentGroupName           => 'MyDeploymentGroupName',     # OPTIONAL
      Description                   => 'MyDescription',             # OPTIONAL
      FileExistsBehavior            => 'DISALLOW',                  # OPTIONAL
      IgnoreApplicationStopFailures => 1,                           # OPTIONAL
      OverrideAlarmConfiguration    => {
        Alarms => [
          {
            Name => 'MyAlarmName',    # OPTIONAL
          },
          ...
        ],    # OPTIONAL
        Enabled                => 1,    # OPTIONAL
        IgnorePollAlarmFailure => 1,    # OPTIONAL
      },    # OPTIONAL
      Revision => {
        AppSpecContent => {
          Content => 'MyRawStringContent',    # OPTIONAL
          Sha256  => 'MyRawStringSha256',     # OPTIONAL
        },    # OPTIONAL
        GitHubLocation => {
          CommitId   => 'MyCommitId',      # OPTIONAL
          Repository => 'MyRepository',    # OPTIONAL
        },    # OPTIONAL
        RevisionType =>
          'S3',    # values: S3, GitHub, String, AppSpecContent; OPTIONAL
        S3Location => {
          Bucket     => 'MyS3Bucket',     # OPTIONAL
          BundleType => 'tar',     # values: tar, tgz, zip, YAML, JSON; OPTIONAL
          ETag       => 'MyETag',  # OPTIONAL
          Key        => 'MyS3Key', # OPTIONAL
          Version    => 'MyVersionId',    # OPTIONAL
        },    # OPTIONAL
        String => {
          Content => 'MyRawStringContent',    # OPTIONAL
          Sha256  => 'MyRawStringSha256',     # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      TargetInstances => {
        AutoScalingGroups => [ 'MyAutoScalingGroupName', ... ],    # OPTIONAL
        Ec2TagSet         => {
          Ec2TagSetList => [
            [
              {
                Key  => 'MyKey',       # OPTIONAL
                Type => 'KEY_ONLY'
                ,    # values: KEY_ONLY, VALUE_ONLY, KEY_AND_VALUE; OPTIONAL
                Value => 'MyValue',    # OPTIONAL
              },
              ...
            ],
            ...
          ],    # OPTIONAL
        },    # OPTIONAL
        TagFilters => [
          {
            Key  => 'MyKey',       # OPTIONAL
            Type => 'KEY_ONLY'
            ,    # values: KEY_ONLY, VALUE_ONLY, KEY_AND_VALUE; OPTIONAL
            Value => 'MyValue',    # OPTIONAL
          },
          ...
        ],
      },    # OPTIONAL
      UpdateOutdatedInstancesOnly => 1,    # OPTIONAL
    );

    # Results:
    my $DeploymentId = $CreateDeploymentOutput->DeploymentId;

    # Returns a L<Paws::CodeDeploy::CreateDeploymentOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codedeploy/CreateDeployment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationName => Str

The name of an CodeDeploy application associated with the user or
Amazon Web Services account.



=head2 AutoRollbackConfiguration => L<Paws::CodeDeploy::AutoRollbackConfiguration>

Configuration information for an automatic rollback that is added when
a deployment is created.



=head2 DeploymentConfigName => Str

The name of a deployment configuration associated with the user or
Amazon Web Services account.

If not specified, the value configured in the deployment group is used
as the default. If the deployment group does not have a deployment
configuration associated with it, C<CodeDeployDefault>.C<OneAtATime> is
used by default.



=head2 DeploymentGroupName => Str

The name of the deployment group.



=head2 Description => Str

A comment about the deployment.



=head2 FileExistsBehavior => Str

Information about how CodeDeploy handles files that already exist in a
deployment target location but weren't part of the previous successful
deployment.

The C<fileExistsBehavior> parameter takes any of the following values:

=over

=item *

DISALLOW: The deployment fails. This is also the default behavior if no
option is specified.

=item *

OVERWRITE: The version of the file from the application revision
currently being deployed replaces the version already on the instance.

=item *

RETAIN: The version of the file already on the instance is kept and
used as part of the new deployment.

=back


Valid values are: C<"DISALLOW">, C<"OVERWRITE">, C<"RETAIN">

=head2 IgnoreApplicationStopFailures => Bool

If true, then if an C<ApplicationStop>, C<BeforeBlockTraffic>, or
C<AfterBlockTraffic> deployment lifecycle event to an instance fails,
then the deployment continues to the next deployment lifecycle event.
For example, if C<ApplicationStop> fails, the deployment continues with
C<DownloadBundle>. If C<BeforeBlockTraffic> fails, the deployment
continues with C<BlockTraffic>. If C<AfterBlockTraffic> fails, the
deployment continues with C<ApplicationStop>.

If false or not specified, then if a lifecycle event fails during a
deployment to an instance, that deployment fails. If deployment to that
instance is part of an overall deployment and the number of healthy
hosts is not less than the minimum number of healthy hosts, then a
deployment to the next instance is attempted.

During a deployment, the CodeDeploy agent runs the scripts specified
for C<ApplicationStop>, C<BeforeBlockTraffic>, and C<AfterBlockTraffic>
in the AppSpec file from the previous successful deployment. (All other
scripts are run from the AppSpec file in the current deployment.) If
one of these scripts contains an error and does not run successfully,
the deployment can fail.

If the cause of the failure is a script from the last successful
deployment that will never run successfully, create a new deployment
and use C<ignoreApplicationStopFailures> to specify that the
C<ApplicationStop>, C<BeforeBlockTraffic>, and C<AfterBlockTraffic>
failures should be ignored.



=head2 OverrideAlarmConfiguration => L<Paws::CodeDeploy::AlarmConfiguration>

Allows you to specify information about alarms associated with a
deployment. The alarm configuration that you specify here will override
the alarm configuration at the deployment group level. Consider
overriding the alarm configuration if you have set up alarms at the
deployment group level that are causing deployment failures. In this
case, you would call C<CreateDeployment> to create a new deployment
that uses a previous application revision that is known to work, and
set its alarm configuration to turn off alarm polling. Turning off
alarm polling ensures that the new deployment proceeds without being
blocked by the alarm that was generated by the previous, failed,
deployment.

If you specify an C<overrideAlarmConfiguration>, you need the
C<UpdateDeploymentGroup> IAM permission when calling
C<CreateDeployment>.



=head2 Revision => L<Paws::CodeDeploy::RevisionLocation>

The type and location of the revision to deploy.



=head2 TargetInstances => L<Paws::CodeDeploy::TargetInstances>

Information about the instances that belong to the replacement
environment in a blue/green deployment.



=head2 UpdateOutdatedInstancesOnly => Bool

Indicates whether to deploy to all instances or only to instances that
are not running the latest application revision.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDeployment in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

