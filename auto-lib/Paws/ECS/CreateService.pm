
package Paws::ECS::CreateService;
  use Moose;
  has AvailabilityZoneRebalancing => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'availabilityZoneRebalancing' );
  has CapacityProviderStrategy => (is => 'ro', isa => 'ArrayRef[Paws::ECS::CapacityProviderStrategyItem]', traits => ['NameInRequest'], request_name => 'capacityProviderStrategy' );
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken' );
  has Cluster => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cluster' );
  has DeploymentConfiguration => (is => 'ro', isa => 'Paws::ECS::DeploymentConfiguration', traits => ['NameInRequest'], request_name => 'deploymentConfiguration' );
  has DeploymentController => (is => 'ro', isa => 'Paws::ECS::DeploymentController', traits => ['NameInRequest'], request_name => 'deploymentController' );
  has DesiredCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'desiredCount' );
  has EnableECSManagedTags => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'enableECSManagedTags' );
  has EnableExecuteCommand => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'enableExecuteCommand' );
  has HealthCheckGracePeriodSeconds => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'healthCheckGracePeriodSeconds' );
  has LaunchType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'launchType' );
  has LoadBalancers => (is => 'ro', isa => 'ArrayRef[Paws::ECS::LoadBalancer]', traits => ['NameInRequest'], request_name => 'loadBalancers' );
  has NetworkConfiguration => (is => 'ro', isa => 'Paws::ECS::NetworkConfiguration', traits => ['NameInRequest'], request_name => 'networkConfiguration' );
  has PlacementConstraints => (is => 'ro', isa => 'ArrayRef[Paws::ECS::PlacementConstraint]', traits => ['NameInRequest'], request_name => 'placementConstraints' );
  has PlacementStrategy => (is => 'ro', isa => 'ArrayRef[Paws::ECS::PlacementStrategy]', traits => ['NameInRequest'], request_name => 'placementStrategy' );
  has PlatformVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'platformVersion' );
  has PropagateTags => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'propagateTags' );
  has Role => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'role' );
  has SchedulingStrategy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'schedulingStrategy' );
  has ServiceConnectConfiguration => (is => 'ro', isa => 'Paws::ECS::ServiceConnectConfiguration', traits => ['NameInRequest'], request_name => 'serviceConnectConfiguration' );
  has ServiceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceName' , required => 1);
  has ServiceRegistries => (is => 'ro', isa => 'ArrayRef[Paws::ECS::ServiceRegistry]', traits => ['NameInRequest'], request_name => 'serviceRegistries' );
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Tag]', traits => ['NameInRequest'], request_name => 'tags' );
  has TaskDefinition => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'taskDefinition' );
  has VolumeConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::ECS::ServiceVolumeConfiguration]', traits => ['NameInRequest'], request_name => 'volumeConfigurations' );
  has VpcLatticeConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::ECS::VpcLatticeConfiguration]', traits => ['NameInRequest'], request_name => 'vpcLatticeConfigurations' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateService');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECS::CreateServiceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::CreateService - Arguments for method CreateService on L<Paws::ECS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateService on the
L<Amazon EC2 Container Service|Paws::ECS> service. Use the attributes of this class
as arguments to method CreateService.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateService.

=head1 SYNOPSIS

    my $ecs = Paws->service('ECS');
  # To create a new service
  # This example creates a service in your default region called
  # ``ecs-simple-service``. The service uses the ``hello_world`` task definition
  # and it maintains 10 copies of that task.
    my $CreateServiceResponse = $ecs->CreateService(
      'DesiredCount'   => 10,
      'ServiceName'    => 'ecs-simple-service',
      'TaskDefinition' => 'hello_world'
    );

    # Results:
    my $service = $CreateServiceResponse->service;

 # Returns a L<Paws::ECS::CreateServiceResponse> object.
 # To create a new service behind a load balancer
 # This example creates a service in your default region called
 # ``ecs-simple-service-elb``. The service uses the ``ecs-demo`` task definition
 # and it maintains 10 copies of that task. You must reference an existing load
 # balancer in the same region by its name.
    my $CreateServiceResponse = $ecs->CreateService(
      'DesiredCount'  => 10,
      'LoadBalancers' => [

        {
          'ContainerName'    => 'simple-app',
          'ContainerPort'    => 80,
          'LoadBalancerName' => 'EC2Contai-EcsElast-15DCDAURT3ZO2'
        }
      ],
      'Role'           => 'ecsServiceRole',
      'ServiceName'    => 'ecs-simple-service-elb',
      'TaskDefinition' => 'console-sample-app-static'
    );

    # Results:
    my $service = $CreateServiceResponse->service;

    # Returns a L<Paws::ECS::CreateServiceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecs/CreateService>

