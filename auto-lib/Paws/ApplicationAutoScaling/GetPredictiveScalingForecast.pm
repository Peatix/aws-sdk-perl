
package Paws::ApplicationAutoScaling::GetPredictiveScalingForecast;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);
  has ScalableDimension => (is => 'ro', isa => 'Str', required => 1);
  has ServiceNamespace => (is => 'ro', isa => 'Str', required => 1);
  has StartTime => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetPredictiveScalingForecast');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationAutoScaling::GetPredictiveScalingForecastResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationAutoScaling::GetPredictiveScalingForecast - Arguments for method GetPredictiveScalingForecast on L<Paws::ApplicationAutoScaling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetPredictiveScalingForecast on the
L<Application Auto Scaling|Paws::ApplicationAutoScaling> service. Use the attributes of this class
as arguments to method GetPredictiveScalingForecast.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetPredictiveScalingForecast.

=head1 SYNOPSIS

    my $application-autoscaling = Paws->service('ApplicationAutoScaling');
    my $GetPredictiveScalingForecastResponse =
      $application -autoscaling->GetPredictiveScalingForecast(
      EndTime           => '1970-01-01T01:00:00',
      PolicyName        => 'MyPolicyName',
      ResourceId        => 'MyResourceIdMaxLen1600',
      ScalableDimension => 'ecs:service:DesiredCount',
      ServiceNamespace  => 'ecs',
      StartTime         => '1970-01-01T01:00:00',

      );

    # Results:
    my $CapacityForecast =
      $GetPredictiveScalingForecastResponse->CapacityForecast;
    my $LoadForecast = $GetPredictiveScalingForecastResponse->LoadForecast;
    my $UpdateTime   = $GetPredictiveScalingForecastResponse->UpdateTime;

# Returns a L<Paws::ApplicationAutoScaling::GetPredictiveScalingForecastResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/application-autoscaling/GetPredictiveScalingForecast>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndTime => Str

The exclusive end time of the time range for the forecast data to get.
The maximum time duration between the start and end time is 30 days.



=head2 B<REQUIRED> PolicyName => Str

The name of the policy.



=head2 B<REQUIRED> ResourceId => Str

The identifier of the resource.



=head2 B<REQUIRED> ScalableDimension => Str

The scalable dimension.

Valid values are: C<"ecs:service:DesiredCount">, C<"ec2:spot-fleet-request:TargetCapacity">, C<"elasticmapreduce:instancegroup:InstanceCount">, C<"appstream:fleet:DesiredCapacity">, C<"dynamodb:table:ReadCapacityUnits">, C<"dynamodb:table:WriteCapacityUnits">, C<"dynamodb:index:ReadCapacityUnits">, C<"dynamodb:index:WriteCapacityUnits">, C<"rds:cluster:ReadReplicaCount">, C<"sagemaker:variant:DesiredInstanceCount">, C<"custom-resource:ResourceType:Property">, C<"comprehend:document-classifier-endpoint:DesiredInferenceUnits">, C<"comprehend:entity-recognizer-endpoint:DesiredInferenceUnits">, C<"lambda:function:ProvisionedConcurrency">, C<"cassandra:table:ReadCapacityUnits">, C<"cassandra:table:WriteCapacityUnits">, C<"kafka:broker-storage:VolumeSize">, C<"elasticache:cache-cluster:Nodes">, C<"elasticache:replication-group:NodeGroups">, C<"elasticache:replication-group:Replicas">, C<"neptune:cluster:ReadReplicaCount">, C<"sagemaker:variant:DesiredProvisionedConcurrency">, C<"sagemaker:inference-component:DesiredCopyCount">, C<"workspaces:workspacespool:DesiredUserSessions">

=head2 B<REQUIRED> ServiceNamespace => Str

The namespace of the Amazon Web Services service that provides the
resource. For a resource provided by your own application or service,
use C<custom-resource> instead.

Valid values are: C<"ecs">, C<"elasticmapreduce">, C<"ec2">, C<"appstream">, C<"dynamodb">, C<"rds">, C<"sagemaker">, C<"custom-resource">, C<"comprehend">, C<"lambda">, C<"cassandra">, C<"kafka">, C<"elasticache">, C<"neptune">, C<"workspaces">

=head2 B<REQUIRED> StartTime => Str

The inclusive start time of the time range for the forecast data to
get. At most, the date and time can be one year before the current date
and time




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetPredictiveScalingForecast in L<Paws::ApplicationAutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

