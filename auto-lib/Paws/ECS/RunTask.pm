
package Paws::ECS::RunTask;
  use Moose;
  has CapacityProviderStrategy => (is => 'ro', isa => 'ArrayRef[Paws::ECS::CapacityProviderStrategyItem]', traits => ['NameInRequest'], request_name => 'capacityProviderStrategy' );
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken' );
  has Cluster => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cluster' );
  has Count => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'count' );
  has EnableECSManagedTags => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'enableECSManagedTags' );
  has EnableExecuteCommand => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'enableExecuteCommand' );
  has Group => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'group' );
  has LaunchType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'launchType' );
  has NetworkConfiguration => (is => 'ro', isa => 'Paws::ECS::NetworkConfiguration', traits => ['NameInRequest'], request_name => 'networkConfiguration' );
  has Overrides => (is => 'ro', isa => 'Paws::ECS::TaskOverride', traits => ['NameInRequest'], request_name => 'overrides' );
  has PlacementConstraints => (is => 'ro', isa => 'ArrayRef[Paws::ECS::PlacementConstraint]', traits => ['NameInRequest'], request_name => 'placementConstraints' );
  has PlacementStrategy => (is => 'ro', isa => 'ArrayRef[Paws::ECS::PlacementStrategy]', traits => ['NameInRequest'], request_name => 'placementStrategy' );
  has PlatformVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'platformVersion' );
  has PropagateTags => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'propagateTags' );
  has ReferenceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'referenceId' );
  has StartedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startedBy' );
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Tag]', traits => ['NameInRequest'], request_name => 'tags' );
  has TaskDefinition => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'taskDefinition' , required => 1);
  has VolumeConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::ECS::TaskVolumeConfiguration]', traits => ['NameInRequest'], request_name => 'volumeConfigurations' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RunTask');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECS::RunTaskResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::RunTask - Arguments for method RunTask on L<Paws::ECS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RunTask on the
L<Amazon EC2 Container Service|Paws::ECS> service. Use the attributes of this class
as arguments to method RunTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RunTask.

=head1 SYNOPSIS

    my $ecs = Paws->service('ECS');
    # To run a task on your default cluster
    # This example runs the specified task definition on your default cluster.
    my $RunTaskResponse = $ecs->RunTask(
      'Cluster'        => 'default',
      'TaskDefinition' => 'sleep360:1'
    );

    # Results:
    my $tasks = $RunTaskResponse->tasks;

    # Returns a L<Paws::ECS::RunTaskResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecs/RunTask>

=head1 ATTRIBUTES


=head2 CapacityProviderStrategy => ArrayRef[L<Paws::ECS::CapacityProviderStrategyItem>]

The capacity provider strategy to use for the task.

If a C<capacityProviderStrategy> is specified, the C<launchType>
parameter must be omitted. If no C<capacityProviderStrategy> or
C<launchType> is specified, the C<defaultCapacityProviderStrategy> for
the cluster is used.

When you use cluster auto scaling, you must specify
C<capacityProviderStrategy> and not C<launchType>.

A capacity provider strategy can contain a maximum of 20 capacity
providers.



=head2 ClientToken => Str

An identifier that you provide to ensure the idempotency of the
request. It must be unique and is case sensitive. Up to 64 characters
are allowed. The valid characters are characters in the range of
33-126, inclusive. For more information, see Ensuring idempotency
(https://docs.aws.amazon.com/AmazonECS/latest/APIReference/ECS_Idempotency.html).



=head2 Cluster => Str

The short name or full Amazon Resource Name (ARN) of the cluster to run
your task on. If you do not specify a cluster, the default cluster is
assumed.

Each account receives a default cluster the first time you use the
service, but you may also create other clusters.



=head2 Count => Int

The number of instantiations of the specified task to place on your
cluster. You can specify up to 10 tasks for each call.



=head2 EnableECSManagedTags => Bool

Specifies whether to use Amazon ECS managed tags for the task. For more
information, see Tagging Your Amazon ECS Resources
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html)
in the I<Amazon Elastic Container Service Developer Guide>.



=head2 EnableExecuteCommand => Bool

Determines whether to use the execute command functionality for the
containers in this task. If C<true>, this enables execute command
functionality on all containers in the task.

If C<true>, then the task definition must have a task role, or you must
provide one as an override.



=head2 Group => Str

The name of the task group to associate with the task. The default
value is the family name of the task definition (for example,
C<family:my-family-name>).



=head2 LaunchType => Str

The infrastructure to run your standalone task on. For more
information, see Amazon ECS launch types
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html)
in the I<Amazon Elastic Container Service Developer Guide>.

The C<FARGATE> launch type runs your tasks on Fargate On-Demand
infrastructure.

Fargate Spot infrastructure is available for use but a capacity
provider strategy must be used. For more information, see Fargate
capacity providers
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/fargate-capacity-providers.html)
in the I<Amazon ECS Developer Guide>.

The C<EC2> launch type runs your tasks on Amazon EC2 instances
registered to your cluster.

The C<EXTERNAL> launch type runs your tasks on your on-premises server
or virtual machine (VM) capacity registered to your cluster.

A task can use either a launch type or a capacity provider strategy. If
a C<launchType> is specified, the C<capacityProviderStrategy> parameter
must be omitted.

