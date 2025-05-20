
package Paws::ApplicationAutoScaling::RegisterScalableTarget;
  use Moose;
  has MaxCapacity => (is => 'ro', isa => 'Int');
  has MinCapacity => (is => 'ro', isa => 'Int');
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);
  has RoleARN => (is => 'ro', isa => 'Str');
  has ScalableDimension => (is => 'ro', isa => 'Str', required => 1);
  has ServiceNamespace => (is => 'ro', isa => 'Str', required => 1);
  has SuspendedState => (is => 'ro', isa => 'Paws::ApplicationAutoScaling::SuspendedState');
  has Tags => (is => 'ro', isa => 'Paws::ApplicationAutoScaling::TagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterScalableTarget');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationAutoScaling::RegisterScalableTargetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationAutoScaling::RegisterScalableTarget - Arguments for method RegisterScalableTarget on L<Paws::ApplicationAutoScaling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterScalableTarget on the
L<Application Auto Scaling|Paws::ApplicationAutoScaling> service. Use the attributes of this class
as arguments to method RegisterScalableTarget.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterScalableTarget.

=head1 SYNOPSIS

    my $application-autoscaling = Paws->service('ApplicationAutoScaling');
  # To register an ECS service as a scalable target
  # This example registers a scalable target from an Amazon ECS service called
  # web-app that is running on the default cluster, with a minimum desired count
  # of 1 task and a maximum desired count of 10 tasks.
    my $RegisterScalableTargetResponse =
      $application -autoscaling->RegisterScalableTarget(
      'MaxCapacity'       => 10,
      'MinCapacity'       => 1,
      'ResourceId'        => 'service/default/web-app',
      'ScalableDimension' => 'ecs:service:DesiredCount',
      'ServiceNamespace'  => 'ecs'
      );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/application-autoscaling/RegisterScalableTarget>

=head1 ATTRIBUTES


=head2 MaxCapacity => Int

The maximum value that you plan to scale out to. When a scaling policy
is in effect, Application Auto Scaling can scale out (expand) as needed
to the maximum capacity limit in response to changing demand. This
property is required when registering a new scalable target.

