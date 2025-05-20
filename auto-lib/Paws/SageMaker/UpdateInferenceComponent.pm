
package Paws::SageMaker::UpdateInferenceComponent;
  use Moose;
  has DeploymentConfig => (is => 'ro', isa => 'Paws::SageMaker::InferenceComponentDeploymentConfig');
  has InferenceComponentName => (is => 'ro', isa => 'Str', required => 1);
  has RuntimeConfig => (is => 'ro', isa => 'Paws::SageMaker::InferenceComponentRuntimeConfig');
  has Specification => (is => 'ro', isa => 'Paws::SageMaker::InferenceComponentSpecification');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateInferenceComponent');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::UpdateInferenceComponentOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::UpdateInferenceComponent - Arguments for method UpdateInferenceComponent on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateInferenceComponent on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method UpdateInferenceComponent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateInferenceComponent.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $UpdateInferenceComponentOutput =
      $api . sagemaker->UpdateInferenceComponent(
      InferenceComponentName => 'MyInferenceComponentName',
      DeploymentConfig       => {
        RollingUpdatePolicy => {
          MaximumBatchSize => {
            Type  => 'COPY_COUNT',    # values: COPY_COUNT, CAPACITY_PERCENT
            Value => 1,               # min: 1

          },
          WaitIntervalInSeconds            => 1,    # max: 3600
          MaximumExecutionTimeoutInSeconds =>
            1,    # min: 600, max: 28800; OPTIONAL
          RollbackMaximumBatchSize => {
            Type  => 'COPY_COUNT',    # values: COPY_COUNT, CAPACITY_PERCENT
            Value => 1,               # min: 1

          },
        },
        AutoRollbackConfiguration => {
          Alarms => [
            {
              AlarmName => 'MyAlarmName',    # min: 1, max: 255; OPTIONAL
            },
            ...
          ],    # min: 1, max: 10; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      RuntimeConfig => {
        CopyCount => 1,

      },    # OPTIONAL
      Specification => {
        BaseInferenceComponentName  => 'MyInferenceComponentName',    # max: 63
        ComputeResourceRequirements => {
          MinMemoryRequiredInMb              => 1,      # min: 128
          MaxMemoryRequiredInMb              => 1,      # min: 128
          NumberOfAcceleratorDevicesRequired => 1.0,    # min: 1; OPTIONAL
          NumberOfCpuCoresRequired           => 1.0,    # min: 0.25; OPTIONAL
        },    # OPTIONAL
        Container => {
          ArtifactUrl => 'MyUrl',    # max: 1024; OPTIONAL
          Environment => {
            'MyEnvironmentKey' =>
              'MyEnvironmentValue',    # key: max: 1024, value: max: 1024
          },    # max: 100; OPTIONAL
          Image => 'MyContainerImage',    # max: 255; OPTIONAL
        },    # OPTIONAL
        ModelName         => 'MyModelName',    # max: 63; OPTIONAL
        StartupParameters => {
          ContainerStartupHealthCheckTimeoutInSeconds =>
            1,                                 # min: 60, max: 3600; OPTIONAL
          ModelDataDownloadTimeoutInSeconds => 1, # min: 60, max: 3600; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      );

    # Results:
    my $InferenceComponentArn =
      $UpdateInferenceComponentOutput->InferenceComponentArn;

    # Returns a L<Paws::SageMaker::UpdateInferenceComponentOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/UpdateInferenceComponent>

=head1 ATTRIBUTES


=head2 DeploymentConfig => L<Paws::SageMaker::InferenceComponentDeploymentConfig>

The deployment configuration for the inference component. The
configuration contains the desired deployment strategy and rollback
settings.



=head2 B<REQUIRED> InferenceComponentName => Str

The name of the inference component.



=head2 RuntimeConfig => L<Paws::SageMaker::InferenceComponentRuntimeConfig>

Runtime settings for a model that is deployed with an inference
component.



=head2 Specification => L<Paws::SageMaker::InferenceComponentSpecification>

Details about the resources to deploy with this inference component,
including the model, container, and compute resources.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateInferenceComponent in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