When you use cluster auto scaling, you must specify
C<capacityProviderStrategy> and not C<launchType>.

Valid values are: C<"EC2">, C<"FARGATE">, C<"EXTERNAL">

=head2 NetworkConfiguration => L<Paws::ECS::NetworkConfiguration>

The network configuration for the task. This parameter is required for
task definitions that use the C<awsvpc> network mode to receive their
own elastic network interface, and it isn't supported for other network
modes. For more information, see Task networking
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html)
in the I<Amazon Elastic Container Service Developer Guide>.



=head2 Overrides => L<Paws::ECS::TaskOverride>

A list of container overrides in JSON format that specify the name of a
container in the specified task definition and the overrides it should
receive. You can override the default command for a container (that's
specified in the task definition or Docker image) with a C<command>
override. You can also override existing environment variables (that
are specified in the task definition or Docker image) on a container or
add new environment variables to it with an C<environment> override.

A total of 8192 characters are allowed for overrides. This limit
includes the JSON formatting characters of the override structure.



=head2 PlacementConstraints => ArrayRef[L<Paws::ECS::PlacementConstraint>]

An array of placement constraint objects to use for the task. You can
specify up to 10 constraints for each task (including constraints in
the task definition and those specified at runtime).



=head2 PlacementStrategy => ArrayRef[L<Paws::ECS::PlacementStrategy>]

The placement strategy objects to use for the task. You can specify a
maximum of 5 strategy rules for each task.



=head2 PlatformVersion => Str

The platform version the task uses. A platform version is only
specified for tasks hosted on Fargate. If one isn't specified, the
C<LATEST> platform version is used. For more information, see Fargate
platform versions
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html)
in the I<Amazon Elastic Container Service Developer Guide>.



=head2 PropagateTags => Str

Specifies whether to propagate the tags from the task definition to the
task. If no value is specified, the tags aren't propagated. Tags can
only be propagated to the task during task creation. To add tags to a
task after task creation, use theTagResource
(https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_TagResource.html)
API action.

An error will be received if you specify the C<SERVICE> option when
running a task.

Valid values are: C<"TASK_DEFINITION">, C<"SERVICE">, C<"NONE">

=head2 ReferenceId => Str

This parameter is only used by Amazon ECS. It is not intended for use
by customers.



=head2 StartedBy => Str

An optional tag specified when a task is started. For example, if you
automatically trigger a task to run a batch process job, you could
apply a unique identifier for that job to your task with the
C<startedBy> parameter. You can then identify which tasks belong to
that job by filtering the results of a ListTasks
(https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ListTasks.html)
call with the C<startedBy> value. Up to 128 letters (uppercase and
lowercase), numbers, hyphens (-), forward slash (/), and underscores
(_) are allowed.

If a task is started by an Amazon ECS service, then the C<startedBy>
parameter contains the deployment ID of the service that starts it.



=head2 Tags => ArrayRef[L<Paws::ECS::Tag>]

The metadata that you apply to the task to help you categorize and
organize them. Each tag consists of a key and an optional value, both
of which you define.

The following basic restrictions apply to tags:

=over

=item *

Maximum number of tags per resource - 50

=item *

For each resource, each tag key must be unique, and each tag key can
have only one value.

=item *

Maximum key length - 128 Unicode characters in UTF-8

=item *

Maximum value length - 256 Unicode characters in UTF-8

=item *

If your tagging schema is used across multiple services and resources,
remember that other services may have restrictions on allowed
characters. Generally allowed characters are: letters, numbers, and
spaces representable in UTF-8, and the following characters: + - = . _
: / @.

=item *

Tag keys and values are case-sensitive.

=item *

Do not use C<aws:>, C<AWS:>, or any upper or lowercase combination of
such as a prefix for either keys or values as it is reserved for Amazon
Web Services use. You cannot edit or delete tag keys or values with
this prefix. Tags with this prefix do not count against your tags per
resource limit.

=back




=head2 B<REQUIRED> TaskDefinition => Str

The C<family> and C<revision> (C<family:revision>) or full ARN of the
task definition to run. If a C<revision> isn't specified, the latest
C<ACTIVE> revision is used.

The full ARN value must match the value that you specified as the
C<Resource> of the principal's permissions policy.

When you specify a task definition, you must either specify a specific
revision, or all revisions in the ARN.

To specify a specific revision, include the revision number in the ARN.
For example, to specify revision 2, use
C<arn:aws:ecs:us-east-1:111122223333:task-definition/TaskFamilyName:2>.

To specify all revisions, use the wildcard (*) in the ARN. For example,
to specify all revisions, use
C<arn:aws:ecs:us-east-1:111122223333:task-definition/TaskFamilyName:*>.

For more information, see Policy Resources for Amazon ECS
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/security_iam_service-with-iam.html#security_iam_service-with-iam-id-based-policies-resources)
in the Amazon Elastic Container Service Developer Guide.



=head2 VolumeConfigurations => ArrayRef[L<Paws::ECS::TaskVolumeConfiguration>]

The details of the volume that was C<configuredAtLaunch>. You can
configure the size, volumeType, IOPS, throughput, snapshot and
encryption in in TaskManagedEBSVolumeConfiguration
(https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_TaskManagedEBSVolumeConfiguration.html).
The C<name> of the volume must match the C<name> from the task
definition.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RunTask in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

