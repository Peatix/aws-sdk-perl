
package Paws::ECS::UpdateService;
  use Moose;
  has AvailabilityZoneRebalancing => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'availabilityZoneRebalancing' );
  has CapacityProviderStrategy => (is => 'ro', isa => 'ArrayRef[Paws::ECS::CapacityProviderStrategyItem]', traits => ['NameInRequest'], request_name => 'capacityProviderStrategy' );
  has Cluster => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cluster' );
  has DeploymentConfiguration => (is => 'ro', isa => 'Paws::ECS::DeploymentConfiguration', traits => ['NameInRequest'], request_name => 'deploymentConfiguration' );
  has DesiredCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'desiredCount' );
  has EnableECSManagedTags => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'enableECSManagedTags' );
  has EnableExecuteCommand => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'enableExecuteCommand' );
  has ForceNewDeployment => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'forceNewDeployment' );
  has HealthCheckGracePeriodSeconds => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'healthCheckGracePeriodSeconds' );
  has LoadBalancers => (is => 'ro', isa => 'ArrayRef[Paws::ECS::LoadBalancer]', traits => ['NameInRequest'], request_name => 'loadBalancers' );
  has NetworkConfiguration => (is => 'ro', isa => 'Paws::ECS::NetworkConfiguration', traits => ['NameInRequest'], request_name => 'networkConfiguration' );
  has PlacementConstraints => (is => 'ro', isa => 'ArrayRef[Paws::ECS::PlacementConstraint]', traits => ['NameInRequest'], request_name => 'placementConstraints' );
  has PlacementStrategy => (is => 'ro', isa => 'ArrayRef[Paws::ECS::PlacementStrategy]', traits => ['NameInRequest'], request_name => 'placementStrategy' );
  has PlatformVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'platformVersion' );
  has PropagateTags => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'propagateTags' );
  has Service => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'service' , required => 1);
  has ServiceConnectConfiguration => (is => 'ro', isa => 'Paws::ECS::ServiceConnectConfiguration', traits => ['NameInRequest'], request_name => 'serviceConnectConfiguration' );
  has ServiceRegistries => (is => 'ro', isa => 'ArrayRef[Paws::ECS::ServiceRegistry]', traits => ['NameInRequest'], request_name => 'serviceRegistries' );
  has TaskDefinition => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'taskDefinition' );
  has VolumeConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::ECS::ServiceVolumeConfiguration]', traits => ['NameInRequest'], request_name => 'volumeConfigurations' );
  has VpcLatticeConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::ECS::VpcLatticeConfiguration]', traits => ['NameInRequest'], request_name => 'vpcLatticeConfigurations' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateService');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECS::UpdateServiceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::UpdateService - Arguments for method UpdateService on L<Paws::ECS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateService on the
L<Amazon EC2 Container Service|Paws::ECS> service. Use the attributes of this class
as arguments to method UpdateService.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateService.

=head1 SYNOPSIS

    my $ecs = Paws->service('ECS');
 # To change the task definition used in a service
 # This example updates the my-http-service service to use the amazon-ecs-sample
 # task definition.
    my $UpdateServiceResponse = $ecs->UpdateService(
      'Service'        => 'my-http-service',
      'TaskDefinition' => 'amazon-ecs-sample'
    );

  # To change the number of tasks in a service
  # This example updates the desired count of the my-http-service service to 10.
    my $UpdateServiceResponse = $ecs->UpdateService(
      'DesiredCount' => 10,
      'Service'      => 'my-http-service'
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecs/UpdateService>

=head1 ATTRIBUTES


=head2 AvailabilityZoneRebalancing => Str

Indicates whether to use Availability Zone rebalancing for the service.

For more information, see Balancing an Amazon ECS service across
Availability Zones
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-rebalancing.html)
in the I< I<Amazon Elastic Container Service Developer Guide> >.

Valid values are: C<"ENABLED">, C<"DISABLED">

=head2 CapacityProviderStrategy => ArrayRef[L<Paws::ECS::CapacityProviderStrategyItem>]

The capacity provider strategy to update the service to use.

if the service uses the default capacity provider strategy for the
cluster, the service can be updated to use one or more capacity
providers as opposed to the default capacity provider strategy.
However, when a service is using a capacity provider strategy that's
not the default capacity provider strategy, the service can't be
updated to use the cluster's default capacity provider strategy.

A capacity provider strategy consists of one or more capacity providers
along with the C<base> and C<weight> to assign to them. A capacity
provider must be associated with the cluster to be used in a capacity
provider strategy. The PutClusterCapacityProviders
(https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_PutClusterCapacityProviders.html)
API is used to associate a capacity provider with a cluster. Only
capacity providers with an C<ACTIVE> or C<UPDATING> status can be used.

If specifying a capacity provider that uses an Auto Scaling group, the
capacity provider must already be created. New capacity providers can
be created with the CreateClusterCapacityProvider
(https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateClusterCapacityProvider.html)
API operation.

To use a Fargate capacity provider, specify either the C<FARGATE> or
C<FARGATE_SPOT> capacity providers. The Fargate capacity providers are
available to all accounts and only need to be associated with a cluster
to be used.

The PutClusterCapacityProviders
(https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_PutClusterCapacityProviders.html)API
operation is used to update the list of available capacity providers
for a cluster after the cluster is created.



=head2 Cluster => Str

The short name or full Amazon Resource Name (ARN) of the cluster that
your service runs on. If you do not specify a cluster, the default
cluster is assumed.



=head2 DeploymentConfiguration => L<Paws::ECS::DeploymentConfiguration>

Optional deployment parameters that control how many tasks run during
the deployment and the ordering of stopping and starting tasks.



=head2 DesiredCount => Int

