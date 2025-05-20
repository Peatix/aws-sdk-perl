
package Paws::SageMaker::CreateInferenceComponent;
  use Moose;
  has EndpointName => (is => 'ro', isa => 'Str', required => 1);
  has InferenceComponentName => (is => 'ro', isa => 'Str', required => 1);
  has RuntimeConfig => (is => 'ro', isa => 'Paws::SageMaker::InferenceComponentRuntimeConfig');
  has Specification => (is => 'ro', isa => 'Paws::SageMaker::InferenceComponentSpecification', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');
  has VariantName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateInferenceComponent');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreateInferenceComponentOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateInferenceComponent - Arguments for method CreateInferenceComponent on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateInferenceComponent on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreateInferenceComponent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateInferenceComponent.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $CreateInferenceComponentOutput =
      $api . sagemaker->CreateInferenceComponent(
      EndpointName           => 'MyEndpointName',
      InferenceComponentName => 'MyInferenceComponentName',
      Specification          => {
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
      },
      RuntimeConfig => {
        CopyCount => 1,

      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      VariantName => 'MyVariantName',    # OPTIONAL
      );

    # Results:
    my $InferenceComponentArn =
      $CreateInferenceComponentOutput->InferenceComponentArn;

    # Returns a L<Paws::SageMaker::CreateInferenceComponentOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreateInferenceComponent>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndpointName => Str

The name of an existing endpoint where you host the inference
component.



=head2 B<REQUIRED> InferenceComponentName => Str

A unique name to assign to the inference component.



=head2 RuntimeConfig => L<Paws::SageMaker::InferenceComponentRuntimeConfig>

Runtime settings for a model that is deployed with an inference
component.



=head2 B<REQUIRED> Specification => L<Paws::SageMaker::InferenceComponentSpecification>

Details about the resources to deploy with this inference component,
including the model, container, and compute resources.



=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

A list of key-value pairs associated with the model. For more
information, see Tagging Amazon Web Services resources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) in the
I<Amazon Web Services General Reference>.



=head2 VariantName => Str

The name of an existing production variant where you host the inference
component.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateInferenceComponent in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

