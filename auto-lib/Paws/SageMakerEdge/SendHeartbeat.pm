
package Paws::SageMakerEdge::SendHeartbeat;
  use Moose;
  has AgentMetrics => (is => 'ro', isa => 'ArrayRef[Paws::SageMakerEdge::EdgeMetric]');
  has AgentVersion => (is => 'ro', isa => 'Str', required => 1);
  has DeploymentResult => (is => 'ro', isa => 'Paws::SageMakerEdge::DeploymentResult');
  has DeviceFleetName => (is => 'ro', isa => 'Str', required => 1);
  has DeviceName => (is => 'ro', isa => 'Str', required => 1);
  has Models => (is => 'ro', isa => 'ArrayRef[Paws::SageMakerEdge::Model]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SendHeartbeat');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/SendHeartbeat');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerEdge::SendHeartbeat - Arguments for method SendHeartbeat on L<Paws::SageMakerEdge>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SendHeartbeat on the
L<Amazon Sagemaker Edge Manager|Paws::SageMakerEdge> service. Use the attributes of this class
as arguments to method SendHeartbeat.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SendHeartbeat.

=head1 SYNOPSIS

    my $edge.sagemaker = Paws->service('SageMakerEdge');
    $edge . sagemaker->SendHeartbeat(
      AgentVersion    => 'MyVersion',
      DeviceFleetName => 'MyDeviceFleetName',
      DeviceName      => 'MyDeviceName',
      AgentMetrics    => [
        {
          Dimension  => 'MyDimension',            # min: 1, max: 1000; OPTIONAL
          MetricName => 'MyMetric',               # min: 4, max: 100; OPTIONAL
          Timestamp  => '1970-01-01T01:00:00',    # OPTIONAL
          Value      => 1,                        # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      DeploymentResult => {
        DeploymentEndTime => '1970-01-01T01:00:00',    # OPTIONAL
        DeploymentModels  => [
          {
            DesiredState => 'DEPLOY',       # values: DEPLOY, UNDEPLOY; OPTIONAL
            ModelHandle  => 'MyEntityName', # min: 1, max: 63; OPTIONAL
            ModelName    => 'MyModelName',  # min: 4, max: 255; OPTIONAL
            ModelVersion => 'MyVersion',    # min: 1, max: 64
            RollbackFailureReason => 'MyString',    # OPTIONAL
            State        => 'DEPLOY',      # values: DEPLOY, UNDEPLOY; OPTIONAL
            Status       => 'SUCCESS',     # values: SUCCESS, FAIL; OPTIONAL
            StatusReason => 'MyString',    # OPTIONAL
          },
          ...
        ],    # OPTIONAL
        DeploymentName          => 'MyEntityName',   # min: 1, max: 63; OPTIONAL
        DeploymentStartTime     => '1970-01-01T01:00:00',    # OPTIONAL
        DeploymentStatus        => 'MyEntityName',   # min: 1, max: 63; OPTIONAL
        DeploymentStatusMessage => 'MyString',       # OPTIONAL
      },    # OPTIONAL
      Models => [
        {
          LatestInference  => '1970-01-01T01:00:00',    # OPTIONAL
          LatestSampleTime => '1970-01-01T01:00:00',    # OPTIONAL
          ModelMetrics     => [
            {
              Dimension  => 'MyDimension',         # min: 1, max: 1000; OPTIONAL
              MetricName => 'MyMetric',            # min: 4, max: 100; OPTIONAL
              Timestamp  => '1970-01-01T01:00:00', # OPTIONAL
              Value      => 1,                     # OPTIONAL
            },
            ...
          ],
          ModelName    => 'MyModelName',    # min: 4, max: 255; OPTIONAL
          ModelVersion => 'MyVersion',      # min: 1, max: 64
        },
        ...
      ],    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/edge.sagemaker/SendHeartbeat>

=head1 ATTRIBUTES


=head2 AgentMetrics => ArrayRef[L<Paws::SageMakerEdge::EdgeMetric>]

For internal use. Returns a list of SageMaker Edge Manager agent
operating metrics.



=head2 B<REQUIRED> AgentVersion => Str

Returns the version of the agent.



=head2 DeploymentResult => L<Paws::SageMakerEdge::DeploymentResult>

Returns the result of a deployment on the device.



=head2 B<REQUIRED> DeviceFleetName => Str

The name of the fleet that the device belongs to.



=head2 B<REQUIRED> DeviceName => Str

The unique name of the device.



=head2 Models => ArrayRef[L<Paws::SageMakerEdge::Model>]

Returns a list of models deployed on the the device.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SendHeartbeat in L<Paws::SageMakerEdge>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

