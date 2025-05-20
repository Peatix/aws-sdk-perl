
package Paws::SageMaker::DescribeModelPackageOutput;
  use Moose;
  has AdditionalInferenceSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::AdditionalInferenceSpecificationDefinition]');
  has ApprovalDescription => (is => 'ro', isa => 'Str');
  has CertifyForMarketplace => (is => 'ro', isa => 'Bool');
  has CreatedBy => (is => 'ro', isa => 'Paws::SageMaker::UserContext');
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has CustomerMetadataProperties => (is => 'ro', isa => 'Paws::SageMaker::CustomerMetadataMap');
  has Domain => (is => 'ro', isa => 'Str');
  has DriftCheckBaselines => (is => 'ro', isa => 'Paws::SageMaker::DriftCheckBaselines');
  has InferenceSpecification => (is => 'ro', isa => 'Paws::SageMaker::InferenceSpecification');
  has LastModifiedBy => (is => 'ro', isa => 'Paws::SageMaker::UserContext');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has MetadataProperties => (is => 'ro', isa => 'Paws::SageMaker::MetadataProperties');
  has ModelApprovalStatus => (is => 'ro', isa => 'Str');
  has ModelCard => (is => 'ro', isa => 'Paws::SageMaker::ModelPackageModelCard');
  has ModelLifeCycle => (is => 'ro', isa => 'Paws::SageMaker::ModelLifeCycle');
  has ModelMetrics => (is => 'ro', isa => 'Paws::SageMaker::ModelMetrics');
  has ModelPackageArn => (is => 'ro', isa => 'Str', required => 1);
  has ModelPackageDescription => (is => 'ro', isa => 'Str');
  has ModelPackageGroupName => (is => 'ro', isa => 'Str');
  has ModelPackageName => (is => 'ro', isa => 'Str', required => 1);
  has ModelPackageStatus => (is => 'ro', isa => 'Str', required => 1);
  has ModelPackageStatusDetails => (is => 'ro', isa => 'Paws::SageMaker::ModelPackageStatusDetails', required => 1);
  has ModelPackageVersion => (is => 'ro', isa => 'Int');
  has SamplePayloadUrl => (is => 'ro', isa => 'Str');
  has SecurityConfig => (is => 'ro', isa => 'Paws::SageMaker::ModelPackageSecurityConfig');
  has SkipModelValidation => (is => 'ro', isa => 'Str');
  has SourceAlgorithmSpecification => (is => 'ro', isa => 'Paws::SageMaker::SourceAlgorithmSpecification');
  has SourceUri => (is => 'ro', isa => 'Str');
  has Task => (is => 'ro', isa => 'Str');
  has ValidationSpecification => (is => 'ro', isa => 'Paws::SageMaker::ModelPackageValidationSpecification');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeModelPackageOutput

=head1 ATTRIBUTES


=head2 AdditionalInferenceSpecifications => ArrayRef[L<Paws::SageMaker::AdditionalInferenceSpecificationDefinition>]

An array of additional Inference Specification objects. Each additional
Inference Specification specifies artifacts based on this model package
that can be used on inference endpoints. Generally used with SageMaker
Neo to store the compiled artifacts.


=head2 ApprovalDescription => Str

A description provided for the model approval.


=head2 CertifyForMarketplace => Bool

Whether the model package is certified for listing on Amazon Web
Services Marketplace.


=head2 CreatedBy => L<Paws::SageMaker::UserContext>




=head2 B<REQUIRED> CreationTime => Str

A timestamp specifying when the model package was created.


=head2 CustomerMetadataProperties => L<Paws::SageMaker::CustomerMetadataMap>

The metadata properties associated with the model package versions.


=head2 Domain => Str

The machine learning domain of the model package you specified. Common
machine learning domains include computer vision and natural language
processing.


=head2 DriftCheckBaselines => L<Paws::SageMaker::DriftCheckBaselines>

Represents the drift check baselines that can be used when the model
monitor is set using the model package. For more information, see the
topic on Drift Detection against Previous Baselines in SageMaker
Pipelines
(https://docs.aws.amazon.com/sagemaker/latest/dg/pipelines-quality-clarify-baseline-lifecycle.html#pipelines-quality-clarify-baseline-drift-detection)
in the I<Amazon SageMaker Developer Guide>.


=head2 InferenceSpecification => L<Paws::SageMaker::InferenceSpecification>

Details about inference jobs that you can run with models based on this
model package.


=head2 LastModifiedBy => L<Paws::SageMaker::UserContext>




=head2 LastModifiedTime => Str

The last time that the model package was modified.


=head2 MetadataProperties => L<Paws::SageMaker::MetadataProperties>




=head2 ModelApprovalStatus => Str

The approval status of the model package.

Valid values are: C<"Approved">, C<"Rejected">, C<"PendingManualApproval">
=head2 ModelCard => L<Paws::SageMaker::ModelPackageModelCard>

The model card associated with the model package. Since
C<ModelPackageModelCard> is tied to a model package, it is a specific
usage of a model card and its schema is simplified compared to the
schema of C<ModelCard>. The C<ModelPackageModelCard> schema does not
include C<model_package_details>, and C<model_overview> is composed of
the C<model_creator> and C<model_artifact> properties. For more
information about the model package model card schema, see Model
package model card schema
(https://docs.aws.amazon.com/sagemaker/latest/dg/model-registry-details.html#model-card-schema).
For more information about the model card associated with the model
package, see View the Details of a Model Version
(https://docs.aws.amazon.com/sagemaker/latest/dg/model-registry-details.html).


=head2 ModelLifeCycle => L<Paws::SageMaker::ModelLifeCycle>

A structure describing the current state of the model in its life
cycle.


=head2 ModelMetrics => L<Paws::SageMaker::ModelMetrics>

Metrics for the model.


=head2 B<REQUIRED> ModelPackageArn => Str

The Amazon Resource Name (ARN) of the model package.


=head2 ModelPackageDescription => Str

A brief summary of the model package.


=head2 ModelPackageGroupName => Str

If the model is a versioned model, the name of the model group that the
versioned model belongs to.


=head2 B<REQUIRED> ModelPackageName => Str

The name of the model package being described.


=head2 B<REQUIRED> ModelPackageStatus => Str

The current status of the model package.

Valid values are: C<"Pending">, C<"InProgress">, C<"Completed">, C<"Failed">, C<"Deleting">
=head2 B<REQUIRED> ModelPackageStatusDetails => L<Paws::SageMaker::ModelPackageStatusDetails>

Details about the current status of the model package.


=head2 ModelPackageVersion => Int

The version of the model package.


=head2 SamplePayloadUrl => Str

The Amazon Simple Storage Service (Amazon S3) path where the sample
payload are stored. This path points to a single gzip compressed tar
archive (.tar.gz suffix).


=head2 SecurityConfig => L<Paws::SageMaker::ModelPackageSecurityConfig>

The KMS Key ID (C<KMSKeyId>) used for encryption of model package
information.


=head2 SkipModelValidation => Str

Indicates if you want to skip model validation.

Valid values are: C<"All">, C<"None">
=head2 SourceAlgorithmSpecification => L<Paws::SageMaker::SourceAlgorithmSpecification>

Details about the algorithm that was used to create the model package.


=head2 SourceUri => Str

The URI of the source for the model package.


=head2 Task => Str

The machine learning task you specified that your model package
accomplishes. Common machine learning tasks include object detection
and image classification.


=head2 ValidationSpecification => L<Paws::SageMaker::ModelPackageValidationSpecification>

Configurations for one or more transform jobs that SageMaker runs to
test the model package.


=head2 _request_id => Str


=cut

1;