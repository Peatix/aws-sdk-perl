
package Paws::TimestreamWrite::CreateBatchLoadTask;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has DataModelConfiguration => (is => 'ro', isa => 'Paws::TimestreamWrite::DataModelConfiguration');
  has DataSourceConfiguration => (is => 'ro', isa => 'Paws::TimestreamWrite::DataSourceConfiguration', required => 1);
  has RecordVersion => (is => 'ro', isa => 'Int');
  has ReportConfiguration => (is => 'ro', isa => 'Paws::TimestreamWrite::ReportConfiguration', required => 1);
  has TargetDatabaseName => (is => 'ro', isa => 'Str', required => 1);
  has TargetTableName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateBatchLoadTask');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::TimestreamWrite::CreateBatchLoadTaskResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamWrite::CreateBatchLoadTask - Arguments for method CreateBatchLoadTask on L<Paws::TimestreamWrite>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateBatchLoadTask on the
L<Amazon Timestream Write|Paws::TimestreamWrite> service. Use the attributes of this class
as arguments to method CreateBatchLoadTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateBatchLoadTask.

=head1 SYNOPSIS

    my $ingest.timestream = Paws->service('TimestreamWrite');
    my $CreateBatchLoadTaskResponse = $ingest . timestream->CreateBatchLoadTask(
      DataSourceConfiguration => {
        DataFormat                => 'CSV',    # values: CSV
        DataSourceS3Configuration => {
          BucketName      => 'MyS3BucketName',    # min: 3, max: 63
          ObjectKeyPrefix => 'MyS3ObjectKey',     # min: 1, max: 1024; OPTIONAL
        },
        CsvConfiguration => {
          ColumnSeparator => 'MyStringValue1',      # min: 1, max: 1; OPTIONAL
          EscapeChar      => 'MyStringValue1',      # min: 1, max: 1; OPTIONAL
          NullValue       => 'MyStringValue256',    # min: 1, max: 256; OPTIONAL
          QuoteChar       => 'MyStringValue1',      # min: 1, max: 1; OPTIONAL
          TrimWhiteSpace  => 1,                     # OPTIONAL
        },    # OPTIONAL
      },
      ReportConfiguration => {
        ReportS3Configuration => {
          BucketName       => 'MyS3BucketName',     # min: 3, max: 63
          EncryptionOption => 'SSE_S3',    # values: SSE_S3, SSE_KMS; OPTIONAL
          KmsKeyId         => 'MyStringValue2048', # min: 1, max: 2048; OPTIONAL
          ObjectKeyPrefix => 'MyS3ObjectKeyPrefix', # min: 1, max: 928; OPTIONAL
        },    # OPTIONAL
      },
      TargetDatabaseName     => 'MyResourceCreateAPIName',
      TargetTableName        => 'MyResourceCreateAPIName',
      ClientToken            => 'MyClientRequestToken',      # OPTIONAL
      DataModelConfiguration => {
        DataModel => {
          DimensionMappings => [
            {
              DestinationColumn => 'MySchemaName',    # min: 1; OPTIONAL
              SourceColumn      => 'MySchemaName',    # min: 1; OPTIONAL
            },
            ...
          ],    # min: 1
          MeasureNameColumn => 'MyStringValue256',  # min: 1, max: 256; OPTIONAL
          MixedMeasureMappings => [
            {
              MeasureValueType => 'DOUBLE'
              ,    # values: DOUBLE, BIGINT, VARCHAR, BOOLEAN, TIMESTAMP, MULTI
              MeasureName => 'MySchemaName',    # min: 1; OPTIONAL
              MultiMeasureAttributeMappings => [
                {
                  SourceColumn     => 'MySchemaName',    # min: 1; OPTIONAL
                  MeasureValueType => 'DOUBLE'
                  , # values: DOUBLE, BIGINT, BOOLEAN, VARCHAR, TIMESTAMP; OPTIONAL
                  TargetMultiMeasureAttributeName =>
                    'MySchemaName',    # min: 1; OPTIONAL
                },
                ...
              ],    # min: 1; OPTIONAL
              SourceColumn      => 'MySchemaName',    # min: 1; OPTIONAL
              TargetMeasureName => 'MySchemaName',    # min: 1; OPTIONAL
            },
            ...
          ],    # min: 1; OPTIONAL
          MultiMeasureMappings => {
            MultiMeasureAttributeMappings => [
              {
                SourceColumn     => 'MySchemaName',    # min: 1; OPTIONAL
                MeasureValueType => 'DOUBLE'
                , # values: DOUBLE, BIGINT, BOOLEAN, VARCHAR, TIMESTAMP; OPTIONAL
                TargetMultiMeasureAttributeName =>
                  'MySchemaName',    # min: 1; OPTIONAL
              },
              ...
            ],    # min: 1; OPTIONAL
            TargetMultiMeasureName => 'MySchemaName',    # min: 1; OPTIONAL
          },    # OPTIONAL
          TimeColumn => 'MyStringValue256',    # min: 1, max: 256; OPTIONAL
          TimeUnit   => 'MILLISECONDS'
          , # values: MILLISECONDS, SECONDS, MICROSECONDS, NANOSECONDS; OPTIONAL
        },    # OPTIONAL
        DataModelS3Configuration => {
          BucketName => 'MyS3BucketName',    # min: 3, max: 63
          ObjectKey  => 'MyS3ObjectKey',     # min: 1, max: 1024; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      RecordVersion => 1,    # OPTIONAL
    );

    # Results:
    my $TaskId = $CreateBatchLoadTaskResponse->TaskId;

    # Returns a L<Paws::TimestreamWrite::CreateBatchLoadTaskResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ingest.timestream/CreateBatchLoadTask>

=head1 ATTRIBUTES


=head2 ClientToken => Str





=head2 DataModelConfiguration => L<Paws::TimestreamWrite::DataModelConfiguration>





=head2 B<REQUIRED> DataSourceConfiguration => L<Paws::TimestreamWrite::DataSourceConfiguration>

Defines configuration details about the data source for a batch load
task.



=head2 RecordVersion => Int





=head2 B<REQUIRED> ReportConfiguration => L<Paws::TimestreamWrite::ReportConfiguration>





=head2 B<REQUIRED> TargetDatabaseName => Str

Target Timestream database for a batch load task.



=head2 B<REQUIRED> TargetTableName => Str

Target Timestream table for a batch load task.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateBatchLoadTask in L<Paws::TimestreamWrite>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

