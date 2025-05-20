
package Paws::SageMaker::DescribeInferenceExperimentResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has CompletionTime => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has DataStorageConfig => (is => 'ro', isa => 'Paws::SageMaker::InferenceExperimentDataStorageConfig');
  has Description => (is => 'ro', isa => 'Str');
  has EndpointMetadata => (is => 'ro', isa => 'Paws::SageMaker::EndpointMetadata', required => 1);
  has KmsKey => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has ModelVariants => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::ModelVariantConfigSummary]', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str');
  has Schedule => (is => 'ro', isa => 'Paws::SageMaker::InferenceExperimentSchedule');
  has ShadowModeConfig => (is => 'ro', isa => 'Paws::SageMaker::ShadowModeConfig');
  has Status => (is => 'ro', isa => 'Str', required => 1);
  has StatusReason => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeInferenceExperimentResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The ARN of the inference experiment being described.


=head2 CompletionTime => Str

The timestamp at which the inference experiment was completed.


=head2 CreationTime => Str

The timestamp at which you created the inference experiment.


=head2 DataStorageConfig => L<Paws::SageMaker::InferenceExperimentDataStorageConfig>

The Amazon S3 location and configuration for storing inference request
and response data.


=head2 Description => Str

The description of the inference experiment.


=head2 B<REQUIRED> EndpointMetadata => L<Paws::SageMaker::EndpointMetadata>

The metadata of the endpoint on which the inference experiment ran.


=head2 KmsKey => Str

The Amazon Web Services Key Management Service (Amazon Web Services
KMS) key that Amazon SageMaker uses to encrypt data on the storage
volume attached to the ML compute instance that hosts the endpoint. For
more information, see CreateInferenceExperiment
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateInferenceExperiment.html).


=head2 LastModifiedTime => Str

The timestamp at which you last modified the inference experiment.


=head2 B<REQUIRED> ModelVariants => ArrayRef[L<Paws::SageMaker::ModelVariantConfigSummary>]

An array of C<ModelVariantConfigSummary> objects. There is one for each
variant in the inference experiment. Each C<ModelVariantConfigSummary>
object in the array describes the infrastructure configuration for
deploying the corresponding variant.


=head2 B<REQUIRED> Name => Str

The name of the inference experiment.


=head2 RoleArn => Str

The ARN of the IAM role that Amazon SageMaker can assume to access
model artifacts and container images, and manage Amazon SageMaker
Inference endpoints for model deployment.


=head2 Schedule => L<Paws::SageMaker::InferenceExperimentSchedule>

The duration for which the inference experiment ran or will run.


=head2 ShadowModeConfig => L<Paws::SageMaker::ShadowModeConfig>

The configuration of C<ShadowMode> inference experiment type, which
shows the production variant that takes all the inference requests, and
the shadow variant to which Amazon SageMaker replicates a percentage of
the inference requests. For the shadow variant it also shows the
percentage of requests that Amazon SageMaker replicates.


=head2 B<REQUIRED> Status => Str

The status of the inference experiment. The following are the possible
statuses for an inference experiment:

=over

=item *

C<Creating> - Amazon SageMaker is creating your experiment.

=item *

C<Created> - Amazon SageMaker has finished the creation of your
experiment and will begin the experiment at the scheduled time.

=item *

C<Updating> - When you make changes to your experiment, your experiment
shows as updating.

=item *

C<Starting> - Amazon SageMaker is beginning your experiment.

=item *

C<Running> - Your experiment is in progress.

=item *

C<Stopping> - Amazon SageMaker is stopping your experiment.

=item *

C<Completed> - Your experiment has completed.

=item *

C<Cancelled> - When you conclude your experiment early using the
StopInferenceExperiment
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_StopInferenceExperiment.html)
API, or if any operation fails with an unexpected error, it shows as
cancelled.

=back


Valid values are: C<"Creating">, C<"Created">, C<"Updating">, C<"Running">, C<"Starting">, C<"Stopping">, C<"Completed">, C<"Cancelled">
=head2 StatusReason => Str

The error message or client-specified C<Reason> from the
StopInferenceExperiment
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_StopInferenceExperiment.html)
API, that explains the status of the inference experiment.


=head2 B<REQUIRED> Type => Str

The type of the inference experiment.

Valid values are: C<"ShadowMode">
=head2 _request_id => Str


=cut

1;