The number of instantiations of the task to place and keep running in
your service.



=head2 EnableECSManagedTags => Bool

Determines whether to turn on Amazon ECS managed tags for the tasks in
the service. For more information, see Tagging Your Amazon ECS
Resources
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html)
in the I<Amazon Elastic Container Service Developer Guide>.

Only tasks launched after the update will reflect the update. To update
the tags on all tasks, set C<forceNewDeployment> to C<true>, so that
Amazon ECS starts new tasks with the updated tags.



=head2 EnableExecuteCommand => Bool

If C<true>, this enables execute command functionality on all task
containers.

If you do not want to override the value that was set when the service
was created, you can set this to C<null> when performing this action.



=head2 ForceNewDeployment => Bool

Determines whether to force a new deployment of the service. By
default, deployments aren't forced. You can use this option to start a
new deployment with no service definition changes. For example, you can
update a service's tasks to use a newer Docker image with the same
image/tag combination (C<my_image:latest>) or to roll Fargate tasks
onto a newer platform version.



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



=head2 LoadBalancers => ArrayRef[L<Paws::ECS::LoadBalancer>]

A list of Elastic Load Balancing load balancer objects. It contains the
load balancer name, the container name, and the container port to
access from the load balancer. The container name is as it appears in a
container definition.

When you add, update, or remove a load balancer configuration, Amazon
ECS starts new tasks with the updated Elastic Load Balancing
configuration, and then stops the old tasks when the new tasks are
running.

For services that use rolling updates, you can add, update, or remove
Elastic Load Balancing target groups. You can update from a single
target group to multiple target groups and from multiple target groups
to a single target group.

For services that use blue/green deployments, you can update Elastic
Load Balancing target groups by using C< CreateDeployment
(https://docs.aws.amazon.com/codedeploy/latest/APIReference/API_CreateDeployment.html)
> through CodeDeploy. Note that multiple target groups are not
supported for blue/green deployments. For more information see Register
multiple target groups with a service
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/register-multiple-targetgroups.html)
in the I<Amazon Elastic Container Service Developer Guide>.

For services that use the external deployment controller, you can add,
update, or remove load balancers by using CreateTaskSet
(https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateTaskSet.html).
Note that multiple target groups are not supported for external
deployments. For more information see Register multiple target groups
with a service
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/register-multiple-targetgroups.html)
in the I<Amazon Elastic Container Service Developer Guide>.

You can remove existing C<loadBalancers> by passing an empty list.



=head2 NetworkConfiguration => L<Paws::ECS::NetworkConfiguration>

An object representing the network configuration for the service.



=head2 PlacementConstraints => ArrayRef[L<Paws::ECS::PlacementConstraint>]

An array of task placement constraint objects to update the service to
use. If no value is specified, the existing placement constraints for
the service will remain unchanged. If this value is specified, it will
override any existing placement constraints defined for the service. To
remove all existing placement constraints, specify an empty array.

You can specify a maximum of 10 constraints for each task. This limit
includes constraints in the task definition and those specified at
runtime.



=head2 PlacementStrategy => ArrayRef[L<Paws::ECS::PlacementStrategy>]

The task placement strategy objects to update the service to use. If no
value is specified, the existing placement strategy for the service
will remain unchanged. If this value is specified, it will override the
existing placement strategy defined for the service. To remove an
existing placement strategy, specify an empty object.

You can specify a maximum of five strategy rules for each service.



=head2 PlatformVersion => Str

The platform version that your tasks in the service run on. A platform
version is only specified for tasks using the Fargate launch type. If a
platform version is not specified, the C<LATEST> platform version is
used. For more information, see Fargate Platform Versions
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html)
in the I<Amazon Elastic Container Service Developer Guide>.



=head2 PropagateTags => Str

Determines whether to propagate the tags from the task definition or
the service to the task. If no value is specified, the tags aren't
propagated.

Only tasks launched after the update will reflect the update. To update
the tags on all tasks, set C<forceNewDeployment> to C<true>, so that
Amazon ECS starts new tasks with the updated tags.

Valid values are: C<"TASK_DEFINITION">, C<"SERVICE">, C<"NONE">

=head2 B<REQUIRED> Service => Str

The name of the service to update.



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



=head2 ServiceRegistries => ArrayRef[L<Paws::ECS::ServiceRegistry>]

The details for the service discovery registries to assign to this
service. For more information, see Service Discovery
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-discovery.html).

When you add, update, or remove the service registries configuration,
Amazon ECS starts new tasks with the updated service registries
configuration, and then stops the old tasks when the new tasks are
running.

You can remove existing C<serviceRegistries> by passing an empty list.



=head2 TaskDefinition => Str

The C<family> and C<revision> (C<family:revision>) or full ARN of the
task definition to run in your service. If a C<revision> is not
specified, the latest C<ACTIVE> revision is used. If you modify the
task definition with C<UpdateService>, Amazon ECS spawns a task with
the new version of the task definition and then stops an old task after
the new version is running.



=head2 VolumeConfigurations => ArrayRef[L<Paws::ECS::ServiceVolumeConfiguration>]

The details of the volume that was C<configuredAtLaunch>. You can
configure the size, volumeType, IOPS, throughput, snapshot and
encryption in ServiceManagedEBSVolumeConfiguration
(https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ServiceManagedEBSVolumeConfiguration.html).
The C<name> of the volume must match the C<name> from the task
definition. If set to null, no new deployment is triggered. Otherwise,
if this configuration differs from the existing one, it triggers a new
deployment.



=head2 VpcLatticeConfigurations => ArrayRef[L<Paws::ECS::VpcLatticeConfiguration>]

An object representing the VPC Lattice configuration for the service
being updated.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateService in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

