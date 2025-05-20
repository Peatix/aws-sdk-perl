
package Paws::LookoutEquipment::DescribeModelVersionResponse;
  use Moose;
  has AutoPromotionResult => (is => 'ro', isa => 'Str');
  has AutoPromotionResultReason => (is => 'ro', isa => 'Str');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has DataPreProcessingConfiguration => (is => 'ro', isa => 'Paws::LookoutEquipment::DataPreProcessingConfiguration');
  has DatasetArn => (is => 'ro', isa => 'Str');
  has DatasetName => (is => 'ro', isa => 'Str');
  has EvaluationDataEndTime => (is => 'ro', isa => 'Str');
  has EvaluationDataStartTime => (is => 'ro', isa => 'Str');
  has FailedReason => (is => 'ro', isa => 'Str');
  has ImportedDataSizeInBytes => (is => 'ro', isa => 'Int');
  has ImportJobEndTime => (is => 'ro', isa => 'Str');
  has ImportJobStartTime => (is => 'ro', isa => 'Str');
  has LabelsInputConfiguration => (is => 'ro', isa => 'Paws::LookoutEquipment::LabelsInputConfiguration');
  has LastUpdatedTime => (is => 'ro', isa => 'Str');
  has ModelArn => (is => 'ro', isa => 'Str');
  has ModelDiagnosticsOutputConfiguration => (is => 'ro', isa => 'Paws::LookoutEquipment::ModelDiagnosticsOutputConfiguration');
  has ModelDiagnosticsResultsObject => (is => 'ro', isa => 'Paws::LookoutEquipment::S3Object');
  has ModelMetrics => (is => 'ro', isa => 'Str');
  has ModelName => (is => 'ro', isa => 'Str');
  has ModelQuality => (is => 'ro', isa => 'Str');
  has ModelVersion => (is => 'ro', isa => 'Int');
  has ModelVersionArn => (is => 'ro', isa => 'Str');
  has OffCondition => (is => 'ro', isa => 'Str');
  has PriorModelMetrics => (is => 'ro', isa => 'Str');
  has RetrainingAvailableDataInDays => (is => 'ro', isa => 'Int');
  has RoleArn => (is => 'ro', isa => 'Str');
  has Schema => (is => 'ro', isa => 'Str');
  has ServerSideKmsKeyId => (is => 'ro', isa => 'Str');
  has SourceModelVersionArn => (is => 'ro', isa => 'Str');
  has SourceType => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has TrainingDataEndTime => (is => 'ro', isa => 'Str');
  has TrainingDataStartTime => (is => 'ro', isa => 'Str');
  has TrainingExecutionEndTime => (is => 'ro', isa => 'Str');
  has TrainingExecutionStartTime => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::DescribeModelVersionResponse

=head1 ATTRIBUTES


=head2 AutoPromotionResult => Str

Indicates whether the model version was promoted to be the active
version after retraining or if there was an error with or cancellation
of the retraining.

Valid values are: C<"MODEL_PROMOTED">, C<"MODEL_NOT_PROMOTED">, C<"RETRAINING_INTERNAL_ERROR">, C<"RETRAINING_CUSTOMER_ERROR">, C<"RETRAINING_CANCELLED">
=head2 AutoPromotionResultReason => Str

Indicates the reason for the C<AutoPromotionResult>. For example, a
model might not be promoted if its performance was worse than the
active version, if there was an error during training, or if the
retraining scheduler was using C<MANUAL> promote mode. The model will
be promoted in C<MANAGED> promote mode if the performance is better
than the previous model.


=head2 CreatedAt => Str

Indicates the time and date at which the machine learning model version
was created.


=head2 DataPreProcessingConfiguration => L<Paws::LookoutEquipment::DataPreProcessingConfiguration>




=head2 DatasetArn => Str

The Amazon Resource Name (ARN) of the dataset used to train the model
version.


=head2 DatasetName => Str

The name of the dataset used to train the model version.


=head2 EvaluationDataEndTime => Str

The date on which the data in the evaluation set began being gathered.
If you imported the version, this is the date that the evaluation set
data in the source version finished being gathered.


=head2 EvaluationDataStartTime => Str

The date on which the data in the evaluation set began being gathered.
If you imported the version, this is the date that the evaluation set
data in the source version began being gathered.


=head2 FailedReason => Str

The failure message if the training of the model version failed.


=head2 ImportedDataSizeInBytes => Int

The size in bytes of the imported data. This field appears if the model
version was imported.


=head2 ImportJobEndTime => Str

The date and time when the import job completed. This field appears if
the model version was imported.


=head2 ImportJobStartTime => Str

The date and time when the import job began. This field appears if the
model version was imported.


=head2 LabelsInputConfiguration => L<Paws::LookoutEquipment::LabelsInputConfiguration>




=head2 LastUpdatedTime => Str

Indicates the last time the machine learning model version was updated.


=head2 ModelArn => Str

The Amazon Resource Name (ARN) of the parent machine learning model
that this version belong to.


=head2 ModelDiagnosticsOutputConfiguration => L<Paws::LookoutEquipment::ModelDiagnosticsOutputConfiguration>

The Amazon S3 location where Amazon Lookout for Equipment saves the
pointwise model diagnostics for the model version.


=head2 ModelDiagnosticsResultsObject => L<Paws::LookoutEquipment::S3Object>

The Amazon S3 output prefix for where Lookout for Equipment saves the
pointwise model diagnostics for the model version.


=head2 ModelMetrics => Str

Shows an aggregated summary, in JSON format, of the model's performance
within the evaluation time range. These metrics are created when
evaluating the model.


=head2 ModelName => Str

The name of the machine learning model that this version belongs to.


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
=head2 ModelVersion => Int

The version of the machine learning model.


=head2 ModelVersionArn => Str

The Amazon Resource Name (ARN) of the model version.


=head2 OffCondition => Str

Indicates that the asset associated with this sensor has been shut off.
As long as this condition is met, Lookout for Equipment will not use
data from this asset for training, evaluation, or inference.


=head2 PriorModelMetrics => Str

If the model version was retrained, this field shows a summary of the
performance of the prior model on the new training range. You can use
the information in this JSON-formatted object to compare the new model
version and the prior model version.


=head2 RetrainingAvailableDataInDays => Int

Indicates the number of days of data used in the most recent scheduled
retraining run.


=head2 RoleArn => Str

The Amazon Resource Name (ARN) of the role that was used to train the
model version.


=head2 Schema => Str

The schema of the data used to train the model version.


=head2 ServerSideKmsKeyId => Str

The identifier of the KMS key key used to encrypt model version data by
Amazon Lookout for Equipment.


=head2 SourceModelVersionArn => Str

If model version was imported, then this field is the arn of the source
model version.


=head2 SourceType => Str

Indicates whether this model version was created by training or by
importing.

Valid values are: C<"TRAINING">, C<"RETRAINING">, C<"IMPORT">
=head2 Status => Str

The current status of the model version.

Valid values are: C<"IN_PROGRESS">, C<"SUCCESS">, C<"FAILED">, C<"IMPORT_IN_PROGRESS">, C<"CANCELED">
=head2 TrainingDataEndTime => Str

The date on which the training data finished being gathered. If you
imported the version, this is the date that the training data in the
source version finished being gathered.


=head2 TrainingDataStartTime => Str

The date on which the training data began being gathered. If you
imported the version, this is the date that the training data in the
source version began being gathered.


=head2 TrainingExecutionEndTime => Str

The time when the training of the version completed.


=head2 TrainingExecutionStartTime => Str

The time when the training of the version began.


=head2 _request_id => Str


=cut

1;