=head1 ATTRIBUTES


=head2 AvailabilityZoneRebalancing => Str

Indicates whether to use Availability Zone rebalancing for the service.

For more information, see Balancing an Amazon ECS service across
Availability Zones
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-rebalancing.html)
in the I< I<Amazon Elastic Container Service Developer Guide> >.

Valid values are: C<"ENABLED">, C<"DISABLED">

=head2 CapacityProviderStrategy => ArrayRef[L<Paws::ECS::CapacityProviderStrategyItem>]

The capacity provider strategy to use for the service.

If a C<capacityProviderStrategy> is specified, the C<launchType>
parameter must be omitted. If no C<capacityProviderStrategy> or
C<launchType> is specified, the C<defaultCapacityProviderStrategy> for
the cluster is used.

A capacity provider strategy can contain a maximum of 20 capacity
providers.



=head2 ClientToken => Str

An identifier that you provide to ensure the idempotency of the
request. It must be unique and is case sensitive. Up to 36 ASCII
characters in the range of 33-126 (inclusive) are allowed.



=head2 Cluster => Str

The short name or full Amazon Resource Name (ARN) of the cluster that
you run your service on. If you do not specify a cluster, the default
cluster is assumed.



=head2 DeploymentConfiguration => L<Paws::ECS::DeploymentConfiguration>

Optional deployment parameters that control how many tasks run during
the deployment and the ordering of stopping and starting tasks.



=head2 DeploymentController => L<Paws::ECS::DeploymentController>

The deployment controller to use for the service. If no deployment
controller is specified, the default value of C<ECS> is used.



=head2 DesiredCount => Int

The number of instantiations of the specified task definition to place
and keep running in your service.

This is required if C<schedulingStrategy> is C<REPLICA> or isn't
specified. If C<schedulingStrategy> is C<DAEMON> then this isn't
required.



=head2 EnableECSManagedTags => Bool

Specifies whether to turn on Amazon ECS managed tags for the tasks
within the service. For more information, see Tagging your Amazon ECS
resources
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html)
in the I<Amazon Elastic Container Service Developer Guide>.

When you use Amazon ECS managed tags, you need to set the
C<propagateTags> request parameter.



=head2 EnableExecuteCommand => Bool

Determines whether the execute command functionality is turned on for
the service. If C<true>, this enables execute command functionality on
all containers in the service tasks.



=head2 HealthCheckGracePeriodSeconds => Int

The period of time, in seconds, that the Amazon ECS service scheduler
ignores unhealthy Elastic Load Balancing, VPC Lattice, and container
health checks after a task has first started. If you don't specify a
health check grace period value, the default value of C<0> is used. If
you don't use any of the health checks, then
C<healthCheckGracePeriodSeconds> is unused.

If your service's tasks take a while to start and respond to health
checks, you can specify a health check grace period of up to
2,147,483,647 seconds (about 69 years). During that time, the Amazon
ECS service scheduler ignores health check status. This grace period
can prevent the service scheduler from marking tasks as unhealthy and
stopping them before they have time to come up.



=head2 LaunchType => Str

The infrastructure that you run your service on. For more information,
see Amazon ECS launch types
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

A service can use either a launch type or a capacity provider strategy.
If a C<launchType> is specified, the C<capacityProviderStrategy>
parameter must be omitted.

Valid values are: C<"EC2">, C<"FARGATE">, C<"EXTERNAL">

=head2 LoadBalancers => ArrayRef[L<Paws::ECS::LoadBalancer>]

A load balancer object representing the load balancers to use with your
service. For more information, see Service load balancing
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-load-balancing.html)
in the I<Amazon Elastic Container Service Developer Guide>.

