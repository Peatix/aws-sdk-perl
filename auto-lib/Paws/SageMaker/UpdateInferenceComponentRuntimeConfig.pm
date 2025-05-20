
package Paws::SageMaker::UpdateInferenceComponentRuntimeConfig;
  use Moose;
  has DesiredRuntimeConfig => (is => 'ro', isa => 'Paws::SageMaker::InferenceComponentRuntimeConfig', required => 1);
  has InferenceComponentName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateInferenceComponentRuntimeConfig');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::UpdateInferenceComponentRuntimeConfigOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::UpdateInferenceComponentRuntimeConfig - Arguments for method UpdateInferenceComponentRuntimeConfig on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateInferenceComponentRuntimeConfig on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method UpdateInferenceComponentRuntimeConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateInferenceComponentRuntimeConfig.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $UpdateInferenceComponentRuntimeConfigOutput =
      $api . sagemaker->UpdateInferenceComponentRuntimeConfig(
      DesiredRuntimeConfig => {
        CopyCount => 1,

      },
      InferenceComponentName => 'MyInferenceComponentName',

      );

    # Results:
    my $InferenceComponentArn =
      $UpdateInferenceComponentRuntimeConfigOutput->InferenceComponentArn;

# Returns a L<Paws::SageMaker::UpdateInferenceComponentRuntimeConfigOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/UpdateInferenceComponentRuntimeConfig>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DesiredRuntimeConfig => L<Paws::SageMaker::InferenceComponentRuntimeConfig>

Runtime settings for a model that is deployed with an inference
component.



=head2 B<REQUIRED> InferenceComponentName => Str

The name of the inference component to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateInferenceComponentRuntimeConfig in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

