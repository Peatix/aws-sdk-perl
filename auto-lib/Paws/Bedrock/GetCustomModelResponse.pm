
package Paws::Bedrock::GetCustomModelResponse;
  use Moose;
  has BaseModelArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'baseModelArn', required => 1);
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime', required => 1);
  has CustomizationConfig => (is => 'ro', isa => 'Paws::Bedrock::CustomizationConfig', traits => ['NameInRequest'], request_name => 'customizationConfig');
  has CustomizationType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'customizationType');
  has HyperParameters => (is => 'ro', isa => 'Paws::Bedrock::ModelCustomizationHyperParameters', traits => ['NameInRequest'], request_name => 'hyperParameters');
  has JobArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobArn', required => 1);
  has JobName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobName');
  has ModelArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modelArn', required => 1);
  has ModelKmsKeyArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modelKmsKeyArn');
  has ModelName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modelName', required => 1);
  has OutputDataConfig => (is => 'ro', isa => 'Paws::Bedrock::OutputDataConfig', traits => ['NameInRequest'], request_name => 'outputDataConfig', required => 1);
  has TrainingDataConfig => (is => 'ro', isa => 'Paws::Bedrock::TrainingDataConfig', traits => ['NameInRequest'], request_name => 'trainingDataConfig', required => 1);
  has TrainingMetrics => (is => 'ro', isa => 'Paws::Bedrock::TrainingMetrics', traits => ['NameInRequest'], request_name => 'trainingMetrics');
  has ValidationDataConfig => (is => 'ro', isa => 'Paws::Bedrock::ValidationDataConfig', traits => ['NameInRequest'], request_name => 'validationDataConfig');
  has ValidationMetrics => (is => 'ro', isa => 'ArrayRef[Paws::Bedrock::ValidatorMetric]', traits => ['NameInRequest'], request_name => 'validationMetrics');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::GetCustomModelResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> BaseModelArn => Str

Amazon Resource Name (ARN) of the base model.


=head2 B<REQUIRED> CreationTime => Str

Creation time of the model.


=head2 CustomizationConfig => L<Paws::Bedrock::CustomizationConfig>

The customization configuration for the custom model.


=head2 CustomizationType => Str

The type of model customization.

Valid values are: C<"FINE_TUNING">, C<"CONTINUED_PRE_TRAINING">, C<"DISTILLATION">
=head2 HyperParameters => L<Paws::Bedrock::ModelCustomizationHyperParameters>

Hyperparameter values associated with this model. For details on the
format for different models, see Custom model hyperparameters
(https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models-hp.html).


=head2 B<REQUIRED> JobArn => Str

Job Amazon Resource Name (ARN) associated with this model.


=head2 JobName => Str

Job name associated with this model.


=head2 B<REQUIRED> ModelArn => Str

Amazon Resource Name (ARN) associated with this model.


=head2 ModelKmsKeyArn => Str

The custom model is encrypted at rest using this key.


=head2 B<REQUIRED> ModelName => Str

Model name associated with this model.


=head2 B<REQUIRED> OutputDataConfig => L<Paws::Bedrock::OutputDataConfig>

Output data configuration associated with this custom model.


=head2 B<REQUIRED> TrainingDataConfig => L<Paws::Bedrock::TrainingDataConfig>

Contains information about the training dataset.


=head2 TrainingMetrics => L<Paws::Bedrock::TrainingMetrics>

Contains training metrics from the job creation.


=head2 ValidationDataConfig => L<Paws::Bedrock::ValidationDataConfig>

Contains information about the validation dataset.


=head2 ValidationMetrics => ArrayRef[L<Paws::Bedrock::ValidatorMetric>]

The validation metrics from the job creation.


=head2 _request_id => Str


=cut

