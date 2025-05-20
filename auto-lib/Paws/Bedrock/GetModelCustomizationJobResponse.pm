
package Paws::Bedrock::GetModelCustomizationJobResponse;
  use Moose;
  has BaseModelArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'baseModelArn', required => 1);
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken');
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime', required => 1);
  has CustomizationConfig => (is => 'ro', isa => 'Paws::Bedrock::CustomizationConfig', traits => ['NameInRequest'], request_name => 'customizationConfig');
  has CustomizationType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'customizationType');
  has EndTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endTime');
  has FailureMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'failureMessage');
  has HyperParameters => (is => 'ro', isa => 'Paws::Bedrock::ModelCustomizationHyperParameters', traits => ['NameInRequest'], request_name => 'hyperParameters');
  has JobArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobArn', required => 1);
  has JobName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobName', required => 1);
  has LastModifiedTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastModifiedTime');
  has OutputDataConfig => (is => 'ro', isa => 'Paws::Bedrock::OutputDataConfig', traits => ['NameInRequest'], request_name => 'outputDataConfig', required => 1);
  has OutputModelArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'outputModelArn');
  has OutputModelKmsKeyArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'outputModelKmsKeyArn');
  has OutputModelName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'outputModelName', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has StatusDetails => (is => 'ro', isa => 'Paws::Bedrock::StatusDetails', traits => ['NameInRequest'], request_name => 'statusDetails');
  has TrainingDataConfig => (is => 'ro', isa => 'Paws::Bedrock::TrainingDataConfig', traits => ['NameInRequest'], request_name => 'trainingDataConfig', required => 1);
  has TrainingMetrics => (is => 'ro', isa => 'Paws::Bedrock::TrainingMetrics', traits => ['NameInRequest'], request_name => 'trainingMetrics');
  has ValidationDataConfig => (is => 'ro', isa => 'Paws::Bedrock::ValidationDataConfig', traits => ['NameInRequest'], request_name => 'validationDataConfig', required => 1);
  has ValidationMetrics => (is => 'ro', isa => 'ArrayRef[Paws::Bedrock::ValidatorMetric]', traits => ['NameInRequest'], request_name => 'validationMetrics');
  has VpcConfig => (is => 'ro', isa => 'Paws::Bedrock::VpcConfig', traits => ['NameInRequest'], request_name => 'vpcConfig');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::GetModelCustomizationJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> BaseModelArn => Str

Amazon Resource Name (ARN) of the base model.


=head2 ClientRequestToken => Str

The token that you specified in the C<CreateCustomizationJob> request.


=head2 B<REQUIRED> CreationTime => Str

Time that the resource was created.


=head2 CustomizationConfig => L<Paws::Bedrock::CustomizationConfig>

The customization configuration for the model customization job.


=head2 CustomizationType => Str

The type of model customization.

Valid values are: C<"FINE_TUNING">, C<"CONTINUED_PRE_TRAINING">, C<"DISTILLATION">
=head2 EndTime => Str

Time that the resource transitioned to terminal state.


=head2 FailureMessage => Str

Information about why the job failed.


=head2 HyperParameters => L<Paws::Bedrock::ModelCustomizationHyperParameters>

The hyperparameter values for the job. For details on the format for
different models, see Custom model hyperparameters
(https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models-hp.html).


=head2 B<REQUIRED> JobArn => Str

The Amazon Resource Name (ARN) of the customization job.


=head2 B<REQUIRED> JobName => Str

The name of the customization job.


=head2 LastModifiedTime => Str

Time that the resource was last modified.


=head2 B<REQUIRED> OutputDataConfig => L<Paws::Bedrock::OutputDataConfig>

Output data configuration


=head2 OutputModelArn => Str

The Amazon Resource Name (ARN) of the output model.


=head2 OutputModelKmsKeyArn => Str

The custom model is encrypted at rest using this key.


=head2 B<REQUIRED> OutputModelName => Str

The name of the output model.


=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of the IAM role.


=head2 Status => Str

The status of the job. A successful job transitions from in-progress to
completed when the output model is ready to use. If the job failed, the
failure message contains information about why the job failed.

Valid values are: C<"InProgress">, C<"Completed">, C<"Failed">, C<"Stopping">, C<"Stopped">
=head2 StatusDetails => L<Paws::Bedrock::StatusDetails>

For a Distillation job, the details about the statuses of the sub-tasks
of the customization job.


=head2 B<REQUIRED> TrainingDataConfig => L<Paws::Bedrock::TrainingDataConfig>

Contains information about the training dataset.


=head2 TrainingMetrics => L<Paws::Bedrock::TrainingMetrics>

Contains training metrics from the job creation.


=head2 B<REQUIRED> ValidationDataConfig => L<Paws::Bedrock::ValidationDataConfig>

Contains information about the validation dataset.


=head2 ValidationMetrics => ArrayRef[L<Paws::Bedrock::ValidatorMetric>]

The loss metric for each validator that you provided in the createjob
request.


=head2 VpcConfig => L<Paws::Bedrock::VpcConfig>

VPC configuration for the custom model job.


=head2 _request_id => Str


=cut

