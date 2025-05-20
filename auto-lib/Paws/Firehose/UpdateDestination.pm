
package Paws::Firehose::UpdateDestination;
  use Moose;
  has AmazonOpenSearchServerlessDestinationUpdate => (is => 'ro', isa => 'Paws::Firehose::AmazonOpenSearchServerlessDestinationUpdate');
  has AmazonopensearchserviceDestinationUpdate => (is => 'ro', isa => 'Paws::Firehose::AmazonopensearchserviceDestinationUpdate');
  has CurrentDeliveryStreamVersionId => (is => 'ro', isa => 'Str', required => 1);
  has DeliveryStreamName => (is => 'ro', isa => 'Str', required => 1);
  has DestinationId => (is => 'ro', isa => 'Str', required => 1);
  has ElasticsearchDestinationUpdate => (is => 'ro', isa => 'Paws::Firehose::ElasticsearchDestinationUpdate');
  has ExtendedS3DestinationUpdate => (is => 'ro', isa => 'Paws::Firehose::ExtendedS3DestinationUpdate');
  has HttpEndpointDestinationUpdate => (is => 'ro', isa => 'Paws::Firehose::HttpEndpointDestinationUpdate');
  has IcebergDestinationUpdate => (is => 'ro', isa => 'Paws::Firehose::IcebergDestinationUpdate');
  has RedshiftDestinationUpdate => (is => 'ro', isa => 'Paws::Firehose::RedshiftDestinationUpdate');
  has S3DestinationUpdate => (is => 'ro', isa => 'Paws::Firehose::S3DestinationUpdate');
  has SnowflakeDestinationUpdate => (is => 'ro', isa => 'Paws::Firehose::SnowflakeDestinationUpdate');
  has SplunkDestinationUpdate => (is => 'ro', isa => 'Paws::Firehose::SplunkDestinationUpdate');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDestination');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Firehose::UpdateDestinationOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Firehose::UpdateDestination - Arguments for method UpdateDestination on L<Paws::Firehose>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDestination on the
L<Amazon Kinesis Firehose|Paws::Firehose> service. Use the attributes of this class
as arguments to method UpdateDestination.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDestination.

