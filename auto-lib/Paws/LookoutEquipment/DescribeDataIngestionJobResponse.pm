
package Paws::LookoutEquipment::DescribeDataIngestionJobResponse;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str');
  has DataEndTime => (is => 'ro', isa => 'Str');
  has DataQualitySummary => (is => 'ro', isa => 'Paws::LookoutEquipment::DataQualitySummary');
  has DatasetArn => (is => 'ro', isa => 'Str');
  has DataStartTime => (is => 'ro', isa => 'Str');
  has FailedReason => (is => 'ro', isa => 'Str');
  has IngestedDataSize => (is => 'ro', isa => 'Int');
  has IngestedFilesSummary => (is => 'ro', isa => 'Paws::LookoutEquipment::IngestedFilesSummary');
  has IngestionInputConfiguration => (is => 'ro', isa => 'Paws::LookoutEquipment::IngestionInputConfiguration');
  has JobId => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str');
  has SourceDatasetArn => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StatusDetail => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::DescribeDataIngestionJobResponse

=head1 ATTRIBUTES


=head2 CreatedAt => Str

The time at which the data ingestion job was created.


=head2 DataEndTime => Str

Indicates the latest timestamp corresponding to data that was
successfully ingested during this specific ingestion job.


=head2 DataQualitySummary => L<Paws::LookoutEquipment::DataQualitySummary>

Gives statistics about a completed ingestion job. These statistics
primarily relate to quantifying incorrect data such as
MissingCompleteSensorData, MissingSensorData, UnsupportedDateFormats,
InsufficientSensorData, and DuplicateTimeStamps.


=head2 DatasetArn => Str

The Amazon Resource Name (ARN) of the dataset being used in the data
ingestion job.


=head2 DataStartTime => Str

Indicates the earliest timestamp corresponding to data that was
successfully ingested during this specific ingestion job.


=head2 FailedReason => Str

Specifies the reason for failure when a data ingestion job has failed.


=head2 IngestedDataSize => Int

Indicates the size of the ingested dataset.


=head2 IngestedFilesSummary => L<Paws::LookoutEquipment::IngestedFilesSummary>




=head2 IngestionInputConfiguration => L<Paws::LookoutEquipment::IngestionInputConfiguration>

Specifies the S3 location configuration for the data input for the data
ingestion job.


=head2 JobId => Str

Indicates the job ID of the data ingestion job.


=head2 RoleArn => Str

The Amazon Resource Name (ARN) of an IAM role with permission to access
the data source being ingested.


=head2 SourceDatasetArn => Str

The Amazon Resource Name (ARN) of the source dataset from which the
data used for the data ingestion job was imported from.


=head2 Status => Str

Indicates the status of the C<DataIngestionJob> operation.

Valid values are: C<"IN_PROGRESS">, C<"SUCCESS">, C<"FAILED">, C<"IMPORT_IN_PROGRESS">
=head2 StatusDetail => Str

Provides details about status of the ingestion job that is currently in
progress.


=head2 _request_id => Str


=cut

1;