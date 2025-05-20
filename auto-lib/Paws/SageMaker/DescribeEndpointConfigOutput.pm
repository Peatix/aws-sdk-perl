
package Paws::SageMaker::DescribeEndpointConfigOutput;
  use Moose;
  has AsyncInferenceConfig => (is => 'ro', isa => 'Paws::SageMaker::AsyncInferenceConfig');
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has DataCaptureConfig => (is => 'ro', isa => 'Paws::SageMaker::DataCaptureConfig');
  has EnableNetworkIsolation => (is => 'ro', isa => 'Bool');
  has EndpointConfigArn => (is => 'ro', isa => 'Str', required => 1);
  has EndpointConfigName => (is => 'ro', isa => 'Str', required => 1);
  has ExecutionRoleArn => (is => 'ro', isa => 'Str');
  has ExplainerConfig => (is => 'ro', isa => 'Paws::SageMaker::ExplainerConfig');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has ProductionVariants => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::ProductionVariant]', required => 1);
  has ShadowProductionVariants => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::ProductionVariant]');
  has VpcConfig => (is => 'ro', isa => 'Paws::SageMaker::VpcConfig');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeEndpointConfigOutput

=head1 ATTRIBUTES


=head2 AsyncInferenceConfig => L<Paws::SageMaker::AsyncInferenceConfig>

Returns the description of an endpoint configuration created using the
C<CreateEndpointConfig>
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateEndpointConfig.html)
API.


=head2 B<REQUIRED> CreationTime => Str

A timestamp that shows when the endpoint configuration was created.


=head2 DataCaptureConfig => L<Paws::SageMaker::DataCaptureConfig>




=head2 EnableNetworkIsolation => Bool

Indicates whether all model containers deployed to the endpoint are
isolated. If they are, no inbound or outbound network calls can be made
to or from the model containers.


=head2 B<REQUIRED> EndpointConfigArn => Str

The Amazon Resource Name (ARN) of the endpoint configuration.


=head2 B<REQUIRED> EndpointConfigName => Str

Name of the SageMaker endpoint configuration.


=head2 ExecutionRoleArn => Str

The Amazon Resource Name (ARN) of the IAM role that you assigned to the
endpoint configuration.


=head2 ExplainerConfig => L<Paws::SageMaker::ExplainerConfig>

The configuration parameters for an explainer.


=head2 KmsKeyId => Str

Amazon Web Services KMS key ID Amazon SageMaker uses to encrypt data
when storing it on the ML storage volume attached to the instance.


=head2 B<REQUIRED> ProductionVariants => ArrayRef[L<Paws::SageMaker::ProductionVariant>]

An array of C<ProductionVariant> objects, one for each model that you
want to host at this endpoint.


=head2 ShadowProductionVariants => ArrayRef[L<Paws::SageMaker::ProductionVariant>]

An array of C<ProductionVariant> objects, one for each model that you
want to host at this endpoint in shadow mode with production traffic
replicated from the model specified on C<ProductionVariants>.


=head2 VpcConfig => L<Paws::SageMaker::VpcConfig>




=head2 _request_id => Str


=cut

1;