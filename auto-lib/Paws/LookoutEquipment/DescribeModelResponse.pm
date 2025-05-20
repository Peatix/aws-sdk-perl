
package Paws::LookoutEquipment::DescribeModelResponse;
  use Moose;
  has AccumulatedInferenceDataEndTime => (is => 'ro', isa => 'Str');
  has AccumulatedInferenceDataStartTime => (is => 'ro', isa => 'Str');
  has ActiveModelVersion => (is => 'ro', isa => 'Int');
  has ActiveModelVersionArn => (is => 'ro', isa => 'Str');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has DataPreProcessingConfiguration => (is => 'ro', isa => 'Paws::LookoutEquipment::DataPreProcessingConfiguration');
  has DatasetArn => (is => 'ro', isa => 'Str');
  has DatasetName => (is => 'ro', isa => 'Str');
  has EvaluationDataEndTime => (is => 'ro', isa => 'Str');
  has EvaluationDataStartTime => (is => 'ro', isa => 'Str');
  has FailedReason => (is => 'ro', isa => 'Str');
  has ImportJobEndTime => (is => 'ro', isa => 'Str');
  has ImportJobStartTime => (is => 'ro', isa => 'Str');
  has LabelsInputConfiguration => (is => 'ro', isa => 'Paws::LookoutEquipment::LabelsInputConfiguration');
  has LastUpdatedTime => (is => 'ro', isa => 'Str');
  has LatestScheduledRetrainingAvailableDataInDays => (is => 'ro', isa => 'Int');
  has LatestScheduledRetrainingFailedReason => (is => 'ro', isa => 'Str');
  has LatestScheduledRetrainingModelVersion => (is => 'ro', isa => 'Int');
  has LatestScheduledRetrainingStartTime => (is => 'ro', isa => 'Str');
  has LatestScheduledRetrainingStatus => (is => 'ro', isa => 'Str');
  has ModelArn => (is => 'ro', isa => 'Str');
  has ModelDiagnosticsOutputConfiguration => (is => 'ro', isa => 'Paws::LookoutEquipment::ModelDiagnosticsOutputConfiguration');
  has ModelMetrics => (is => 'ro', isa => 'Str');
  has ModelName => (is => 'ro', isa => 'Str');
  has ModelQuality => (is => 'ro', isa => 'Str');
  has ModelVersionActivatedAt => (is => 'ro', isa => 'Str');
  has NextScheduledRetrainingStartDate => (is => 'ro', isa => 'Str');
  has OffCondition => (is => 'ro', isa => 'Str');
  has PreviousActiveModelVersion => (is => 'ro', isa => 'Int');
  has PreviousActiveModelVersionArn => (is => 'ro', isa => 'Str');
  has PreviousModelVersionActivatedAt => (is => 'ro', isa => 'Str');
  has PriorModelMetrics => (is => 'ro', isa => 'Str');
  has RetrainingSchedulerStatus => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str');
  has Schema => (is => 'ro', isa => 'Str');
  has ServerSideKmsKeyId => (is => 'ro', isa => 'Str');
  has SourceModelVersionArn => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has TrainingDataEndTime => (is => 'ro', isa => 'Str');
  has TrainingDataStartTime => (is => 'ro', isa => 'Str');
  has TrainingExecutionEndTime => (is => 'ro', isa => 'Str');
  has TrainingExecutionStartTime => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::DescribeModelResponse

=head1 ATTRIBUTES


=head2 AccumulatedInferenceDataEndTime => Str

Indicates the end time of the inference data that has been accumulated.


=head2 AccumulatedInferenceDataStartTime => Str

Indicates the start time of the inference data that has been
accumulated.


=head2 ActiveModelVersion => Int

The name of the model version used by the inference schedular when
running a scheduled inference execution.


=head2 ActiveModelVersionArn => Str

The Amazon Resource Name (ARN) of the model version used by the
inference scheduler when running a scheduled inference execution.


=head2 CreatedAt => Str

Indicates the time and date at which the machine learning model was
created.


=head2 DataPreProcessingConfiguration => L<Paws::LookoutEquipment::DataPreProcessingConfiguration>

The configuration is the C<TargetSamplingRate>, which is the sampling
rate of the data after post processing by Amazon Lookout for Equipment.
For example, if you provide data that has been collected at a 1 second
level and you want the system to resample the data at a 1 minute rate
before training, the C<TargetSamplingRate> is 1 minute.

When providing a value for the C<TargetSamplingRate>, you must attach
the prefix "PT" to the rate you want. The value for a 1 second rate is
therefore I<PT1S>, the value for a 15 minute rate is I<PT15M>, and the
value for a 1 hour rate is I<PT1H>


=head2 DatasetArn => Str

The Amazon Resouce Name (ARN) of the dataset used to create the machine
learning model being described.


=head2 DatasetName => Str

The name of the dataset being used by the machine learning being
described.


=head2 EvaluationDataEndTime => Str

Indicates the time reference in the dataset that was used to end the
subset of evaluation data for the machine learning model.


=head2 EvaluationDataStartTime => Str

Indicates the time reference in the dataset that was used to begin the
subset of evaluation data for the machine learning model.


=head2 FailedReason => Str

If the training of the machine learning model failed, this indicates
the reason for that failure.


=head2 ImportJobEndTime => Str

