
package Paws::SageMaker::DescribeEndpointOutput;
  use Moose;
  has AsyncInferenceConfig => (is => 'ro', isa => 'Paws::SageMaker::AsyncInferenceConfig');
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has DataCaptureConfig => (is => 'ro', isa => 'Paws::SageMaker::DataCaptureConfigSummary');
  has EndpointArn => (is => 'ro', isa => 'Str', required => 1);
  has EndpointConfigName => (is => 'ro', isa => 'Str');
  has EndpointName => (is => 'ro', isa => 'Str', required => 1);
  has EndpointStatus => (is => 'ro', isa => 'Str', required => 1);
  has ExplainerConfig => (is => 'ro', isa => 'Paws::SageMaker::ExplainerConfig');
  has FailureReason => (is => 'ro', isa => 'Str');
  has LastDeploymentConfig => (is => 'ro', isa => 'Paws::SageMaker::DeploymentConfig');
  has LastModifiedTime => (is => 'ro', isa => 'Str', required => 1);
  has PendingDeploymentSummary => (is => 'ro', isa => 'Paws::SageMaker::PendingDeploymentSummary');
  has ProductionVariants => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::ProductionVariantSummary]');
  has ShadowProductionVariants => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::ProductionVariantSummary]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeEndpointOutput

=head1 ATTRIBUTES


=head2 AsyncInferenceConfig => L<Paws::SageMaker::AsyncInferenceConfig>

Returns the description of an endpoint configuration created using the
C<CreateEndpointConfig>
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateEndpointConfig.html)
API.


=head2 B<REQUIRED> CreationTime => Str

A timestamp that shows when the endpoint was created.


=head2 DataCaptureConfig => L<Paws::SageMaker::DataCaptureConfigSummary>




=head2 B<REQUIRED> EndpointArn => Str

The Amazon Resource Name (ARN) of the endpoint.


=head2 EndpointConfigName => Str

The name of the endpoint configuration associated with this endpoint.


=head2 B<REQUIRED> EndpointName => Str

Name of the endpoint.


=head2 B<REQUIRED> EndpointStatus => Str

The status of the endpoint.

=over

=item *

C<OutOfService>: Endpoint is not available to take incoming requests.

=item *

C<Creating>: CreateEndpoint
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateEndpoint.html)
is executing.

=item *

C<Updating>: UpdateEndpoint
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_UpdateEndpoint.html)
or UpdateEndpointWeightsAndCapacities
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_UpdateEndpointWeightsAndCapacities.html)
is executing.

=item *

C<SystemUpdating>: Endpoint is undergoing maintenance and cannot be
updated or deleted or re-scaled until it has completed. This
maintenance operation does not change any customer-specified values
such as VPC config, KMS encryption, model, instance type, or instance
count.

=item *

C<RollingBack>: Endpoint fails to scale up or down or change its
variant weight and is in the process of rolling back to its previous
configuration. Once the rollback completes, endpoint returns to an
C<InService> status. This transitional status only applies to an
endpoint that has autoscaling enabled and is undergoing variant weight
or capacity changes as part of an UpdateEndpointWeightsAndCapacities
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_UpdateEndpointWeightsAndCapacities.html)
call or when the UpdateEndpointWeightsAndCapacities
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_UpdateEndpointWeightsAndCapacities.html)
operation is called explicitly.

=item *

C<InService>: Endpoint is available to process incoming requests.

=item *

C<Deleting>: DeleteEndpoint
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DeleteEndpoint.html)
is executing.

=item *

C<Failed>: Endpoint could not be created, updated, or re-scaled. Use
the C<FailureReason> value returned by DescribeEndpoint
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeEndpoint.html)
for information about the failure. DeleteEndpoint
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DeleteEndpoint.html)
is the only operation that can be performed on a failed endpoint.

=item *

C<UpdateRollbackFailed>: Both the rolling deployment and auto-rollback
failed. Your endpoint is in service with a mix of the old and new
endpoint configurations. For information about how to remedy this issue
and restore the endpoint's status to C<InService>, see Rolling
Deployments
(https://docs.aws.amazon.com/sagemaker/latest/dg/deployment-guardrails-rolling.html).

=back


Valid values are: C<"OutOfService">, C<"Creating">, C<"Updating">, C<"SystemUpdating">, C<"RollingBack">, C<"InService">, C<"Deleting">, C<"Failed">, C<"UpdateRollbackFailed">
=head2 ExplainerConfig => L<Paws::SageMaker::ExplainerConfig>

The configuration parameters for an explainer.


=head2 FailureReason => Str

If the status of the endpoint is C<Failed>, the reason why it failed.


=head2 LastDeploymentConfig => L<Paws::SageMaker::DeploymentConfig>

The most recent deployment configuration for the endpoint.


=head2 B<REQUIRED> LastModifiedTime => Str

A timestamp that shows when the endpoint was last modified.


=head2 PendingDeploymentSummary => L<Paws::SageMaker::PendingDeploymentSummary>

Returns the summary of an in-progress deployment. This field is only
returned when the endpoint is creating or updating with a new endpoint
configuration.


=head2 ProductionVariants => ArrayRef[L<Paws::SageMaker::ProductionVariantSummary>]

An array of ProductionVariantSummary
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_ProductionVariantSummary.html)
objects, one for each model hosted behind this endpoint.


=head2 ShadowProductionVariants => ArrayRef[L<Paws::SageMaker::ProductionVariantSummary>]

An array of ProductionVariantSummary
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_ProductionVariantSummary.html)
objects, one for each model that you want to host at this endpoint in
shadow mode with production traffic replicated from the model specified
on C<ProductionVariants>.


=head2 _request_id => Str


=cut

1;