If the service uses the rolling update (C<ECS>) deployment controller
and using either an Application Load Balancer or Network Load Balancer,
you must specify one or more target group ARNs to attach to the
service. The service-linked role is required for services that use
multiple target groups. For more information, see Using service-linked
roles for Amazon ECS
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using-service-linked-roles.html)
in the I<Amazon Elastic Container Service Developer Guide>.

If the service uses the C<CODE_DEPLOY> deployment controller, the
service is required to use either an Application Load Balancer or
Network Load Balancer. When creating an CodeDeploy deployment group,
you specify two target groups (referred to as a C<targetGroupPair>).
During a deployment, CodeDeploy determines which task set in your
service has the status C<PRIMARY>, and it associates one target group
with it. Then, it also associates the other target group with the
replacement task set. The load balancer can also have up to two
listeners: a required listener for production traffic and an optional
listener that you can use to perform validation tests with Lambda
functions before routing production traffic to it.

If you use the C<CODE_DEPLOY> deployment controller, these values can
be changed when updating the service.

For Application Load Balancers and Network Load Balancers, this object
must contain the load balancer target group ARN, the container name,
and the container port to access from the load balancer. The container
name must be as it appears in a container definition. The load balancer
name parameter must be omitted. When a task from this service is placed
on a container instance, the container instance and port combination is
registered as a target in the target group that's specified here.

For Classic Load Balancers, this object must contain the load balancer
name, the container name , and the container port to access from the
load balancer. The container name must be as it appears in a container
definition. The target group ARN parameter must be omitted. When a task
from this service is placed on a container instance, the container
instance is registered with the load balancer that's specified here.

Services with tasks that use the C<awsvpc> network mode (for example,
those with the Fargate launch type) only support Application Load
Balancers and Network Load Balancers. Classic Load Balancers aren't
supported. Also, when you create any target groups for these services,
you must choose C<ip> as the target type, not C<instance>. This is
because tasks that use the C<awsvpc> network mode are associated with
an elastic network interface, not an Amazon EC2 instance.



=head2 NetworkConfiguration => L<Paws::ECS::NetworkConfiguration>

The network configuration for the service. This parameter is required
for task definitions that use the C<awsvpc> network mode to receive
their own elastic network interface, and it isn't supported for other
network modes. For more information, see Task networking
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html)
in the I<Amazon Elastic Container Service Developer Guide>.



=head2 PlacementConstraints => ArrayRef[L<Paws::ECS::PlacementConstraint>]

An array of placement constraint objects to use for tasks in your
service. You can specify a maximum of 10 constraints for each task.
This limit includes constraints in the task definition and those
specified at runtime.



=head2 PlacementStrategy => ArrayRef[L<Paws::ECS::PlacementStrategy>]

The placement strategy objects to use for tasks in your service. You
can specify a maximum of 5 strategy rules for each service.



=head2 PlatformVersion => Str

The platform version that your tasks in the service are running on. A
platform version is specified only for tasks using the Fargate launch
type. If one isn't specified, the C<LATEST> platform version is used.
For more information, see Fargate platform versions
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html)
in the I<Amazon Elastic Container Service Developer Guide>.



=head2 PropagateTags => Str

Specifies whether to propagate the tags from the task definition to the
task. If no value is specified, the tags aren't propagated. Tags can
only be propagated to the task during task creation. To add tags to a
task after task creation, use the TagResource
(https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_TagResource.html)
API action.

You must set this to a value other than C<NONE> when you use Cost
Explorer. For more information, see Amazon ECS usage reports
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/usage-reports.html)
in the I<Amazon Elastic Container Service Developer Guide>.

The default is C<NONE>.

Valid values are: C<"TASK_DEFINITION">, C<"SERVICE">, C<"NONE">

=head2 Role => Str

The name or full Amazon Resource Name (ARN) of the IAM role that allows
Amazon ECS to make calls to your load balancer on your behalf. This
parameter is only permitted if you are using a load balancer with your
service and your task definition doesn't use the C<awsvpc> network
mode. If you specify the C<role> parameter, you must also specify a
load balancer object with the C<loadBalancers> parameter.

