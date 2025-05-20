
package Paws::SageMaker::DescribeInferenceComponentOutput;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has EndpointArn => (is => 'ro', isa => 'Str', required => 1);
  has EndpointName => (is => 'ro', isa => 'Str', required => 1);
  has FailureReason => (is => 'ro', isa => 'Str');
  has InferenceComponentArn => (is => 'ro', isa => 'Str', required => 1);
  has InferenceComponentName => (is => 'ro', isa => 'Str', required => 1);
  has InferenceComponentStatus => (is => 'ro', isa => 'Str');
  has LastDeploymentConfig => (is => 'ro', isa => 'Paws::SageMaker::InferenceComponentDeploymentConfig');
  has LastModifiedTime => (is => 'ro', isa => 'Str', required => 1);
  has RuntimeConfig => (is => 'ro', isa => 'Paws::SageMaker::InferenceComponentRuntimeConfigSummary');
  has Specification => (is => 'ro', isa => 'Paws::SageMaker::InferenceComponentSpecificationSummary');
  has VariantName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeInferenceComponentOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationTime => Str

The time when the inference component was created.


=head2 B<REQUIRED> EndpointArn => Str

The Amazon Resource Name (ARN) of the endpoint that hosts the inference
component.


=head2 B<REQUIRED> EndpointName => Str

The name of the endpoint that hosts the inference component.


=head2 FailureReason => Str

If the inference component status is C<Failed>, the reason for the
failure.


=head2 B<REQUIRED> InferenceComponentArn => Str

The Amazon Resource Name (ARN) of the inference component.


=head2 B<REQUIRED> InferenceComponentName => Str

The name of the inference component.


=head2 InferenceComponentStatus => Str

The status of the inference component.

Valid values are: C<"InService">, C<"Creating">, C<"Updating">, C<"Failed">, C<"Deleting">
=head2 LastDeploymentConfig => L<Paws::SageMaker::InferenceComponentDeploymentConfig>

The deployment and rollback settings that you assigned to the inference
component.


=head2 B<REQUIRED> LastModifiedTime => Str

The time when the inference component was last updated.


=head2 RuntimeConfig => L<Paws::SageMaker::InferenceComponentRuntimeConfigSummary>

Details about the runtime settings for the model that is deployed with
the inference component.


=head2 Specification => L<Paws::SageMaker::InferenceComponentSpecificationSummary>

Details about the resources that are deployed with this inference
component.


=head2 VariantName => Str

The name of the production variant that hosts the inference component.


=head2 _request_id => Str


=cut

1;