Although you can specify a large maximum capacity, note that service
quotas might impose lower limits. Each service has its own default
quotas for the maximum capacity of the resource. If you want to specify
a higher limit, you can request an increase. For more information,
consult the documentation for that service. For information about the
default quotas for each service, see Service endpoints and quotas
(https://docs.aws.amazon.com/general/latest/gr/aws-service-information.html)
in the I<Amazon Web Services General Reference>.



=head2 MinCapacity => Int

The minimum value that you plan to scale in to. When a scaling policy
is in effect, Application Auto Scaling can scale in (contract) as
needed to the minimum capacity limit in response to changing demand.
This property is required when registering a new scalable target.

For the following resources, the minimum value allowed is 0.

=over

=item *

AppStream 2.0 fleets

=item *

Aurora DB clusters

=item *

ECS services

=item *

EMR clusters

=item *

Lambda provisioned concurrency

=item *

SageMaker endpoint variants

=item *

SageMaker inference components

=item *

SageMaker serverless endpoint provisioned concurrency

=item *

Spot Fleets

=item *

custom resources

=back

It's strongly recommended that you specify a value greater than 0. A
value greater than 0 means that data points are continuously reported
to CloudWatch that scaling policies can use to scale on a metric like
average CPU utilization.

For all other resources, the minimum allowed value depends on the type
of resource that you are using. If you provide a value that is lower
than what a resource can accept, an error occurs. In which case, the
error message will provide the minimum value that the resource can
accept.



=head2 B<REQUIRED> ResourceId => Str

The identifier of the resource that is associated with the scalable
target. This string consists of the resource type and unique
identifier.

=over

=item *

ECS service - The resource type is C<service> and the unique identifier
is the cluster name and service name. Example:
C<service/my-cluster/my-service>.

=item *

Spot Fleet - The resource type is C<spot-fleet-request> and the unique
identifier is the Spot Fleet request ID. Example:
C<spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE>.

=item *

EMR cluster - The resource type is C<instancegroup> and the unique
identifier is the cluster ID and instance group ID. Example:
C<instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0>.

=item *

AppStream 2.0 fleet - The resource type is C<fleet> and the unique
identifier is the fleet name. Example: C<fleet/sample-fleet>.

=item *

DynamoDB table - The resource type is C<table> and the unique
identifier is the table name. Example: C<table/my-table>.

=item *

DynamoDB global secondary index - The resource type is C<index> and the
unique identifier is the index name. Example:
C<table/my-table/index/my-table-index>.

=item *

Aurora DB cluster - The resource type is C<cluster> and the unique
identifier is the cluster name. Example: C<cluster:my-db-cluster>.

=item *

SageMaker endpoint variant - The resource type is C<variant> and the
unique identifier is the resource ID. Example:
C<endpoint/my-end-point/variant/KMeansClustering>.

=item *

Custom resources are not supported with a resource type. This parameter
must specify the C<OutputValue> from the CloudFormation template stack
used to access the resources. The unique identifier is defined by the
service provider. More information is available in our GitHub
repository (https://github.com/aws/aws-auto-scaling-custom-resource).

=item *

Amazon Comprehend document classification endpoint - The resource type
and unique identifier are specified using the endpoint ARN. Example:
C<arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE>.

=item *

Amazon Comprehend entity recognizer endpoint - The resource type and
unique identifier are specified using the endpoint ARN. Example:
C<arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE>.

=item *

Lambda provisioned concurrency - The resource type is C<function> and
the unique identifier is the function name with a function version or
alias name suffix that is not C<$LATEST>. Example:
C<function:my-function:prod> or C<function:my-function:1>.

=item *

Amazon Keyspaces table - The resource type is C<table> and the unique
identifier is the table name. Example:
C<keyspace/mykeyspace/table/mytable>.

=item *

Amazon MSK cluster - The resource type and unique identifier are
specified using the cluster ARN. Example:
C<arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5>.

=item *

Amazon ElastiCache replication group - The resource type is
C<replication-group> and the unique identifier is the replication group
name. Example: C<replication-group/mycluster>.

=item *

Amazon ElastiCache cache cluster - The resource type is
C<cache-cluster> and the unique identifier is the cache cluster name.
Example: C<cache-cluster/mycluster>.

=item *

Neptune cluster - The resource type is C<cluster> and the unique
identifier is the cluster name. Example: C<cluster:mycluster>.

=item *

SageMaker serverless endpoint - The resource type is C<variant> and the
unique identifier is the resource ID. Example:
C<endpoint/my-end-point/variant/KMeansClustering>.

=item *

SageMaker inference component - The resource type is
C<inference-component> and the unique identifier is the resource ID.
Example: C<inference-component/my-inference-component>.

=item *

Pool of WorkSpaces - The resource type is C<workspacespool> and the
unique identifier is the pool ID. Example:
C<workspacespool/wspool-123456>.

=back




=head2 RoleARN => Str

This parameter is required for services that do not support
service-linked roles (such as Amazon EMR), and it must specify the ARN
of an IAM role that allows Application Auto Scaling to modify the
scalable target on your behalf.

If the service supports service-linked roles, Application Auto Scaling
uses a service-linked role, which it creates if it does not yet exist.
For more information, see How Application Auto Scaling works with IAM
(https://docs.aws.amazon.com/autoscaling/application/userguide/security_iam_service-with-iam.html).



=head2 B<REQUIRED> ScalableDimension => Str

The scalable dimension associated with the scalable target. This string
consists of the service namespace, resource type, and scaling property.

=over

=item *

C<ecs:service:DesiredCount> - The task count of an ECS service.

=item *

C<elasticmapreduce:instancegroup:InstanceCount> - The instance count of
an EMR Instance Group.

=item *

C<ec2:spot-fleet-request:TargetCapacity> - The target capacity of a
Spot Fleet.

=item *

C<appstream:fleet:DesiredCapacity> - The capacity of an AppStream 2.0
fleet.

=item *

C<dynamodb:table:ReadCapacityUnits> - The provisioned read capacity for
a DynamoDB table.

=item *

C<dynamodb:table:WriteCapacityUnits> - The provisioned write capacity
for a DynamoDB table.

=item *

C<dynamodb:index:ReadCapacityUnits> - The provisioned read capacity for
a DynamoDB global secondary index.

=item *

C<dynamodb:index:WriteCapacityUnits> - The provisioned write capacity
for a DynamoDB global secondary index.

=item *

C<rds:cluster:ReadReplicaCount> - The count of Aurora Replicas in an
Aurora DB cluster. Available for Aurora MySQL-compatible edition and
Aurora PostgreSQL-compatible edition.

=item *

C<sagemaker:variant:DesiredInstanceCount> - The number of EC2 instances
for a SageMaker model endpoint variant.

=item *

C<custom-resource:ResourceType:Property> - The scalable dimension for a
custom resource provided by your own application or service.

=item *

C<comprehend:document-classifier-endpoint:DesiredInferenceUnits> - The
number of inference units for an Amazon Comprehend document
classification endpoint.

=item *

C<comprehend:entity-recognizer-endpoint:DesiredInferenceUnits> - The
number of inference units for an Amazon Comprehend entity recognizer
endpoint.

=item *

C<lambda:function:ProvisionedConcurrency> - The provisioned concurrency
for a Lambda function.

=item *

C<cassandra:table:ReadCapacityUnits> - The provisioned read capacity
for an Amazon Keyspaces table.

=item *

C<cassandra:table:WriteCapacityUnits> - The provisioned write capacity
for an Amazon Keyspaces table.

=item *

C<kafka:broker-storage:VolumeSize> - The provisioned volume size (in
GiB) for brokers in an Amazon MSK cluster.

=item *

C<elasticache:cache-cluster:Nodes> - The number of nodes for an Amazon
ElastiCache cache cluster.

=item *

C<elasticache:replication-group:NodeGroups> - The number of node groups
for an Amazon ElastiCache replication group.

=item *

C<elasticache:replication-group:Replicas> - The number of replicas per
node group for an Amazon ElastiCache replication group.

=item *

C<neptune:cluster:ReadReplicaCount> - The count of read replicas in an
Amazon Neptune DB cluster.

=item *

C<sagemaker:variant:DesiredProvisionedConcurrency> - The provisioned
concurrency for a SageMaker serverless endpoint.

=item *

C<sagemaker:inference-component:DesiredCopyCount> - The number of
copies across an endpoint for a SageMaker inference component.

=item *

C<workspaces:workspacespool:DesiredUserSessions> - The number of user
sessions for the WorkSpaces in the pool.

=back


Valid values are: C<"ecs:service:DesiredCount">, C<"ec2:spot-fleet-request:TargetCapacity">, C<"elasticmapreduce:instancegroup:InstanceCount">, C<"appstream:fleet:DesiredCapacity">, C<"dynamodb:table:ReadCapacityUnits">, C<"dynamodb:table:WriteCapacityUnits">, C<"dynamodb:index:ReadCapacityUnits">, C<"dynamodb:index:WriteCapacityUnits">, C<"rds:cluster:ReadReplicaCount">, C<"sagemaker:variant:DesiredInstanceCount">, C<"custom-resource:ResourceType:Property">, C<"comprehend:document-classifier-endpoint:DesiredInferenceUnits">, C<"comprehend:entity-recognizer-endpoint:DesiredInferenceUnits">, C<"lambda:function:ProvisionedConcurrency">, C<"cassandra:table:ReadCapacityUnits">, C<"cassandra:table:WriteCapacityUnits">, C<"kafka:broker-storage:VolumeSize">, C<"elasticache:cache-cluster:Nodes">, C<"elasticache:replication-group:NodeGroups">, C<"elasticache:replication-group:Replicas">, C<"neptune:cluster:ReadReplicaCount">, C<"sagemaker:variant:DesiredProvisionedConcurrency">, C<"sagemaker:inference-component:DesiredCopyCount">, C<"workspaces:workspacespool:DesiredUserSessions">

=head2 B<REQUIRED> ServiceNamespace => Str

The namespace of the Amazon Web Services service that provides the
resource. For a resource provided by your own application or service,
use C<custom-resource> instead.

Valid values are: C<"ecs">, C<"elasticmapreduce">, C<"ec2">, C<"appstream">, C<"dynamodb">, C<"rds">, C<"sagemaker">, C<"custom-resource">, C<"comprehend">, C<"lambda">, C<"cassandra">, C<"kafka">, C<"elasticache">, C<"neptune">, C<"workspaces">

=head2 SuspendedState => L<Paws::ApplicationAutoScaling::SuspendedState>

An embedded object that contains attributes and attribute values that
are used to suspend and resume automatic scaling. Setting the value of
an attribute to C<true> suspends the specified scaling activities.
Setting it to C<false> (default) resumes the specified scaling
activities.

B<Suspension Outcomes>

=over

=item *

For C<DynamicScalingInSuspended>, while a suspension is in effect, all
scale-in activities that are triggered by a scaling policy are
suspended.

=item *

For C<DynamicScalingOutSuspended>, while a suspension is in effect, all
scale-out activities that are triggered by a scaling policy are
suspended.

=item *

For C<ScheduledScalingSuspended>, while a suspension is in effect, all
scaling activities that involve scheduled actions are suspended.

=back

For more information, see Suspend and resume scaling
(https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-suspend-resume-scaling.html)
in the I<Application Auto Scaling User Guide>.



=head2 Tags => L<Paws::ApplicationAutoScaling::TagMap>

Assigns one or more tags to the scalable target. Use this parameter to
tag the scalable target when it is created. To tag an existing scalable
target, use the TagResource operation.

Each tag consists of a tag key and a tag value. Both the tag key and
the tag value are required. You cannot have more than one tag on a
scalable target with the same tag key.

Use tags to control access to a scalable target. For more information,
see Tagging support for Application Auto Scaling
(https://docs.aws.amazon.com/autoscaling/application/userguide/resource-tagging-support.html)
in the I<Application Auto Scaling User Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterScalableTarget in L<Paws::ApplicationAutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

