package Paws::LookoutEquipment;
  use Moose;
  sub service { 'lookoutequipment' }
  sub signing_name { 'lookoutequipment' }
  sub version { '2020-12-15' }
  sub target_prefix { 'AWSLookoutEquipmentFrontendService' }
  sub json_version { "1.0" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub CreateDataset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::CreateDataset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateInferenceScheduler {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::CreateInferenceScheduler', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLabel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::CreateLabel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLabelGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::CreateLabelGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::CreateModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRetrainingScheduler {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::CreateRetrainingScheduler', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDataset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::DeleteDataset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteInferenceScheduler {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::DeleteInferenceScheduler', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLabel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::DeleteLabel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLabelGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::DeleteLabelGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::DeleteModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::DeleteResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRetrainingScheduler {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::DeleteRetrainingScheduler', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDataIngestionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::DescribeDataIngestionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDataset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::DescribeDataset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeInferenceScheduler {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::DescribeInferenceScheduler', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLabel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::DescribeLabel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLabelGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::DescribeLabelGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::DescribeModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeModelVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::DescribeModelVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::DescribeResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRetrainingScheduler {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::DescribeRetrainingScheduler', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportDataset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::ImportDataset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportModelVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::ImportModelVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDataIngestionJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::ListDataIngestionJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDatasets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::ListDatasets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListInferenceEvents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::ListInferenceEvents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListInferenceExecutions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::ListInferenceExecutions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListInferenceSchedulers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::ListInferenceSchedulers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLabelGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::ListLabelGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLabels {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::ListLabels', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListModels {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::ListModels', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListModelVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::ListModelVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRetrainingSchedulers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::ListRetrainingSchedulers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSensorStatistics {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::ListSensorStatistics', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::PutResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartDataIngestionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::StartDataIngestionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartInferenceScheduler {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::StartInferenceScheduler', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartRetrainingScheduler {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::StartRetrainingScheduler', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopInferenceScheduler {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::StopInferenceScheduler', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopRetrainingScheduler {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::StopRetrainingScheduler', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateActiveModelVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::UpdateActiveModelVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateInferenceScheduler {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::UpdateInferenceScheduler', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateLabelGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::UpdateLabelGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::UpdateModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRetrainingScheduler {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutEquipment::UpdateRetrainingScheduler', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CreateDataset CreateInferenceScheduler CreateLabel CreateLabelGroup CreateModel CreateRetrainingScheduler DeleteDataset DeleteInferenceScheduler DeleteLabel DeleteLabelGroup DeleteModel DeleteResourcePolicy DeleteRetrainingScheduler DescribeDataIngestionJob DescribeDataset DescribeInferenceScheduler DescribeLabel DescribeLabelGroup DescribeModel DescribeModelVersion DescribeResourcePolicy DescribeRetrainingScheduler ImportDataset ImportModelVersion ListDataIngestionJobs ListDatasets ListInferenceEvents ListInferenceExecutions ListInferenceSchedulers ListLabelGroups ListLabels ListModels ListModelVersions ListRetrainingSchedulers ListSensorStatistics ListTagsForResource PutResourcePolicy StartDataIngestionJob StartInferenceScheduler StartRetrainingScheduler StopInferenceScheduler StopRetrainingScheduler TagResource UntagResource UpdateActiveModelVersion UpdateInferenceScheduler UpdateLabelGroup UpdateModel UpdateRetrainingScheduler / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment - Perl Interface to AWS Amazon Lookout for Equipment

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('LookoutEquipment');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

Amazon Lookout for Equipment is a machine learning service that uses
advanced analytics to identify anomalies in machines from sensor data
for use in predictive maintenance.

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 CreateDataset

=over

=item ClientToken => Str

=item DatasetName => Str

=item [DatasetSchema => L<Paws::LookoutEquipment::DatasetSchema>]

=item [ServerSideKmsKeyId => Str]

=item [Tags => ArrayRef[L<Paws::LookoutEquipment::Tag>]]


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::CreateDataset>

Returns: a L<Paws::LookoutEquipment::CreateDatasetResponse> instance

Creates a container for a collection of data being ingested for
analysis. The dataset contains the metadata describing where the data
is and what the data actually looks like. For example, it contains the
location of the data source, the data schema, and other information. A
dataset also contains any tags associated with the ingested data.


=head2 CreateInferenceScheduler

=over

=item ClientToken => Str

=item DataInputConfiguration => L<Paws::LookoutEquipment::InferenceInputConfiguration>

=item DataOutputConfiguration => L<Paws::LookoutEquipment::InferenceOutputConfiguration>

=item DataUploadFrequency => Str

=item InferenceSchedulerName => Str

=item ModelName => Str

=item RoleArn => Str

=item [DataDelayOffsetInMinutes => Int]

=item [ServerSideKmsKeyId => Str]

=item [Tags => ArrayRef[L<Paws::LookoutEquipment::Tag>]]


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::CreateInferenceScheduler>

Returns: a L<Paws::LookoutEquipment::CreateInferenceSchedulerResponse> instance

Creates a scheduled inference. Scheduling an inference is setting up a
continuous real-time inference plan to analyze new measurement data.
When setting up the schedule, you provide an S3 bucket location for the
input data, assign it a delimiter between separate entries in the data,
set an offset delay if desired, and set the frequency of inferencing.
You must also provide an S3 bucket location for the output data.


=head2 CreateLabel

=over

=item ClientToken => Str

=item EndTime => Str

=item LabelGroupName => Str

=item Rating => Str

=item StartTime => Str

=item [Equipment => Str]

=item [FaultCode => Str]

=item [Notes => Str]


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::CreateLabel>

Returns: a L<Paws::LookoutEquipment::CreateLabelResponse> instance

Creates a label for an event.


=head2 CreateLabelGroup

=over

=item ClientToken => Str

=item LabelGroupName => Str

=item [FaultCodes => ArrayRef[Str|Undef]]

=item [Tags => ArrayRef[L<Paws::LookoutEquipment::Tag>]]


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::CreateLabelGroup>

Returns: a L<Paws::LookoutEquipment::CreateLabelGroupResponse> instance

Creates a group of labels.


=head2 CreateModel

=over

=item ClientToken => Str

=item DatasetName => Str

=item ModelName => Str

=item [DataPreProcessingConfiguration => L<Paws::LookoutEquipment::DataPreProcessingConfiguration>]

=item [DatasetSchema => L<Paws::LookoutEquipment::DatasetSchema>]

=item [EvaluationDataEndTime => Str]

=item [EvaluationDataStartTime => Str]

=item [LabelsInputConfiguration => L<Paws::LookoutEquipment::LabelsInputConfiguration>]

=item [ModelDiagnosticsOutputConfiguration => L<Paws::LookoutEquipment::ModelDiagnosticsOutputConfiguration>]

=item [OffCondition => Str]

=item [RoleArn => Str]

=item [ServerSideKmsKeyId => Str]

=item [Tags => ArrayRef[L<Paws::LookoutEquipment::Tag>]]

=item [TrainingDataEndTime => Str]

=item [TrainingDataStartTime => Str]


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::CreateModel>

Returns: a L<Paws::LookoutEquipment::CreateModelResponse> instance

Creates a machine learning model for data inference.

A machine-learning (ML) model is a mathematical model that finds
patterns in your data. In Amazon Lookout for Equipment, the model
learns the patterns of normal behavior and detects abnormal behavior
that could be potential equipment failure (or maintenance events). The
models are made by analyzing normal data and abnormalities in machine
behavior that have already occurred.

Your model is trained using a portion of the data from your dataset and
uses that data to learn patterns of normal behavior and abnormal
patterns that lead to equipment failure. Another portion of the data is
used to evaluate the model's accuracy.


=head2 CreateRetrainingScheduler

=over

=item ClientToken => Str

=item LookbackWindow => Str

=item ModelName => Str

=item RetrainingFrequency => Str

=item [PromoteMode => Str]

=item [RetrainingStartDate => Str]


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::CreateRetrainingScheduler>

Returns: a L<Paws::LookoutEquipment::CreateRetrainingSchedulerResponse> instance

Creates a retraining scheduler on the specified model.


=head2 DeleteDataset

=over

=item DatasetName => Str


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::DeleteDataset>

Returns: nothing

Deletes a dataset and associated artifacts. The operation will check to
see if any inference scheduler or data ingestion job is currently using
the dataset, and if there isn't, the dataset, its metadata, and any
associated data stored in S3 will be deleted. This does not affect any
models that used this dataset for training and evaluation, but does
prevent it from being used in the future.


=head2 DeleteInferenceScheduler

=over

=item InferenceSchedulerName => Str


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::DeleteInferenceScheduler>

Returns: nothing

Deletes an inference scheduler that has been set up. Prior inference
results will not be deleted.


=head2 DeleteLabel

=over

=item LabelGroupName => Str

=item LabelId => Str


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::DeleteLabel>

Returns: nothing

Deletes a label.


=head2 DeleteLabelGroup

=over

=item LabelGroupName => Str


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::DeleteLabelGroup>

Returns: nothing

Deletes a group of labels.


=head2 DeleteModel

=over

=item ModelName => Str


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::DeleteModel>

Returns: nothing

Deletes a machine learning model currently available for Amazon Lookout
for Equipment. This will prevent it from being used with an inference
scheduler, even one that is already set up.


=head2 DeleteResourcePolicy

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::DeleteResourcePolicy>

Returns: nothing

Deletes the resource policy attached to the resource.


=head2 DeleteRetrainingScheduler

=over

=item ModelName => Str


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::DeleteRetrainingScheduler>

Returns: nothing

Deletes a retraining scheduler from a model. The retraining scheduler
must be in the C<STOPPED> status.


=head2 DescribeDataIngestionJob

=over

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::DescribeDataIngestionJob>

Returns: a L<Paws::LookoutEquipment::DescribeDataIngestionJobResponse> instance

Provides information on a specific data ingestion job such as creation
time, dataset ARN, and status.


=head2 DescribeDataset

=over

=item DatasetName => Str


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::DescribeDataset>

Returns: a L<Paws::LookoutEquipment::DescribeDatasetResponse> instance

Provides a JSON description of the data in each time series dataset,
including names, column names, and data types.


=head2 DescribeInferenceScheduler

=over

=item InferenceSchedulerName => Str


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::DescribeInferenceScheduler>

Returns: a L<Paws::LookoutEquipment::DescribeInferenceSchedulerResponse> instance

Specifies information about the inference scheduler being used,
including name, model, status, and associated metadata


=head2 DescribeLabel

=over

=item LabelGroupName => Str

=item LabelId => Str


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::DescribeLabel>

Returns: a L<Paws::LookoutEquipment::DescribeLabelResponse> instance

Returns the name of the label.


=head2 DescribeLabelGroup

=over

=item LabelGroupName => Str


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::DescribeLabelGroup>

Returns: a L<Paws::LookoutEquipment::DescribeLabelGroupResponse> instance

Returns information about the label group.


=head2 DescribeModel

=over

=item ModelName => Str


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::DescribeModel>

Returns: a L<Paws::LookoutEquipment::DescribeModelResponse> instance

Provides a JSON containing the overall information about a specific
machine learning model, including model name and ARN, dataset, training
and evaluation information, status, and so on.


=head2 DescribeModelVersion

=over

=item ModelName => Str

=item ModelVersion => Int


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::DescribeModelVersion>

Returns: a L<Paws::LookoutEquipment::DescribeModelVersionResponse> instance

Retrieves information about a specific machine learning model version.


=head2 DescribeResourcePolicy

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::DescribeResourcePolicy>

Returns: a L<Paws::LookoutEquipment::DescribeResourcePolicyResponse> instance

Provides the details of a resource policy attached to a resource.


=head2 DescribeRetrainingScheduler

=over

=item ModelName => Str


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::DescribeRetrainingScheduler>

Returns: a L<Paws::LookoutEquipment::DescribeRetrainingSchedulerResponse> instance

Provides a description of the retraining scheduler, including
information such as the model name and retraining parameters.


=head2 ImportDataset

=over

=item ClientToken => Str

=item SourceDatasetArn => Str

=item [DatasetName => Str]

=item [ServerSideKmsKeyId => Str]

=item [Tags => ArrayRef[L<Paws::LookoutEquipment::Tag>]]


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::ImportDataset>

Returns: a L<Paws::LookoutEquipment::ImportDatasetResponse> instance

Imports a dataset.


=head2 ImportModelVersion

=over

=item ClientToken => Str

=item DatasetName => Str

=item SourceModelVersionArn => Str

=item [InferenceDataImportStrategy => Str]

=item [LabelsInputConfiguration => L<Paws::LookoutEquipment::LabelsInputConfiguration>]

=item [ModelName => Str]

=item [RoleArn => Str]

=item [ServerSideKmsKeyId => Str]

=item [Tags => ArrayRef[L<Paws::LookoutEquipment::Tag>]]


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::ImportModelVersion>

Returns: a L<Paws::LookoutEquipment::ImportModelVersionResponse> instance

Imports a model that has been trained successfully.


=head2 ListDataIngestionJobs

=over

=item [DatasetName => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::ListDataIngestionJobs>

Returns: a L<Paws::LookoutEquipment::ListDataIngestionJobsResponse> instance

Provides a list of all data ingestion jobs, including dataset name and
ARN, S3 location of the input data, status, and so on.


=head2 ListDatasets

=over

=item [DatasetNameBeginsWith => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::ListDatasets>

Returns: a L<Paws::LookoutEquipment::ListDatasetsResponse> instance

Lists all datasets currently available in your account, filtering on
the dataset name.


=head2 ListInferenceEvents

=over

=item InferenceSchedulerName => Str

=item IntervalEndTime => Str

=item IntervalStartTime => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::ListInferenceEvents>

Returns: a L<Paws::LookoutEquipment::ListInferenceEventsResponse> instance

Lists all inference events that have been found for the specified
inference scheduler.


=head2 ListInferenceExecutions

=over

=item InferenceSchedulerName => Str

=item [DataEndTimeBefore => Str]

=item [DataStartTimeAfter => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::ListInferenceExecutions>

Returns: a L<Paws::LookoutEquipment::ListInferenceExecutionsResponse> instance

Lists all inference executions that have been performed by the
specified inference scheduler.


=head2 ListInferenceSchedulers

=over

=item [InferenceSchedulerNameBeginsWith => Str]

=item [MaxResults => Int]

=item [ModelName => Str]

=item [NextToken => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::ListInferenceSchedulers>

Returns: a L<Paws::LookoutEquipment::ListInferenceSchedulersResponse> instance

Retrieves a list of all inference schedulers currently available for
your account.


=head2 ListLabelGroups

=over

=item [LabelGroupNameBeginsWith => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::ListLabelGroups>

Returns: a L<Paws::LookoutEquipment::ListLabelGroupsResponse> instance

Returns a list of the label groups.


=head2 ListLabels

=over

=item LabelGroupName => Str

=item [Equipment => Str]

=item [FaultCode => Str]

=item [IntervalEndTime => Str]

=item [IntervalStartTime => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::ListLabels>

Returns: a L<Paws::LookoutEquipment::ListLabelsResponse> instance

Provides a list of labels.


=head2 ListModels

=over

=item [DatasetNameBeginsWith => Str]

=item [MaxResults => Int]

=item [ModelNameBeginsWith => Str]

=item [NextToken => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::ListModels>

Returns: a L<Paws::LookoutEquipment::ListModelsResponse> instance

Generates a list of all models in the account, including model name and
ARN, dataset, and status.


=head2 ListModelVersions

=over

=item ModelName => Str

=item [CreatedAtEndTime => Str]

=item [CreatedAtStartTime => Str]

=item [MaxModelVersion => Int]

=item [MaxResults => Int]

=item [MinModelVersion => Int]

=item [NextToken => Str]

=item [SourceType => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::ListModelVersions>

Returns: a L<Paws::LookoutEquipment::ListModelVersionsResponse> instance

Generates a list of all model versions for a given model, including the
model version, model version ARN, and status. To list a subset of
versions, use the C<MaxModelVersion> and C<MinModelVersion> fields.


=head2 ListRetrainingSchedulers

=over

=item [MaxResults => Int]

=item [ModelNameBeginsWith => Str]

=item [NextToken => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::ListRetrainingSchedulers>

Returns: a L<Paws::LookoutEquipment::ListRetrainingSchedulersResponse> instance

Lists all retraining schedulers in your account, filtering by model
name prefix and status.


=head2 ListSensorStatistics

=over

=item DatasetName => Str

=item [IngestionJobId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::ListSensorStatistics>

Returns: a L<Paws::LookoutEquipment::ListSensorStatisticsResponse> instance

Lists statistics about the data collected for each of the sensors that
have been successfully ingested in the particular dataset. Can also be
used to retreive Sensor Statistics for a previous ingestion job.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::ListTagsForResource>

Returns: a L<Paws::LookoutEquipment::ListTagsForResourceResponse> instance

Lists all the tags for a specified resource, including key and value.


=head2 PutResourcePolicy

=over

=item ClientToken => Str

=item ResourceArn => Str

=item ResourcePolicy => Str

=item [PolicyRevisionId => Str]


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::PutResourcePolicy>

Returns: a L<Paws::LookoutEquipment::PutResourcePolicyResponse> instance

Creates a resource control policy for a given resource.


=head2 StartDataIngestionJob

=over

=item ClientToken => Str

=item DatasetName => Str

=item IngestionInputConfiguration => L<Paws::LookoutEquipment::IngestionInputConfiguration>

=item RoleArn => Str


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::StartDataIngestionJob>

Returns: a L<Paws::LookoutEquipment::StartDataIngestionJobResponse> instance

Starts a data ingestion job. Amazon Lookout for Equipment returns the
job status.


=head2 StartInferenceScheduler

=over

=item InferenceSchedulerName => Str


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::StartInferenceScheduler>

Returns: a L<Paws::LookoutEquipment::StartInferenceSchedulerResponse> instance

Starts an inference scheduler.


=head2 StartRetrainingScheduler

=over

=item ModelName => Str


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::StartRetrainingScheduler>

Returns: a L<Paws::LookoutEquipment::StartRetrainingSchedulerResponse> instance

Starts a retraining scheduler.


=head2 StopInferenceScheduler

=over

=item InferenceSchedulerName => Str


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::StopInferenceScheduler>

Returns: a L<Paws::LookoutEquipment::StopInferenceSchedulerResponse> instance

Stops an inference scheduler.


=head2 StopRetrainingScheduler

=over

=item ModelName => Str


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::StopRetrainingScheduler>

Returns: a L<Paws::LookoutEquipment::StopRetrainingSchedulerResponse> instance

Stops a retraining scheduler.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::LookoutEquipment::Tag>]


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::TagResource>

Returns: a L<Paws::LookoutEquipment::TagResourceResponse> instance

Associates a given tag to a resource in your account. A tag is a
key-value pair which can be added to an Amazon Lookout for Equipment
resource as metadata. Tags can be used for organizing your resources as
well as helping you to search and filter by tag. Multiple tags can be
added to a resource, either when you create it, or later. Up to 50 tags
can be associated with each resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::UntagResource>

Returns: a L<Paws::LookoutEquipment::UntagResourceResponse> instance

Removes a specific tag from a given resource. The tag is specified by
its key.


=head2 UpdateActiveModelVersion

=over

=item ModelName => Str

=item ModelVersion => Int


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::UpdateActiveModelVersion>

Returns: a L<Paws::LookoutEquipment::UpdateActiveModelVersionResponse> instance

Sets the active model version for a given machine learning model.


=head2 UpdateInferenceScheduler

=over

=item InferenceSchedulerName => Str

=item [DataDelayOffsetInMinutes => Int]

=item [DataInputConfiguration => L<Paws::LookoutEquipment::InferenceInputConfiguration>]

=item [DataOutputConfiguration => L<Paws::LookoutEquipment::InferenceOutputConfiguration>]

=item [DataUploadFrequency => Str]

=item [RoleArn => Str]


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::UpdateInferenceScheduler>

Returns: nothing

Updates an inference scheduler.


=head2 UpdateLabelGroup

=over

=item LabelGroupName => Str

=item [FaultCodes => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::UpdateLabelGroup>

Returns: nothing

Updates the label group.


=head2 UpdateModel

=over

=item ModelName => Str

=item [LabelsInputConfiguration => L<Paws::LookoutEquipment::LabelsInputConfiguration>]

=item [ModelDiagnosticsOutputConfiguration => L<Paws::LookoutEquipment::ModelDiagnosticsOutputConfiguration>]

=item [RoleArn => Str]


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::UpdateModel>

Returns: nothing

Updates a model in the account.


=head2 UpdateRetrainingScheduler

=over

=item ModelName => Str

=item [LookbackWindow => Str]

=item [PromoteMode => Str]

=item [RetrainingFrequency => Str]

=item [RetrainingStartDate => Str]


=back

Each argument is described in detail in: L<Paws::LookoutEquipment::UpdateRetrainingScheduler>

Returns: nothing

Updates a retraining scheduler.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

