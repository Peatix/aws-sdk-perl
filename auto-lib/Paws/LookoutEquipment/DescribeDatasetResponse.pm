
package Paws::LookoutEquipment::DescribeDatasetResponse;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str');
  has DataEndTime => (is => 'ro', isa => 'Str');
  has DataQualitySummary => (is => 'ro', isa => 'Paws::LookoutEquipment::DataQualitySummary');
  has DatasetArn => (is => 'ro', isa => 'Str');
  has DatasetName => (is => 'ro', isa => 'Str');
  has DataStartTime => (is => 'ro', isa => 'Str');
  has IngestedFilesSummary => (is => 'ro', isa => 'Paws::LookoutEquipment::IngestedFilesSummary');
  has IngestionInputConfiguration => (is => 'ro', isa => 'Paws::LookoutEquipment::IngestionInputConfiguration');
  has LastUpdatedAt => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str');
  has Schema => (is => 'ro', isa => 'Str');
  has ServerSideKmsKeyId => (is => 'ro', isa => 'Str');
  has SourceDatasetArn => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::DescribeDatasetResponse

=head1 ATTRIBUTES


=head2 CreatedAt => Str

Specifies the time the dataset was created in Lookout for Equipment.


=head2 DataEndTime => Str

Indicates the latest timestamp corresponding to data that was
successfully ingested during the most recent ingestion of this
particular dataset.


=head2 DataQualitySummary => L<Paws::LookoutEquipment::DataQualitySummary>

Gives statistics associated with the given dataset for the latest
successful associated ingestion job id. These statistics primarily
relate to quantifying incorrect data such as MissingCompleteSensorData,
MissingSensorData, UnsupportedDateFormats, InsufficientSensorData, and
DuplicateTimeStamps.


=head2 DatasetArn => Str

The Amazon Resource Name (ARN) of the dataset being described.


=head2 DatasetName => Str

The name of the dataset being described.


=head2 DataStartTime => Str

Indicates the earliest timestamp corresponding to data that was
successfully ingested during the most recent ingestion of this
particular dataset.


=head2 IngestedFilesSummary => L<Paws::LookoutEquipment::IngestedFilesSummary>

IngestedFilesSummary associated with the given dataset for the latest
successful associated ingestion job id.


=head2 IngestionInputConfiguration => L<Paws::LookoutEquipment::IngestionInputConfiguration>

Specifies the S3 location configuration for the data input for the data
ingestion job.


=head2 LastUpdatedAt => Str

Specifies the time the dataset was last updated, if it was.


=head2 RoleArn => Str

The Amazon Resource Name (ARN) of the IAM role that you are using for
this the data ingestion job.


=head2 Schema => Str

A JSON description of the data that is in each time series dataset,
including names, column names, and data types.


=head2 ServerSideKmsKeyId => Str

Provides the identifier of the KMS key used to encrypt dataset data by
Amazon Lookout for Equipment.


=head2 SourceDatasetArn => Str

The Amazon Resource Name (ARN) of the source dataset from which the
current data being described was imported from.


=head2 Status => Str

Indicates the status of the dataset.

Valid values are: C<"CREATED">, C<"INGESTION_IN_PROGRESS">, C<"ACTIVE">, C<"IMPORT_IN_PROGRESS">
=head2 _request_id => Str


=cut

1;