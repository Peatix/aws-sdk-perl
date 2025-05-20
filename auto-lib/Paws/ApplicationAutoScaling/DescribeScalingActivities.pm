
package Paws::ApplicationAutoScaling::DescribeScalingActivities;
  use Moose;
  has IncludeNotScaledActivities => (is => 'ro', isa => 'Bool');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceId => (is => 'ro', isa => 'Str');
  has ScalableDimension => (is => 'ro', isa => 'Str');
  has ServiceNamespace => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeScalingActivities');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationAutoScaling::DescribeScalingActivitiesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationAutoScaling::DescribeScalingActivities - Arguments for method DescribeScalingActivities on L<Paws::ApplicationAutoScaling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeScalingActivities on the
L<Application Auto Scaling|Paws::ApplicationAutoScaling> service. Use the attributes of this class
as arguments to method DescribeScalingActivities.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeScalingActivities.

=head1 SYNOPSIS

    my $application-autoscaling = Paws->service('ApplicationAutoScaling');
# To describe scaling activities for a scalable target
# This example describes the scaling activities for an Amazon ECS service called
# web-app that is running in the default cluster.
    my $DescribeScalingActivitiesResponse =
      $application -autoscaling->DescribeScalingActivities(
      'ResourceId'        => 'service/default/web-app',
      'ScalableDimension' => 'ecs:service:DesiredCount',
      'ServiceNamespace'  => 'ecs'
      );

    # Results:
    my $ScalingActivities =
      $DescribeScalingActivitiesResponse->ScalingActivities;

# Returns a L<Paws::ApplicationAutoScaling::DescribeScalingActivitiesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/application-autoscaling/DescribeScalingActivities>

=head1 ATTRIBUTES


=head2 IncludeNotScaledActivities => Bool

Specifies whether to include activities that aren't scaled (I<not
scaled activities>) in the response. Not scaled activities are
activities that aren't completed or started for various reasons, such
as preventing infinite scaling loops. For help interpreting the not
scaled reason details in the response, see Scaling activities for
Application Auto Scaling
(https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-scaling-activities.html).



=head2 MaxResults => Int

The maximum number of scalable targets. This value can be between 1 and
50. The default value is 50.

If this parameter is used, the operation returns up to C<MaxResults>
results at a time, along with a C<NextToken> value. To get the next set
of results, include the C<NextToken> value in a subsequent call. If
this parameter is not used, the operation returns up to 50 results and
a C<NextToken> value, if applicable.



=head2 NextToken => Str

The token for the next set of results.



=head2 ResourceId => Str

The identifier of the resource associated with the scaling activity.
This string consists of the resource type and unique identifier.

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




=head2 ScalableDimension => Str

The scalable dimension. This string consists of the service namespace,
resource type, and scaling property. If you specify a scalable
dimension, you must also specify a resource ID.

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


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeScalingActivities in L<Paws::ApplicationAutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

