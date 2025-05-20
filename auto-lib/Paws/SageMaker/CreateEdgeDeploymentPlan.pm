
package Paws::SageMaker::CreateEdgeDeploymentPlan;
  use Moose;
  has DeviceFleetName => (is => 'ro', isa => 'Str', required => 1);
  has EdgeDeploymentPlanName => (is => 'ro', isa => 'Str', required => 1);
  has ModelConfigs => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::EdgeDeploymentModelConfig]', required => 1);
  has Stages => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::DeploymentStage]');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEdgeDeploymentPlan');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreateEdgeDeploymentPlanResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateEdgeDeploymentPlan - Arguments for method CreateEdgeDeploymentPlan on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateEdgeDeploymentPlan on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreateEdgeDeploymentPlan.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateEdgeDeploymentPlan.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $CreateEdgeDeploymentPlanResponse =
      $api . sagemaker->CreateEdgeDeploymentPlan(
      DeviceFleetName        => 'MyEntityName',
      EdgeDeploymentPlanName => 'MyEntityName',
      ModelConfigs           => [
        {
          EdgePackagingJobName => 'MyEntityName',    # min: 1, max: 63
          ModelHandle          => 'MyEntityName',    # min: 1, max: 63

        },
        ...
      ],
      Stages => [
        {
          DeviceSelectionConfig => {
            DeviceSubsetType =>
              'PERCENTAGE',    # values: PERCENTAGE, SELECTION, NAMECONTAINS
            DeviceNameContains => 'MyDeviceName',    # min: 1, max: 63; OPTIONAL
            DeviceNames        => [
              'MyDeviceName', ...                    # min: 1, max: 63; OPTIONAL
            ],    # OPTIONAL
            Percentage => 1,    # max: 100; OPTIONAL
          },
          StageName        => 'MyEntityName',    # min: 1, max: 63
          DeploymentConfig => {
            FailureHandlingPolicy =>
              'ROLLBACK_ON_FAILURE',   # values: ROLLBACK_ON_FAILURE, DO_NOTHING

          },    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $EdgeDeploymentPlanArn =
      $CreateEdgeDeploymentPlanResponse->EdgeDeploymentPlanArn;

    # Returns a L<Paws::SageMaker::CreateEdgeDeploymentPlanResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreateEdgeDeploymentPlan>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeviceFleetName => Str

The device fleet used for this edge deployment plan.



=head2 B<REQUIRED> EdgeDeploymentPlanName => Str

The name of the edge deployment plan.



=head2 B<REQUIRED> ModelConfigs => ArrayRef[L<Paws::SageMaker::EdgeDeploymentModelConfig>]

List of models associated with the edge deployment plan.



=head2 Stages => ArrayRef[L<Paws::SageMaker::DeploymentStage>]

List of stages of the edge deployment plan. The number of stages is
limited to 10 per deployment.



=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

List of tags with which to tag the edge deployment plan.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateEdgeDeploymentPlan in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