If your account has already created the Amazon ECS service-linked role,
that role is used for your service unless you specify a role here. The
service-linked role is required if your task definition uses the
C<awsvpc> network mode or if the service is configured to use service
discovery, an external deployment controller, multiple target groups,
or Elastic Inference accelerators in which case you don't specify a
role here. For more information, see Using service-linked roles for
Amazon ECS
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using-service-linked-roles.html)
in the I<Amazon Elastic Container Service Developer Guide>.

If your specified role has a path other than C</>, then you must either
specify the full role ARN (this is recommended) or prefix the role name
with the path. For example, if a role with the name C<bar> has a path
of C</foo/> then you would specify C</foo/bar> as the role name. For
more information, see Friendly names and paths
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-friendly-names)
in the I<IAM User Guide>.



=head2 SchedulingStrategy => Str

The scheduling strategy to use for the service. For more information,
see Services
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs_services.html).

There are two service scheduler strategies available:

=over

=item *

C<REPLICA>-The replica scheduling strategy places and maintains the
desired number of tasks across your cluster. By default, the service
scheduler spreads tasks across Availability Zones. You can use task
placement strategies and constraints to customize task placement
decisions. This scheduler strategy is required if the service uses the
C<CODE_DEPLOY> or C<EXTERNAL> deployment controller types.

=item *

C<DAEMON>-The daemon scheduling strategy deploys exactly one task on
each active container instance that meets all of the task placement
constraints that you specify in your cluster. The service scheduler
also evaluates the task placement constraints for running tasks and
will stop tasks that don't meet the placement constraints. When you're
using this strategy, you don't need to specify a desired number of
tasks, a task placement strategy, or use Service Auto Scaling policies.

Tasks using the Fargate launch type or the C<CODE_DEPLOY> or
C<EXTERNAL> deployment controller types don't support the C<DAEMON>
scheduling strategy.

=back


Valid values are: C<"REPLICA">, C<"DAEMON">

=head2 ServiceConnectConfiguration => L<Paws::ECS::ServiceConnectConfiguration>

The configuration for this service to discover and connect to services,
and be discovered by, and connected from, other services within a
namespace.

Tasks that run in a namespace can use short names to connect to
services in the namespace. Tasks can connect to services across all of
the clusters in the namespace. Tasks connect through a managed proxy
container that collects logs and metrics for increased visibility. Only
the tasks that Amazon ECS services create are supported with Service
Connect. For more information, see Service Connect
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-connect.html)
in the I<Amazon Elastic Container Service Developer Guide>.



=head2 B<REQUIRED> ServiceName => Str

The name of your service. Up to 255 letters (uppercase and lowercase),
numbers, underscores, and hyphens are allowed. Service names must be
unique within a cluster, but you can have similarly named services in
multiple clusters within a Region or across multiple Regions.



=head2 ServiceRegistries => ArrayRef[L<Paws::ECS::ServiceRegistry>]

The details of the service discovery registry to associate with this
service. For more information, see Service discovery
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-discovery.html).

Each service may be associated with one service registry. Multiple
service registries for each service isn't supported.



=head2 Tags => ArrayRef[L<Paws::ECS::Tag>]

The metadata that you apply to the service to help you categorize and
organize them. Each tag consists of a key and an optional value, both
of which you define. When a service is deleted, the tags are deleted as
well.

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




=head2 TaskDefinition => Str

The C<family> and C<revision> (C<family:revision>) or full ARN of the
task definition to run in your service. If a C<revision> isn't
specified, the latest C<ACTIVE> revision is used.

A task definition must be specified if the service uses either the
C<ECS> or C<CODE_DEPLOY> deployment controllers.

For more information about deployment types, see Amazon ECS deployment
types
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html).



=head2 VolumeConfigurations => ArrayRef[L<Paws::ECS::ServiceVolumeConfiguration>]

The configuration for a volume specified in the task definition as a
volume that is configured at launch time. Currently, the only supported
volume type is an Amazon EBS volume.



=head2 VpcLatticeConfigurations => ArrayRef[L<Paws::ECS::VpcLatticeConfiguration>]

The VPC Lattice configuration for the service being created.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateService in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