The date and time when the import job was completed. This field appears
if the active model version was imported.


=head2 ImportJobStartTime => Str

The date and time when the import job was started. This field appears
if the active model version was imported.


=head2 LabelsInputConfiguration => L<Paws::LookoutEquipment::LabelsInputConfiguration>

Specifies configuration information about the labels input, including
its S3 location.


=head2 LastUpdatedTime => Str

Indicates the last time the machine learning model was updated. The
type of update is not specified.


=head2 LatestScheduledRetrainingAvailableDataInDays => Int

Indicates the number of days of data used in the most recent scheduled
retraining run.


=head2 LatestScheduledRetrainingFailedReason => Str

If the model version was generated by retraining and the training
failed, this indicates the reason for that failure.


=head2 LatestScheduledRetrainingModelVersion => Int

Indicates the most recent model version that was generated by
retraining.


=head2 LatestScheduledRetrainingStartTime => Str

Indicates the start time of the most recent scheduled retraining run.


=head2 LatestScheduledRetrainingStatus => Str

Indicates the status of the most recent scheduled retraining run.

Valid values are: C<"IN_PROGRESS">, C<"SUCCESS">, C<"FAILED">, C<"IMPORT_IN_PROGRESS">, C<"CANCELED">
=head2 ModelArn => Str

The Amazon Resource Name (ARN) of the machine learning model being
described.


=head2 ModelDiagnosticsOutputConfiguration => L<Paws::LookoutEquipment::ModelDiagnosticsOutputConfiguration>

Configuration information for the model's pointwise model diagnostics.


=head2 ModelMetrics => Str

The Model Metrics show an aggregated summary of the model's performance
within the evaluation time range. This is the JSON content of the
metrics created when evaluating the model.


=head2 ModelName => Str

The name of the machine learning model being described.


=head2 ModelQuality => Str

Provides a quality assessment for a model that uses labels. If Lookout
for Equipment determines that the model quality is poor based on
training metrics, the value is C<POOR_QUALITY_DETECTED>. Otherwise, the
value is C<QUALITY_THRESHOLD_MET>.

If the model is unlabeled, the model quality can't be assessed and the
value of C<ModelQuality> is C<CANNOT_DETERMINE_QUALITY>. In this
situation, you can get a model quality assessment by adding labels to
the input dataset and retraining the model.

For information about using labels with your models, see Understanding
labeling
(https://docs.aws.amazon.com/lookout-for-equipment/latest/ug/understanding-labeling.html).

For information about improving the quality of a model, see Best
practices with Amazon Lookout for Equipment
(https://docs.aws.amazon.com/lookout-for-equipment/latest/ug/best-practices.html).

Valid values are: C<"QUALITY_THRESHOLD_MET">, C<"CANNOT_DETERMINE_QUALITY">, C<"POOR_QUALITY_DETECTED">
=head2 ModelVersionActivatedAt => Str

The date the active model version was activated.


=head2 NextScheduledRetrainingStartDate => Str

Indicates the date and time that the next scheduled retraining run will
start on. Lookout for Equipment truncates the time you provide to the
nearest UTC day.


=head2 OffCondition => Str

Indicates that the asset associated with this sensor has been shut off.
As long as this condition is met, Lookout for Equipment will not use
data from this asset for training, evaluation, or inference.


=head2 PreviousActiveModelVersion => Int

The model version that was set as the active model version prior to the
current active model version.


=head2 PreviousActiveModelVersionArn => Str

The ARN of the model version that was set as the active model version
prior to the current active model version.


=head2 PreviousModelVersionActivatedAt => Str

The date and time when the previous active model version was activated.


=head2 PriorModelMetrics => Str

If the model version was retrained, this field shows a summary of the
performance of the prior model on the new training range. You can use
the information in this JSON-formatted object to compare the new model
version and the prior model version.


=head2 RetrainingSchedulerStatus => Str

Indicates the status of the retraining scheduler.

Valid values are: C<"PENDING">, C<"RUNNING">, C<"STOPPING">, C<"STOPPED">
=head2 RoleArn => Str

The Amazon Resource Name (ARN) of a role with permission to access the
data source for the machine learning model being described.


=head2 Schema => Str

A JSON description of the data that is in each time series dataset,
including names, column names, and data types.


=head2 ServerSideKmsKeyId => Str

Provides the identifier of the KMS key used to encrypt model data by
Amazon Lookout for Equipment.


=head2 SourceModelVersionArn => Str

The Amazon Resource Name (ARN) of the source model version. This field
appears if the active model version was imported.


=head2 Status => Str

Specifies the current status of the model being described. Status
describes the status of the most recent action of the model.

Valid values are: C<"IN_PROGRESS">, C<"SUCCESS">, C<"FAILED">, C<"IMPORT_IN_PROGRESS">
=head2 TrainingDataEndTime => Str

Indicates the time reference in the dataset that was used to end the
subset of training data for the machine learning model.


=head2 TrainingDataStartTime => Str

Indicates the time reference in the dataset that was used to begin the
subset of training data for the machine learning model.


=head2 TrainingExecutionEndTime => Str

Indicates the time at which the training of the machine learning model
was completed.


=head2 TrainingExecutionStartTime => Str

Indicates the time at which the training of the machine learning model
began.


=head2 _request_id => Str


=cut

1;