=head1 SYNOPSIS

    my $firehose = Paws->service('Firehose');
    my $UpdateDestinationOutput = $firehose->UpdateDestination(
      CurrentDeliveryStreamVersionId => 'MyDeliveryStreamVersionId',
      DeliveryStreamName             => 'MyDeliveryStreamName',
      DestinationId                  => 'MyDestinationId',
      AmazonOpenSearchServerlessDestinationUpdate => {
        BufferingHints => {
          IntervalInSeconds => 1,    # max: 900; OPTIONAL
          SizeInMBs         => 1,    # min: 1, max: 100; OPTIONAL
        },    # OPTIONAL
        CloudWatchLoggingOptions => {
          Enabled       => 1,                    # OPTIONAL
          LogGroupName  => 'MyLogGroupName',     # max: 512; OPTIONAL
          LogStreamName => 'MyLogStreamName',    # max: 512; OPTIONAL
        },    # OPTIONAL
        CollectionEndpoint => 'MyAmazonOpenSearchServerlessCollectionEndpoint'
        ,     # min: 1, max: 512; OPTIONAL
        IndexName =>
          'MyAmazonOpenSearchServerlessIndexName',   # min: 1, max: 80; OPTIONAL
        ProcessingConfiguration => {
          Enabled    => 1,                           # OPTIONAL
          Processors => [
            {
              Type => 'RecordDeAggregation'
              , # values: RecordDeAggregation, Decompression, CloudWatchLogProcessing, Lambda, MetadataExtraction, AppendDelimiterToRecord
              Parameters => [
                {
                  ParameterName => 'LambdaArn'
                  , # values: LambdaArn, NumberOfRetries, MetadataExtractionQuery, JsonParsingEngine, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds, SubRecordType, Delimiter, CompressionFormat, DataMessageExtraction
                  ParameterValue =>
                    'MyProcessorParameterValue',    # min: 1, max: 5120

                },
                ...
              ],    # OPTIONAL
            },
            ...
          ],    # OPTIONAL
        },    # OPTIONAL
        RetryOptions => {
          DurationInSeconds => 1,    # max: 7200; OPTIONAL
        },    # OPTIONAL
        RoleARN  => 'MyRoleARN',    # min: 1, max: 512; OPTIONAL
        S3Update => {
          BucketARN      => 'MyBucketARN',    # min: 1, max: 2048; OPTIONAL
          BufferingHints => {
            IntervalInSeconds => 1,           # max: 900; OPTIONAL
            SizeInMBs         => 1,           # min: 1, max: 128; OPTIONAL
          },    # OPTIONAL
          CloudWatchLoggingOptions => {
            Enabled       => 1,                    # OPTIONAL
            LogGroupName  => 'MyLogGroupName',     # max: 512; OPTIONAL
            LogStreamName => 'MyLogStreamName',    # max: 512; OPTIONAL
          },    # OPTIONAL
          CompressionFormat => 'UNCOMPRESSED'
          ,   # values: UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY; OPTIONAL
          EncryptionConfiguration => {
            KMSEncryptionConfig => {
              AWSKMSKeyARN => 'MyAWSKMSKeyARN',    # min: 1, max: 512

            },    # OPTIONAL
            NoEncryptionConfig =>
              'NoEncryption',    # values: NoEncryption; OPTIONAL
          },    # OPTIONAL
          ErrorOutputPrefix => 'MyErrorOutputPrefix',    # max: 1024; OPTIONAL
          Prefix            => 'MyPrefix',               # max: 1024; OPTIONAL
          RoleARN           => 'MyRoleARN',    # min: 1, max: 512; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      AmazonopensearchserviceDestinationUpdate => {
        BufferingHints => {
          IntervalInSeconds => 1,    # max: 900; OPTIONAL
          SizeInMBs         => 1,    # min: 1, max: 100; OPTIONAL
        },    # OPTIONAL
        CloudWatchLoggingOptions => {
          Enabled       => 1,                    # OPTIONAL
          LogGroupName  => 'MyLogGroupName',     # max: 512; OPTIONAL
          LogStreamName => 'MyLogStreamName',    # max: 512; OPTIONAL
        },    # OPTIONAL
        ClusterEndpoint => 'MyAmazonopensearchserviceClusterEndpoint'
        ,     # min: 1, max: 512; OPTIONAL
        DocumentIdOptions => {
          DefaultDocumentIdFormat =>
            'FIREHOSE_DEFAULT',    # values: FIREHOSE_DEFAULT, NO_DOCUMENT_ID

        },    # OPTIONAL
        DomainARN =>
          'MyAmazonopensearchserviceDomainARN',    # min: 1, max: 512; OPTIONAL
        IndexName =>
          'MyAmazonopensearchserviceIndexName',    # min: 1, max: 80; OPTIONAL
        IndexRotationPeriod => 'NoRotation'
        ,    # values: NoRotation, OneHour, OneDay, OneWeek, OneMonth; OPTIONAL
        ProcessingConfiguration => {
          Enabled    => 1,    # OPTIONAL
          Processors => [
            {
              Type => 'RecordDeAggregation'
              , # values: RecordDeAggregation, Decompression, CloudWatchLogProcessing, Lambda, MetadataExtraction, AppendDelimiterToRecord
              Parameters => [
                {
                  ParameterName => 'LambdaArn'
                  , # values: LambdaArn, NumberOfRetries, MetadataExtractionQuery, JsonParsingEngine, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds, SubRecordType, Delimiter, CompressionFormat, DataMessageExtraction
                  ParameterValue =>
                    'MyProcessorParameterValue',    # min: 1, max: 5120

                },
                ...
              ],    # OPTIONAL
            },
            ...
          ],    # OPTIONAL
        },    # OPTIONAL
        RetryOptions => {
          DurationInSeconds => 1,    # max: 7200; OPTIONAL
        },    # OPTIONAL
        RoleARN  => 'MyRoleARN',    # min: 1, max: 512; OPTIONAL
        S3Update => {
          BucketARN      => 'MyBucketARN',    # min: 1, max: 2048; OPTIONAL
          BufferingHints => {
            IntervalInSeconds => 1,           # max: 900; OPTIONAL
            SizeInMBs         => 1,           # min: 1, max: 128; OPTIONAL
          },    # OPTIONAL
          CloudWatchLoggingOptions => {
            Enabled       => 1,                    # OPTIONAL
            LogGroupName  => 'MyLogGroupName',     # max: 512; OPTIONAL
            LogStreamName => 'MyLogStreamName',    # max: 512; OPTIONAL
          },    # OPTIONAL
          CompressionFormat => 'UNCOMPRESSED'
          ,   # values: UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY; OPTIONAL
          EncryptionConfiguration => {
            KMSEncryptionConfig => {
              AWSKMSKeyARN => 'MyAWSKMSKeyARN',    # min: 1, max: 512

            },    # OPTIONAL
            NoEncryptionConfig =>
              'NoEncryption',    # values: NoEncryption; OPTIONAL
          },    # OPTIONAL
          ErrorOutputPrefix => 'MyErrorOutputPrefix',    # max: 1024; OPTIONAL
          Prefix            => 'MyPrefix',               # max: 1024; OPTIONAL
          RoleARN           => 'MyRoleARN',    # min: 1, max: 512; OPTIONAL
        },    # OPTIONAL
        TypeName => 'MyAmazonopensearchserviceTypeName',    # max: 100; OPTIONAL
      },    # OPTIONAL
      ElasticsearchDestinationUpdate => {
        BufferingHints => {
          IntervalInSeconds => 1,    # max: 900; OPTIONAL
          SizeInMBs         => 1,    # min: 1, max: 100; OPTIONAL
        },    # OPTIONAL
        CloudWatchLoggingOptions => {
          Enabled       => 1,                    # OPTIONAL
          LogGroupName  => 'MyLogGroupName',     # max: 512; OPTIONAL
          LogStreamName => 'MyLogStreamName',    # max: 512; OPTIONAL
        },    # OPTIONAL
        ClusterEndpoint =>
          'MyElasticsearchClusterEndpoint',    # min: 1, max: 512; OPTIONAL
        DocumentIdOptions => {
          DefaultDocumentIdFormat =>
            'FIREHOSE_DEFAULT',    # values: FIREHOSE_DEFAULT, NO_DOCUMENT_ID

        },    # OPTIONAL
        DomainARN => 'MyElasticsearchDomainARN',    # min: 1, max: 512; OPTIONAL
        IndexName => 'MyElasticsearchIndexName',    # min: 1, max: 80; OPTIONAL
        IndexRotationPeriod => 'NoRotation'
        ,    # values: NoRotation, OneHour, OneDay, OneWeek, OneMonth; OPTIONAL
        ProcessingConfiguration => {
          Enabled    => 1,    # OPTIONAL
          Processors => [
            {
              Type => 'RecordDeAggregation'
              , # values: RecordDeAggregation, Decompression, CloudWatchLogProcessing, Lambda, MetadataExtraction, AppendDelimiterToRecord
              Parameters => [
                {
                  ParameterName => 'LambdaArn'
                  , # values: LambdaArn, NumberOfRetries, MetadataExtractionQuery, JsonParsingEngine, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds, SubRecordType, Delimiter, CompressionFormat, DataMessageExtraction
                  ParameterValue =>
                    'MyProcessorParameterValue',    # min: 1, max: 5120

                },
                ...
              ],    # OPTIONAL
            },
            ...
          ],    # OPTIONAL
        },    # OPTIONAL
        RetryOptions => {
          DurationInSeconds => 1,    # max: 7200; OPTIONAL
        },    # OPTIONAL
        RoleARN  => 'MyRoleARN',    # min: 1, max: 512; OPTIONAL
        S3Update => {
          BucketARN      => 'MyBucketARN',    # min: 1, max: 2048; OPTIONAL
          BufferingHints => {
            IntervalInSeconds => 1,           # max: 900; OPTIONAL
            SizeInMBs         => 1,           # min: 1, max: 128; OPTIONAL
          },    # OPTIONAL
          CloudWatchLoggingOptions => {
            Enabled       => 1,                    # OPTIONAL
            LogGroupName  => 'MyLogGroupName',     # max: 512; OPTIONAL
            LogStreamName => 'MyLogStreamName',    # max: 512; OPTIONAL
          },    # OPTIONAL
          CompressionFormat => 'UNCOMPRESSED'
          ,   # values: UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY; OPTIONAL
          EncryptionConfiguration => {
            KMSEncryptionConfig => {
              AWSKMSKeyARN => 'MyAWSKMSKeyARN',    # min: 1, max: 512

            },    # OPTIONAL
            NoEncryptionConfig =>
              'NoEncryption',    # values: NoEncryption; OPTIONAL
          },    # OPTIONAL
          ErrorOutputPrefix => 'MyErrorOutputPrefix',    # max: 1024; OPTIONAL
          Prefix            => 'MyPrefix',               # max: 1024; OPTIONAL
          RoleARN           => 'MyRoleARN',    # min: 1, max: 512; OPTIONAL
        },    # OPTIONAL
        TypeName => 'MyElasticsearchTypeName',    # max: 100; OPTIONAL
      },    # OPTIONAL
      ExtendedS3DestinationUpdate => {
        BucketARN      => 'MyBucketARN',    # min: 1, max: 2048; OPTIONAL
        BufferingHints => {
          IntervalInSeconds => 1,           # max: 900; OPTIONAL
          SizeInMBs         => 1,           # min: 1, max: 128; OPTIONAL
        },    # OPTIONAL
        CloudWatchLoggingOptions => {
          Enabled       => 1,                    # OPTIONAL
          LogGroupName  => 'MyLogGroupName',     # max: 512; OPTIONAL
          LogStreamName => 'MyLogStreamName',    # max: 512; OPTIONAL
        },    # OPTIONAL
        CompressionFormat => 'UNCOMPRESSED'
        ,     # values: UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY; OPTIONAL
        CustomTimeZone => 'MyCustomTimeZone',    # max: 50; OPTIONAL
        DataFormatConversionConfiguration => {
          Enabled                  => 1,         # OPTIONAL
          InputFormatConfiguration => {
            Deserializer => {
              HiveJsonSerDe => {
                TimestampFormats => [
                  'MyNonEmptyString', ...    # min: 1, max: 1024
                ],    # OPTIONAL
              },    # OPTIONAL
              OpenXJsonSerDe => {
                CaseInsensitive         => 1,    # OPTIONAL
                ColumnToJsonKeyMappings => {
                  'MyNonEmptyStringWithoutWhitespace' => 'MyNonEmptyString'
                  ,    # key: min: 1, max: 1024, value: min: 1, max: 1024
                },    # OPTIONAL
                ConvertDotsInJsonKeysToUnderscores => 1,    # OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          OutputFormatConfiguration => {
            Serializer => {
              OrcSerDe => {
                BlockSizeBytes     => 1,    # min: 67108864; OPTIONAL
                BloomFilterColumns => [
                  'MyNonEmptyStringWithoutWhitespace', ...   # min: 1, max: 1024
                ],    # OPTIONAL
                BloomFilterFalsePositiveProbability => 1,    # max: 1; OPTIONAL
                Compression => 'NONE',    # values: NONE, ZLIB, SNAPPY; OPTIONAL
                DictionaryKeyThreshold => 1,    # max: 1; OPTIONAL
                EnablePadding          => 1,    # OPTIONAL
                FormatVersion    => 'V0_11',    # values: V0_11, V0_12; OPTIONAL
                PaddingTolerance => 1,          # max: 1; OPTIONAL
                RowIndexStride   => 1,          # min: 1000; OPTIONAL
                StripeSizeBytes  => 1,          # min: 8388608; OPTIONAL
              },    # OPTIONAL
              ParquetSerDe => {
                BlockSizeBytes => 1,    # min: 67108864; OPTIONAL
                Compression    =>
                  'UNCOMPRESSED', # values: UNCOMPRESSED, GZIP, SNAPPY; OPTIONAL
                EnableDictionaryCompression => 1,     # OPTIONAL
                MaxPaddingBytes             => 1,     # OPTIONAL
                PageSizeBytes               => 1,     # min: 65536; OPTIONAL
                WriterVersion               => 'V1',  # values: V1, V2; OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          SchemaConfiguration => {
            CatalogId =>
              'MyNonEmptyStringWithoutWhitespace',    # min: 1, max: 1024
            DatabaseName =>
              'MyNonEmptyStringWithoutWhitespace',    # min: 1, max: 1024
            Region  => 'MyNonEmptyStringWithoutWhitespace',  # min: 1, max: 1024
            RoleARN => 'MyNonEmptyStringWithoutWhitespace',  # min: 1, max: 1024
            TableName =>
              'MyNonEmptyStringWithoutWhitespace',           # min: 1, max: 1024
            VersionId =>
              'MyNonEmptyStringWithoutWhitespace',           # min: 1, max: 1024
          },    # OPTIONAL
        },    # OPTIONAL
        DynamicPartitioningConfiguration => {
          Enabled      => 1,    # OPTIONAL
          RetryOptions => {
            DurationInSeconds => 1,    # max: 7200; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        EncryptionConfiguration => {
          KMSEncryptionConfig => {
            AWSKMSKeyARN => 'MyAWSKMSKeyARN',    # min: 1, max: 512

          },    # OPTIONAL
          NoEncryptionConfig => 'NoEncryption', # values: NoEncryption; OPTIONAL
        },    # OPTIONAL
        ErrorOutputPrefix       => 'MyErrorOutputPrefix',  # max: 1024; OPTIONAL
        FileExtension           => 'MyFileExtension',      # max: 128; OPTIONAL
        Prefix                  => 'MyPrefix',             # max: 1024; OPTIONAL
        ProcessingConfiguration => {
          Enabled    => 1,                                 # OPTIONAL
          Processors => [
            {
              Type => 'RecordDeAggregation'
              , # values: RecordDeAggregation, Decompression, CloudWatchLogProcessing, Lambda, MetadataExtraction, AppendDelimiterToRecord
              Parameters => [
                {
                  ParameterName => 'LambdaArn'
                  , # values: LambdaArn, NumberOfRetries, MetadataExtractionQuery, JsonParsingEngine, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds, SubRecordType, Delimiter, CompressionFormat, DataMessageExtraction
                  ParameterValue =>
                    'MyProcessorParameterValue',    # min: 1, max: 5120

                },
                ...
              ],    # OPTIONAL
            },
            ...
          ],    # OPTIONAL
        },    # OPTIONAL
        RoleARN        => 'MyRoleARN',    # min: 1, max: 512; OPTIONAL
        S3BackupMode   => 'Disabled',     # values: Disabled, Enabled; OPTIONAL
        S3BackupUpdate => {
          BucketARN      => 'MyBucketARN',    # min: 1, max: 2048; OPTIONAL
          BufferingHints => {
            IntervalInSeconds => 1,           # max: 900; OPTIONAL
            SizeInMBs         => 1,           # min: 1, max: 128; OPTIONAL
          },    # OPTIONAL
          CloudWatchLoggingOptions => {
            Enabled       => 1,                    # OPTIONAL
            LogGroupName  => 'MyLogGroupName',     # max: 512; OPTIONAL
            LogStreamName => 'MyLogStreamName',    # max: 512; OPTIONAL
          },    # OPTIONAL
          CompressionFormat => 'UNCOMPRESSED'
          ,   # values: UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY; OPTIONAL
          EncryptionConfiguration => {
            KMSEncryptionConfig => {
              AWSKMSKeyARN => 'MyAWSKMSKeyARN',    # min: 1, max: 512

            },    # OPTIONAL
            NoEncryptionConfig =>
              'NoEncryption',    # values: NoEncryption; OPTIONAL
          },    # OPTIONAL
          ErrorOutputPrefix => 'MyErrorOutputPrefix',    # max: 1024; OPTIONAL
          Prefix            => 'MyPrefix',               # max: 1024; OPTIONAL
          RoleARN           => 'MyRoleARN',    # min: 1, max: 512; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      HttpEndpointDestinationUpdate => {
        BufferingHints => {
          IntervalInSeconds => 1,    # max: 900; OPTIONAL
          SizeInMBs         => 1,    # min: 1, max: 64; OPTIONAL
        },    # OPTIONAL
        CloudWatchLoggingOptions => {
          Enabled       => 1,                    # OPTIONAL
          LogGroupName  => 'MyLogGroupName',     # max: 512; OPTIONAL
          LogStreamName => 'MyLogStreamName',    # max: 512; OPTIONAL
        },    # OPTIONAL
        EndpointConfiguration => {
          Url       => 'MyHttpEndpointUrl',         # min: 1, max: 1000
          AccessKey => 'MyHttpEndpointAccessKey',   # max: 4096; OPTIONAL
          Name      => 'MyHttpEndpointName',        # min: 1, max: 256; OPTIONAL
        },    # OPTIONAL
        ProcessingConfiguration => {
          Enabled    => 1,    # OPTIONAL
          Processors => [
            {
              Type => 'RecordDeAggregation'
              , # values: RecordDeAggregation, Decompression, CloudWatchLogProcessing, Lambda, MetadataExtraction, AppendDelimiterToRecord
              Parameters => [
                {
                  ParameterName => 'LambdaArn'
                  , # values: LambdaArn, NumberOfRetries, MetadataExtractionQuery, JsonParsingEngine, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds, SubRecordType, Delimiter, CompressionFormat, DataMessageExtraction
                  ParameterValue =>
                    'MyProcessorParameterValue',    # min: 1, max: 5120

                },
                ...
              ],    # OPTIONAL
            },
            ...
          ],    # OPTIONAL
        },    # OPTIONAL
        RequestConfiguration => {
          CommonAttributes => [
            {
              AttributeName => 'MyHttpEndpointAttributeName', # min: 1, max: 256
              AttributeValue => 'MyHttpEndpointAttributeValue',    # max: 1024

            },
            ...
          ],    # max: 50; OPTIONAL
          ContentEncoding => 'NONE',    # values: NONE, GZIP; OPTIONAL
        },    # OPTIONAL
        RetryOptions => {
          DurationInSeconds => 1,    # max: 7200; OPTIONAL
        },    # OPTIONAL
        RoleARN      => 'MyRoleARN',    # min: 1, max: 512; OPTIONAL
        S3BackupMode =>
          'FailedDataOnly',    # values: FailedDataOnly, AllData; OPTIONAL
        S3Update => {
          BucketARN      => 'MyBucketARN',    # min: 1, max: 2048; OPTIONAL
          BufferingHints => {
            IntervalInSeconds => 1,           # max: 900; OPTIONAL
            SizeInMBs         => 1,           # min: 1, max: 128; OPTIONAL
          },    # OPTIONAL
          CloudWatchLoggingOptions => {
            Enabled       => 1,                    # OPTIONAL
            LogGroupName  => 'MyLogGroupName',     # max: 512; OPTIONAL
            LogStreamName => 'MyLogStreamName',    # max: 512; OPTIONAL
          },    # OPTIONAL
          CompressionFormat => 'UNCOMPRESSED'
          ,   # values: UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY; OPTIONAL
          EncryptionConfiguration => {
            KMSEncryptionConfig => {
              AWSKMSKeyARN => 'MyAWSKMSKeyARN',    # min: 1, max: 512

            },    # OPTIONAL
            NoEncryptionConfig =>
              'NoEncryption',    # values: NoEncryption; OPTIONAL
          },    # OPTIONAL
          ErrorOutputPrefix => 'MyErrorOutputPrefix',    # max: 1024; OPTIONAL
          Prefix            => 'MyPrefix',               # max: 1024; OPTIONAL
          RoleARN           => 'MyRoleARN',    # min: 1, max: 512; OPTIONAL
        },    # OPTIONAL
        SecretsManagerConfiguration => {
          Enabled   => 1,                # OPTIONAL
          RoleARN   => 'MyRoleARN',      # min: 1, max: 512; OPTIONAL
          SecretARN => 'MySecretARN',    # min: 1, max: 2048; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      IcebergDestinationUpdate => {
        AppendOnly     => 1,    # OPTIONAL
        BufferingHints => {
          IntervalInSeconds => 1,    # max: 900; OPTIONAL
          SizeInMBs         => 1,    # min: 1, max: 128; OPTIONAL
        },    # OPTIONAL
        CatalogConfiguration => {
          CatalogARN => 'MyGlueDataCatalogARN',    # min: 1, max: 512; OPTIONAL
          WarehouseLocation =>
            'MyWarehouseLocation',                 # min: 1, max: 2048; OPTIONAL
        },    # OPTIONAL
        CloudWatchLoggingOptions => {
          Enabled       => 1,                    # OPTIONAL
          LogGroupName  => 'MyLogGroupName',     # max: 512; OPTIONAL
          LogStreamName => 'MyLogStreamName',    # max: 512; OPTIONAL
        },    # OPTIONAL
        DestinationTableConfigurationList => [
          {
            DestinationDatabaseName =>
              'MyStringWithLettersDigitsUnderscoresDots',    # min: 1, max: 255
            DestinationTableName =>
              'MyStringWithLettersDigitsUnderscoresDots',    # min: 1, max: 255
            PartitionSpec => {
              Identity => [
                {
                  SourceName =>
                    'MyNonEmptyStringWithoutWhitespace',    # min: 1, max: 1024

                },
                ...
              ],    # OPTIONAL
            },    # OPTIONAL
            S3ErrorOutputPrefix => 'MyErrorOutputPrefix',  # max: 1024; OPTIONAL
            UniqueKeys          => [
              'MyNonEmptyStringWithoutWhitespace', ...     # min: 1, max: 1024
            ],    # OPTIONAL
          },
          ...
        ],    # OPTIONAL
        ProcessingConfiguration => {
          Enabled    => 1,    # OPTIONAL
          Processors => [
            {
              Type => 'RecordDeAggregation'
              , # values: RecordDeAggregation, Decompression, CloudWatchLogProcessing, Lambda, MetadataExtraction, AppendDelimiterToRecord
              Parameters => [
                {
                  ParameterName => 'LambdaArn'
                  , # values: LambdaArn, NumberOfRetries, MetadataExtractionQuery, JsonParsingEngine, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds, SubRecordType, Delimiter, CompressionFormat, DataMessageExtraction
                  ParameterValue =>
                    'MyProcessorParameterValue',    # min: 1, max: 5120

                },
                ...
              ],    # OPTIONAL
            },
            ...
          ],    # OPTIONAL
        },    # OPTIONAL
        RetryOptions => {
          DurationInSeconds => 1,    # max: 7200; OPTIONAL
        },    # OPTIONAL
        RoleARN      => 'MyRoleARN',    # min: 1, max: 512; OPTIONAL
        S3BackupMode =>
          'FailedDataOnly',    # values: FailedDataOnly, AllData; OPTIONAL
        S3Configuration => {
          BucketARN      => 'MyBucketARN',    # min: 1, max: 2048; OPTIONAL
          RoleARN        => 'MyRoleARN',      # min: 1, max: 512; OPTIONAL
          BufferingHints => {
            IntervalInSeconds => 1,           # max: 900; OPTIONAL
            SizeInMBs         => 1,           # min: 1, max: 128; OPTIONAL
          },    # OPTIONAL
          CloudWatchLoggingOptions => {
            Enabled       => 1,                    # OPTIONAL
            LogGroupName  => 'MyLogGroupName',     # max: 512; OPTIONAL
            LogStreamName => 'MyLogStreamName',    # max: 512; OPTIONAL
          },    # OPTIONAL
          CompressionFormat => 'UNCOMPRESSED'
          ,   # values: UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY; OPTIONAL
          EncryptionConfiguration => {
            KMSEncryptionConfig => {
              AWSKMSKeyARN => 'MyAWSKMSKeyARN',    # min: 1, max: 512

            },    # OPTIONAL
            NoEncryptionConfig =>
              'NoEncryption',    # values: NoEncryption; OPTIONAL
          },    # OPTIONAL
          ErrorOutputPrefix => 'MyErrorOutputPrefix',    # max: 1024; OPTIONAL
          Prefix            => 'MyPrefix',               # max: 1024; OPTIONAL
        },    # OPTIONAL
        SchemaEvolutionConfiguration => {
          Enabled => 1,    # OPTIONAL

        },    # OPTIONAL
        TableCreationConfiguration => {
          Enabled => 1,    # OPTIONAL

        },    # OPTIONAL
      },    # OPTIONAL
      RedshiftDestinationUpdate => {
        CloudWatchLoggingOptions => {
          Enabled       => 1,                    # OPTIONAL
          LogGroupName  => 'MyLogGroupName',     # max: 512; OPTIONAL
          LogStreamName => 'MyLogStreamName',    # max: 512; OPTIONAL
        },    # OPTIONAL
        ClusterJDBCURL => 'MyClusterJDBCURL',    # min: 1, max: 512; OPTIONAL
        CopyCommand    => {
          DataTableName    => 'MyDataTableName',       # min: 1, max: 512
          CopyOptions      => 'MyCopyOptions',         # max: 10240; OPTIONAL
          DataTableColumns => 'MyDataTableColumns',    # max: 10240; OPTIONAL
        },    # OPTIONAL
        Password                => 'MyPassword',    # min: 6, max: 512; OPTIONAL
        ProcessingConfiguration => {
          Enabled    => 1,                          # OPTIONAL
          Processors => [
            {
              Type => 'RecordDeAggregation'
              , # values: RecordDeAggregation, Decompression, CloudWatchLogProcessing, Lambda, MetadataExtraction, AppendDelimiterToRecord
              Parameters => [
                {
                  ParameterName => 'LambdaArn'
                  , # values: LambdaArn, NumberOfRetries, MetadataExtractionQuery, JsonParsingEngine, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds, SubRecordType, Delimiter, CompressionFormat, DataMessageExtraction
                  ParameterValue =>
                    'MyProcessorParameterValue',    # min: 1, max: 5120

                },
                ...
              ],    # OPTIONAL
            },
            ...
          ],    # OPTIONAL
        },    # OPTIONAL
        RetryOptions => {
          DurationInSeconds => 1,    # max: 7200; OPTIONAL
        },    # OPTIONAL
        RoleARN        => 'MyRoleARN',    # min: 1, max: 512; OPTIONAL
        S3BackupMode   => 'Disabled',     # values: Disabled, Enabled; OPTIONAL
        S3BackupUpdate => {
          BucketARN      => 'MyBucketARN',    # min: 1, max: 2048; OPTIONAL
          BufferingHints => {
            IntervalInSeconds => 1,           # max: 900; OPTIONAL
            SizeInMBs         => 1,           # min: 1, max: 128; OPTIONAL
          },    # OPTIONAL
          CloudWatchLoggingOptions => {
            Enabled       => 1,                    # OPTIONAL
            LogGroupName  => 'MyLogGroupName',     # max: 512; OPTIONAL
            LogStreamName => 'MyLogStreamName',    # max: 512; OPTIONAL
          },    # OPTIONAL
          CompressionFormat => 'UNCOMPRESSED'
          ,   # values: UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY; OPTIONAL
          EncryptionConfiguration => {
            KMSEncryptionConfig => {
              AWSKMSKeyARN => 'MyAWSKMSKeyARN',    # min: 1, max: 512

            },    # OPTIONAL
            NoEncryptionConfig =>
              'NoEncryption',    # values: NoEncryption; OPTIONAL
          },    # OPTIONAL
          ErrorOutputPrefix => 'MyErrorOutputPrefix',    # max: 1024; OPTIONAL
          Prefix            => 'MyPrefix',               # max: 1024; OPTIONAL
          RoleARN           => 'MyRoleARN',    # min: 1, max: 512; OPTIONAL
        },    # OPTIONAL
        S3Update => {
          BucketARN      => 'MyBucketARN',    # min: 1, max: 2048; OPTIONAL
          BufferingHints => {
            IntervalInSeconds => 1,           # max: 900; OPTIONAL
            SizeInMBs         => 1,           # min: 1, max: 128; OPTIONAL
          },    # OPTIONAL
          CloudWatchLoggingOptions => {
            Enabled       => 1,                    # OPTIONAL
            LogGroupName  => 'MyLogGroupName',     # max: 512; OPTIONAL
            LogStreamName => 'MyLogStreamName',    # max: 512; OPTIONAL
          },    # OPTIONAL
          CompressionFormat => 'UNCOMPRESSED'
          ,   # values: UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY; OPTIONAL
          EncryptionConfiguration => {
            KMSEncryptionConfig => {
              AWSKMSKeyARN => 'MyAWSKMSKeyARN',    # min: 1, max: 512

            },    # OPTIONAL
            NoEncryptionConfig =>
              'NoEncryption',    # values: NoEncryption; OPTIONAL
          },    # OPTIONAL
          ErrorOutputPrefix => 'MyErrorOutputPrefix',    # max: 1024; OPTIONAL
          Prefix            => 'MyPrefix',               # max: 1024; OPTIONAL
          RoleARN           => 'MyRoleARN',    # min: 1, max: 512; OPTIONAL
        },    # OPTIONAL
        SecretsManagerConfiguration => {
          Enabled   => 1,                # OPTIONAL
          RoleARN   => 'MyRoleARN',      # min: 1, max: 512; OPTIONAL
          SecretARN => 'MySecretARN',    # min: 1, max: 2048; OPTIONAL
        },    # OPTIONAL
        Username => 'MyUsername',    # min: 1, max: 512; OPTIONAL
      },    # OPTIONAL
      S3DestinationUpdate => {
        BucketARN      => 'MyBucketARN',    # min: 1, max: 2048; OPTIONAL
        BufferingHints => {
          IntervalInSeconds => 1,           # max: 900; OPTIONAL
          SizeInMBs         => 1,           # min: 1, max: 128; OPTIONAL
        },    # OPTIONAL
        CloudWatchLoggingOptions => {
          Enabled       => 1,                    # OPTIONAL
          LogGroupName  => 'MyLogGroupName',     # max: 512; OPTIONAL
          LogStreamName => 'MyLogStreamName',    # max: 512; OPTIONAL
        },    # OPTIONAL
        CompressionFormat => 'UNCOMPRESSED'
        ,     # values: UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY; OPTIONAL
        EncryptionConfiguration => {
          KMSEncryptionConfig => {
            AWSKMSKeyARN => 'MyAWSKMSKeyARN',    # min: 1, max: 512

          },    # OPTIONAL
          NoEncryptionConfig => 'NoEncryption', # values: NoEncryption; OPTIONAL
        },    # OPTIONAL
        ErrorOutputPrefix => 'MyErrorOutputPrefix', # max: 1024; OPTIONAL
        Prefix            => 'MyPrefix',            # max: 1024; OPTIONAL
        RoleARN           => 'MyRoleARN',           # min: 1, max: 512; OPTIONAL
      },    # OPTIONAL
      SnowflakeDestinationUpdate => {
        AccountUrl => 'MySnowflakeAccountUrl',    # min: 24, max: 2048; OPTIONAL
        BufferingHints => {
          IntervalInSeconds => 1,                 # max: 900; OPTIONAL
          SizeInMBs         => 1,                 # min: 1, max: 128; OPTIONAL
        },    # OPTIONAL
        CloudWatchLoggingOptions => {
          Enabled       => 1,                    # OPTIONAL
          LogGroupName  => 'MyLogGroupName',     # max: 512; OPTIONAL
          LogStreamName => 'MyLogStreamName',    # max: 512; OPTIONAL
        },    # OPTIONAL
        ContentColumnName =>
          'MySnowflakeContentColumnName',    # min: 1, max: 255; OPTIONAL
        DataLoadingOption => 'JSON_MAPPING'
        , # values: JSON_MAPPING, VARIANT_CONTENT_MAPPING, VARIANT_CONTENT_AND_METADATA_MAPPING; OPTIONAL
        Database      => 'MySnowflakeDatabase',    # min: 1, max: 255; OPTIONAL
        KeyPassphrase =>
          'MySnowflakeKeyPassphrase',              # min: 7, max: 255; OPTIONAL
        MetaDataColumnName =>
          'MySnowflakeMetaDataColumnName',         # min: 1, max: 255; OPTIONAL
        PrivateKey => 'MySnowflakePrivateKey',   # min: 256, max: 4096; OPTIONAL
        ProcessingConfiguration => {
          Enabled    => 1,                       # OPTIONAL
          Processors => [
            {
              Type => 'RecordDeAggregation'
              , # values: RecordDeAggregation, Decompression, CloudWatchLogProcessing, Lambda, MetadataExtraction, AppendDelimiterToRecord
              Parameters => [
                {
                  ParameterName => 'LambdaArn'
                  , # values: LambdaArn, NumberOfRetries, MetadataExtractionQuery, JsonParsingEngine, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds, SubRecordType, Delimiter, CompressionFormat, DataMessageExtraction
                  ParameterValue =>
                    'MyProcessorParameterValue',    # min: 1, max: 5120

                },
                ...
              ],    # OPTIONAL
            },
            ...
          ],    # OPTIONAL
        },    # OPTIONAL
        RetryOptions => {
          DurationInSeconds => 1,    # max: 7200; OPTIONAL
        },    # OPTIONAL
        RoleARN      => 'MyRoleARN',    # min: 1, max: 512; OPTIONAL
        S3BackupMode =>
          'FailedDataOnly',    # values: FailedDataOnly, AllData; OPTIONAL
        S3Update => {
          BucketARN      => 'MyBucketARN',    # min: 1, max: 2048; OPTIONAL
          BufferingHints => {
            IntervalInSeconds => 1,           # max: 900; OPTIONAL
            SizeInMBs         => 1,           # min: 1, max: 128; OPTIONAL
          },    # OPTIONAL
          CloudWatchLoggingOptions => {
            Enabled       => 1,                    # OPTIONAL
            LogGroupName  => 'MyLogGroupName',     # max: 512; OPTIONAL
            LogStreamName => 'MyLogStreamName',    # max: 512; OPTIONAL
          },    # OPTIONAL
          CompressionFormat => 'UNCOMPRESSED'
          ,   # values: UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY; OPTIONAL
          EncryptionConfiguration => {
            KMSEncryptionConfig => {
              AWSKMSKeyARN => 'MyAWSKMSKeyARN',    # min: 1, max: 512

            },    # OPTIONAL
            NoEncryptionConfig =>
              'NoEncryption',    # values: NoEncryption; OPTIONAL
          },    # OPTIONAL
          ErrorOutputPrefix => 'MyErrorOutputPrefix',    # max: 1024; OPTIONAL
          Prefix            => 'MyPrefix',               # max: 1024; OPTIONAL
          RoleARN           => 'MyRoleARN',    # min: 1, max: 512; OPTIONAL
        },    # OPTIONAL
        Schema => 'MySnowflakeSchema',    # min: 1, max: 255; OPTIONAL
        SecretsManagerConfiguration => {
          Enabled   => 1,                 # OPTIONAL
          RoleARN   => 'MyRoleARN',       # min: 1, max: 512; OPTIONAL
          SecretARN => 'MySecretARN',     # min: 1, max: 2048; OPTIONAL
        },    # OPTIONAL
        SnowflakeRoleConfiguration => {
          Enabled       => 1,                    # OPTIONAL
          SnowflakeRole => 'MySnowflakeRole',    # min: 1, max: 255; OPTIONAL
        },    # OPTIONAL
        Table => 'MySnowflakeTable',    # min: 1, max: 255; OPTIONAL
        User  => 'MySnowflakeUser',     # min: 1, max: 255; OPTIONAL
      },    # OPTIONAL
      SplunkDestinationUpdate => {
        BufferingHints => {
          IntervalInSeconds => 1,    # max: 60; OPTIONAL
          SizeInMBs         => 1,    # min: 1, max: 5; OPTIONAL
        },    # OPTIONAL
        CloudWatchLoggingOptions => {
          Enabled       => 1,                    # OPTIONAL
          LogGroupName  => 'MyLogGroupName',     # max: 512; OPTIONAL
          LogStreamName => 'MyLogStreamName',    # max: 512; OPTIONAL
        },    # OPTIONAL
        HECAcknowledgmentTimeoutInSeconds => 1,   # min: 180, max: 600; OPTIONAL
        HECEndpoint     => 'MyHECEndpoint',       # max: 2048; OPTIONAL
        HECEndpointType => 'Raw',                 # values: Raw, Event; OPTIONAL
        HECToken        => 'MyHECToken',          # max: 2048; OPTIONAL
        ProcessingConfiguration => {
          Enabled    => 1,                        # OPTIONAL
          Processors => [
            {
              Type => 'RecordDeAggregation'
              , # values: RecordDeAggregation, Decompression, CloudWatchLogProcessing, Lambda, MetadataExtraction, AppendDelimiterToRecord
              Parameters => [
                {
                  ParameterName => 'LambdaArn'
                  , # values: LambdaArn, NumberOfRetries, MetadataExtractionQuery, JsonParsingEngine, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds, SubRecordType, Delimiter, CompressionFormat, DataMessageExtraction
                  ParameterValue =>
                    'MyProcessorParameterValue',    # min: 1, max: 5120

                },
                ...
              ],    # OPTIONAL
            },
            ...
          ],    # OPTIONAL
        },    # OPTIONAL
        RetryOptions => {
          DurationInSeconds => 1,    # max: 7200; OPTIONAL
        },    # OPTIONAL
        S3BackupMode =>
          'FailedEventsOnly',    # values: FailedEventsOnly, AllEvents; OPTIONAL
        S3Update => {
          BucketARN      => 'MyBucketARN',    # min: 1, max: 2048; OPTIONAL
          BufferingHints => {
            IntervalInSeconds => 1,           # max: 900; OPTIONAL
            SizeInMBs         => 1,           # min: 1, max: 128; OPTIONAL
          },    # OPTIONAL
          CloudWatchLoggingOptions => {
            Enabled       => 1,                    # OPTIONAL
            LogGroupName  => 'MyLogGroupName',     # max: 512; OPTIONAL
            LogStreamName => 'MyLogStreamName',    # max: 512; OPTIONAL
          },    # OPTIONAL
          CompressionFormat => 'UNCOMPRESSED'
          ,   # values: UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY; OPTIONAL
          EncryptionConfiguration => {
            KMSEncryptionConfig => {
              AWSKMSKeyARN => 'MyAWSKMSKeyARN',    # min: 1, max: 512

            },    # OPTIONAL
            NoEncryptionConfig =>
              'NoEncryption',    # values: NoEncryption; OPTIONAL
          },    # OPTIONAL
          ErrorOutputPrefix => 'MyErrorOutputPrefix',    # max: 1024; OPTIONAL
          Prefix            => 'MyPrefix',               # max: 1024; OPTIONAL
          RoleARN           => 'MyRoleARN',    # min: 1, max: 512; OPTIONAL
        },    # OPTIONAL
        SecretsManagerConfiguration => {
          Enabled   => 1,                # OPTIONAL
          RoleARN   => 'MyRoleARN',      # min: 1, max: 512; OPTIONAL
          SecretARN => 'MySecretARN',    # min: 1, max: 2048; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/firehose/UpdateDestination>

=head1 ATTRIBUTES


=head2 AmazonOpenSearchServerlessDestinationUpdate => L<Paws::Firehose::AmazonOpenSearchServerlessDestinationUpdate>

Describes an update for a destination in the Serverless offering for
Amazon OpenSearch Service.



=head2 AmazonopensearchserviceDestinationUpdate => L<Paws::Firehose::AmazonopensearchserviceDestinationUpdate>

Describes an update for a destination in Amazon OpenSearch Service.



=head2 B<REQUIRED> CurrentDeliveryStreamVersionId => Str

Obtain this value from the C<VersionId> result of
DeliveryStreamDescription. This value is required, and helps the
service perform conditional operations. For example, if there is an
interleaving update and this value is null, then the update destination
fails. After the update is successful, the C<VersionId> value is
updated. The service then performs a merge of the old configuration
with the new configuration.



=head2 B<REQUIRED> DeliveryStreamName => Str

The name of the Firehose stream.



=head2 B<REQUIRED> DestinationId => Str

The ID of the destination.



=head2 ElasticsearchDestinationUpdate => L<Paws::Firehose::ElasticsearchDestinationUpdate>

Describes an update for a destination in Amazon OpenSearch Service.



=head2 ExtendedS3DestinationUpdate => L<Paws::Firehose::ExtendedS3DestinationUpdate>

Describes an update for a destination in Amazon S3.



=head2 HttpEndpointDestinationUpdate => L<Paws::Firehose::HttpEndpointDestinationUpdate>

Describes an update to the specified HTTP endpoint destination.



=head2 IcebergDestinationUpdate => L<Paws::Firehose::IcebergDestinationUpdate>

Describes an update for a destination in Apache Iceberg Tables.



=head2 RedshiftDestinationUpdate => L<Paws::Firehose::RedshiftDestinationUpdate>

Describes an update for a destination in Amazon Redshift.



=head2 S3DestinationUpdate => L<Paws::Firehose::S3DestinationUpdate>

[Deprecated] Describes an update for a destination in Amazon S3.



=head2 SnowflakeDestinationUpdate => L<Paws::Firehose::SnowflakeDestinationUpdate>

Update to the Snowflake destination configuration settings.



=head2 SplunkDestinationUpdate => L<Paws::Firehose::SplunkDestinationUpdate>

Describes an update for a destination in Splunk.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDestination in L<Paws::Firehose>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

