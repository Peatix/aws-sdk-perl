
package Paws::Glue::UpdateJob;
  use Moose;
  has JobName => (is => 'ro', isa => 'Str', required => 1);
  has JobUpdate => (is => 'ro', isa => 'Paws::Glue::JobUpdate', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::UpdateJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::UpdateJob - Arguments for method UpdateJob on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateJob on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method UpdateJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateJob.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $UpdateJobResponse = $glue->UpdateJob(
      JobName   => 'MyNameString',
      JobUpdate => {
        AllocatedCapacity         => 1,    # OPTIONAL
        CodeGenConfigurationNodes => {
          'MyNodeId' => {
            Aggregate => {
              Aggs => [
                {
                  AggFunc => 'avg'
                  , # values: avg, countDistinct, count, first, last, kurtosis, max, min, skewness, stddev_samp, stddev_pop, sum, sumDistinct, var_samp, var_pop
                  Column => [ 'MyEnclosedInStringProperty', ... ],

                },
                ...
              ],    # min: 1, max: 30
              Groups => [ [ 'MyEnclosedInStringProperty', ... ], ... ],
              Inputs => [ 'MyNodeId', ... ],    # min: 1, max: 1
              Name   => 'MyNodeName',

            },    # OPTIONAL
            AmazonRedshiftSource => {
              Data => {
                AccessType      => 'MyGenericLimitedString',    # OPTIONAL
                Action          => 'MyGenericString',           # OPTIONAL
                AdvancedOptions => [
                  {
                    Key   => 'MyGenericString',    # OPTIONAL
                    Value => 'MyGenericString',    # OPTIONAL
                  },
                  ...
                ],    # OPTIONAL
                CatalogDatabase => {
                  Description => 'MyEnclosedInStringProperty',
                  Label       => 'MyEnclosedInStringProperty',
                  Value       => 'MyEnclosedInStringProperty',
                },    # OPTIONAL
                CatalogRedshiftSchema => 'MyGenericString',    # OPTIONAL
                CatalogRedshiftTable  => 'MyGenericString',    # OPTIONAL
                CatalogTable          => {
                  Description => 'MyEnclosedInStringProperty',
                  Label       => 'MyEnclosedInStringProperty',
                  Value       => 'MyEnclosedInStringProperty',
                },                                             # OPTIONAL
                Connection => {
                  Description => 'MyEnclosedInStringProperty',
                  Label       => 'MyEnclosedInStringProperty',
                  Value       => 'MyEnclosedInStringProperty',
                },                                             # OPTIONAL
                CrawlerConnection => 'MyGenericString',        # OPTIONAL
                IamRole           => {
                  Description => 'MyEnclosedInStringProperty',
                  Label       => 'MyEnclosedInStringProperty',
                  Value       => 'MyEnclosedInStringProperty',
                },                                             # OPTIONAL
                MergeAction         => 'MyGenericLimitedString',    # OPTIONAL
                MergeClause         => 'MyGenericString',           # OPTIONAL
                MergeWhenMatched    => 'MyGenericLimitedString',    # OPTIONAL
                MergeWhenNotMatched => 'MyGenericLimitedString',    # OPTIONAL
                PostAction          => 'MyGenericString',           # OPTIONAL
                PreAction           => 'MyGenericString',           # OPTIONAL
                SampleQuery         => 'MyGenericString',           # OPTIONAL
                Schema              => {
                  Description => 'MyEnclosedInStringProperty',
                  Label       => 'MyEnclosedInStringProperty',
                  Value       => 'MyEnclosedInStringProperty',
                },                                                  # OPTIONAL
                SelectedColumns => [
                  {
                    Description => 'MyEnclosedInStringProperty',
                    Label       => 'MyEnclosedInStringProperty',
                    Value       => 'MyEnclosedInStringProperty',
                  },
                  ...    # OPTIONAL
                ],    # OPTIONAL
                SourceType   => 'MyGenericLimitedString',    # OPTIONAL
                StagingTable => 'MyGenericString',           # OPTIONAL
                Table        => {
                  Description => 'MyEnclosedInStringProperty',
                  Label       => 'MyEnclosedInStringProperty',
                  Value       => 'MyEnclosedInStringProperty',
                },                                           # OPTIONAL
                TablePrefix => 'MyGenericLimitedString',     # OPTIONAL
                TableSchema => [
                  {
                    Description => 'MyEnclosedInStringProperty',
                    Label       => 'MyEnclosedInStringProperty',
                    Value       => 'MyEnclosedInStringProperty',
                  },
                  ...    # OPTIONAL
                ],    # OPTIONAL
                TempDir => 'MyEnclosedInStringProperty',
                Upsert  => 1,                              # OPTIONAL
              },    # OPTIONAL
              Name => 'MyNodeName',
            },    # OPTIONAL
            AmazonRedshiftTarget => {
              Data => {
                AccessType      => 'MyGenericLimitedString',    # OPTIONAL
                Action          => 'MyGenericString',           # OPTIONAL
                AdvancedOptions => [
                  {
                    Key   => 'MyGenericString',    # OPTIONAL
                    Value => 'MyGenericString',    # OPTIONAL
                  },
                  ...
                ],    # OPTIONAL
                CatalogDatabase => {
                  Description => 'MyEnclosedInStringProperty',
                  Label       => 'MyEnclosedInStringProperty',
                  Value       => 'MyEnclosedInStringProperty',
                },    # OPTIONAL
                CatalogRedshiftSchema => 'MyGenericString',    # OPTIONAL
                CatalogRedshiftTable  => 'MyGenericString',    # OPTIONAL
                CatalogTable          => {
                  Description => 'MyEnclosedInStringProperty',
                  Label       => 'MyEnclosedInStringProperty',
                  Value       => 'MyEnclosedInStringProperty',
                },                                             # OPTIONAL
                Connection => {
                  Description => 'MyEnclosedInStringProperty',
                  Label       => 'MyEnclosedInStringProperty',
                  Value       => 'MyEnclosedInStringProperty',
                },                                             # OPTIONAL
                CrawlerConnection => 'MyGenericString',        # OPTIONAL
                IamRole           => {
                  Description => 'MyEnclosedInStringProperty',
                  Label       => 'MyEnclosedInStringProperty',
                  Value       => 'MyEnclosedInStringProperty',
                },                                             # OPTIONAL
                MergeAction         => 'MyGenericLimitedString',    # OPTIONAL
                MergeClause         => 'MyGenericString',           # OPTIONAL
                MergeWhenMatched    => 'MyGenericLimitedString',    # OPTIONAL
                MergeWhenNotMatched => 'MyGenericLimitedString',    # OPTIONAL
                PostAction          => 'MyGenericString',           # OPTIONAL
                PreAction           => 'MyGenericString',           # OPTIONAL
                SampleQuery         => 'MyGenericString',           # OPTIONAL
                Schema              => {
                  Description => 'MyEnclosedInStringProperty',
                  Label       => 'MyEnclosedInStringProperty',
                  Value       => 'MyEnclosedInStringProperty',
                },                                                  # OPTIONAL
                SelectedColumns => [
                  {
                    Description => 'MyEnclosedInStringProperty',
                    Label       => 'MyEnclosedInStringProperty',
                    Value       => 'MyEnclosedInStringProperty',
                  },
                  ...    # OPTIONAL
                ],    # OPTIONAL
                SourceType   => 'MyGenericLimitedString',    # OPTIONAL
                StagingTable => 'MyGenericString',           # OPTIONAL
                Table        => {
                  Description => 'MyEnclosedInStringProperty',
                  Label       => 'MyEnclosedInStringProperty',
                  Value       => 'MyEnclosedInStringProperty',
                },                                           # OPTIONAL
                TablePrefix => 'MyGenericLimitedString',     # OPTIONAL
                TableSchema => [
                  {
                    Description => 'MyEnclosedInStringProperty',
                    Label       => 'MyEnclosedInStringProperty',
                    Value       => 'MyEnclosedInStringProperty',
                  },
                  ...    # OPTIONAL
                ],    # OPTIONAL
                TempDir => 'MyEnclosedInStringProperty',
                Upsert  => 1,                              # OPTIONAL
              },    # OPTIONAL
              Inputs => [ 'MyNodeId', ... ],    # min: 1, max: 1
              Name   => 'MyNodeName',
            },    # OPTIONAL
            ApplyMapping => {
              Inputs  => [ 'MyNodeId', ... ],    # min: 1, max: 1
              Mapping => [
                {
                  Children => <Mappings>,
                  Dropped  => 1,                                      # OPTIONAL
                  FromPath => [ 'MyEnclosedInStringProperty', ... ],
                  FromType => 'MyEnclosedInStringProperty',
                  ToKey    => 'MyEnclosedInStringProperty',
                  ToType   => 'MyEnclosedInStringProperty',
                },
                ...
              ],
              Name => 'MyNodeName',

            },    # OPTIONAL
            AthenaConnectorSource => {
              ConnectionName  => 'MyEnclosedInStringProperty',
              ConnectionType  => 'MyEnclosedInStringProperty',
              ConnectorName   => 'MyEnclosedInStringProperty',
              Name            => 'MyNodeName',
              SchemaName      => 'MyEnclosedInStringProperty',
              ConnectionTable =>
                'MyEnclosedInStringPropertyWithQuote',    # OPTIONAL
              OutputSchemas => [
                {
                  Columns => [
                    {
                      Name => 'MyGlueStudioColumnNameString',    # max: 1024
                      Type => 'MyColumnTypeString',    # max: 131072; OPTIONAL
                    },
                    ...
                  ],    # OPTIONAL
                },
                ...
              ],    # OPTIONAL
            },    # OPTIONAL
            CatalogDeltaSource => {
              Database               => 'MyEnclosedInStringProperty',
              Name                   => 'MyNodeName',
              Table                  => 'MyEnclosedInStringProperty',
              AdditionalDeltaOptions => {
                'MyEnclosedInStringProperty' => 'MyEnclosedInStringProperty',
              },    # OPTIONAL
              OutputSchemas => [
                {
                  Columns => [
                    {
                      Name => 'MyGlueStudioColumnNameString',    # max: 1024
                      Type => 'MyColumnTypeString',    # max: 131072; OPTIONAL
                    },
                    ...
                  ],    # OPTIONAL
                },
                ...
              ],    # OPTIONAL
            },    # OPTIONAL
            CatalogHudiSource => {
              Database              => 'MyEnclosedInStringProperty',
              Name                  => 'MyNodeName',
              Table                 => 'MyEnclosedInStringProperty',
              AdditionalHudiOptions => {
                'MyEnclosedInStringProperty' => 'MyEnclosedInStringProperty',
              },    # OPTIONAL
              OutputSchemas => [
                {
                  Columns => [
                    {
                      Name => 'MyGlueStudioColumnNameString',    # max: 1024
                      Type => 'MyColumnTypeString',    # max: 131072; OPTIONAL
                    },
                    ...
                  ],    # OPTIONAL
                },
                ...
              ],    # OPTIONAL
            },    # OPTIONAL
            CatalogKafkaSource => {
              Database           => 'MyEnclosedInStringProperty',
              Name               => 'MyNodeName',
              Table              => 'MyEnclosedInStringProperty',
              DataPreviewOptions => {
                PollingTime        => 1,    # min: 10; OPTIONAL
                RecordPollingLimit => 1,    # min: 1; OPTIONAL
              },    # OPTIONAL
              DetectSchema     => 1,    # OPTIONAL
              StreamingOptions => {
                AddRecordTimestamp     => 'MyEnclosedInStringProperty',
                Assign                 => 'MyEnclosedInStringProperty',
                BootstrapServers       => 'MyEnclosedInStringProperty',
                Classification         => 'MyEnclosedInStringProperty',
                ConnectionName         => 'MyEnclosedInStringProperty',
                Delimiter              => 'MyEnclosedInStringProperty',
                EmitConsumerLagMetrics => 'MyEnclosedInStringProperty',
                EndingOffsets          => 'MyEnclosedInStringProperty',
                IncludeHeaders       => 1,                            # OPTIONAL
                MaxOffsetsPerTrigger => 1,                            # OPTIONAL
                MinPartitions        => 1,                            # OPTIONAL
                NumRetries           => 1,                            # OPTIONAL
                PollTimeoutMs        => 1,                            # OPTIONAL
                RetryIntervalMs      => 1,                            # OPTIONAL
                SecurityProtocol     => 'MyEnclosedInStringProperty',
                StartingOffsets      => 'MyEnclosedInStringProperty',
                StartingTimestamp    => '1970-01-01T01:00:00',        # OPTIONAL
                SubscribePattern     => 'MyEnclosedInStringProperty',
                TopicName            => 'MyEnclosedInStringProperty',
              },    # OPTIONAL
              WindowSize => 1,    # OPTIONAL
            },    # OPTIONAL
            CatalogKinesisSource => {
              Database           => 'MyEnclosedInStringProperty',
              Name               => 'MyNodeName',
              Table              => 'MyEnclosedInStringProperty',
              DataPreviewOptions => {
                PollingTime        => 1,    # min: 10; OPTIONAL
                RecordPollingLimit => 1,    # min: 1; OPTIONAL
              },    # OPTIONAL
              DetectSchema     => 1,    # OPTIONAL
              StreamingOptions => {
                AddIdleTimeBetweenReads => 1,                        # OPTIONAL
                AddRecordTimestamp    => 'MyEnclosedInStringProperty',
                AvoidEmptyBatches     => 1,                           # OPTIONAL
                Classification        => 'MyEnclosedInStringProperty',
                Delimiter             => 'MyEnclosedInStringProperty',
                DescribeShardInterval => 1,                           # OPTIONAL
                EmitConsumerLagMetrics   => 'MyEnclosedInStringProperty',
                EndpointUrl              => 'MyEnclosedInStringProperty',
                IdleTimeBetweenReadsInMs => 1,                        # OPTIONAL
                MaxFetchRecordsPerShard  => 1,                        # OPTIONAL
                MaxFetchTimeInMs         => 1,                        # OPTIONAL
                MaxRecordPerRead         => 1,                        # OPTIONAL
                MaxRetryIntervalMs       => 1,                        # OPTIONAL
                NumRetries               => 1,                        # OPTIONAL
                RetryIntervalMs          => 1,                        # OPTIONAL
                RoleArn                  => 'MyEnclosedInStringProperty',
                RoleSessionName          => 'MyEnclosedInStringProperty',
                StartingPosition         => 'latest'
                ,  # values: latest, trim_horizon, earliest, timestamp; OPTIONAL
                StartingTimestamp => '1970-01-01T01:00:00',          # OPTIONAL
                StreamArn         => 'MyEnclosedInStringProperty',
                StreamName        => 'MyEnclosedInStringProperty',
              },    # OPTIONAL
              WindowSize => 1,    # OPTIONAL
            },    # OPTIONAL
            CatalogSource => {
              Database => 'MyEnclosedInStringProperty',
              Name     => 'MyNodeName',
              Table    => 'MyEnclosedInStringProperty',

            },    # OPTIONAL
            CatalogTarget => {
              Database      => 'MyEnclosedInStringProperty',
              Inputs        => [ 'MyNodeId', ... ],            # min: 1, max: 1
              Name          => 'MyNodeName',
              Table         => 'MyEnclosedInStringProperty',
              PartitionKeys => [ [ 'MyEnclosedInStringProperty', ... ], ... ],
            },    # OPTIONAL
            ConnectorDataSource => {
              ConnectionType => 'MyEnclosedInStringProperty',
              Data           => {
                'MyGenericString' =>
                  'MyGenericString',    # key: OPTIONAL, value: OPTIONAL
              },
              Name          => 'MyNodeName',
              OutputSchemas => [
                {
                  Columns => [
                    {
                      Name => 'MyGlueStudioColumnNameString',    # max: 1024
                      Type => 'MyColumnTypeString',    # max: 131072; OPTIONAL
                    },
                    ...
                  ],    # OPTIONAL
                },
                ...
              ],    # OPTIONAL
            },    # OPTIONAL
            ConnectorDataTarget => {
              ConnectionType => 'MyEnclosedInStringProperty',
              Data           => {
                'MyGenericString' =>
                  'MyGenericString',    # key: OPTIONAL, value: OPTIONAL
              },
              Name   => 'MyNodeName',
              Inputs => [ 'MyNodeId', ... ],    # min: 1, max: 1
            },    # OPTIONAL
            CustomCode => {
              ClassName     => 'MyEnclosedInStringProperty',
              Code          => 'MyExtendedString',
              Inputs        => [ 'MyNodeId', ... ],            # min: 1
              Name          => 'MyNodeName',
              OutputSchemas => [
                {
                  Columns => [
                    {
                      Name => 'MyGlueStudioColumnNameString',    # max: 1024
                      Type => 'MyColumnTypeString',    # max: 131072; OPTIONAL
                    },
                    ...
                  ],    # OPTIONAL
                },
                ...
              ],    # OPTIONAL
            },    # OPTIONAL
            DirectJDBCSource => {
              ConnectionName => 'MyEnclosedInStringProperty',
              ConnectionType => 'sqlserver'
              ,    # values: sqlserver, mysql, oracle, postgresql, redshift
              Database       => 'MyEnclosedInStringProperty',
              Name           => 'MyNodeName',
              Table          => 'MyEnclosedInStringProperty',
              RedshiftTmpDir => 'MyEnclosedInStringProperty',
            },    # OPTIONAL
            DirectKafkaSource => {
              Name               => 'MyNodeName',
              DataPreviewOptions => {
                PollingTime        => 1,    # min: 10; OPTIONAL
                RecordPollingLimit => 1,    # min: 1; OPTIONAL
              },    # OPTIONAL
              DetectSchema     => 1,    # OPTIONAL
              StreamingOptions => {
                AddRecordTimestamp     => 'MyEnclosedInStringProperty',
                Assign                 => 'MyEnclosedInStringProperty',
                BootstrapServers       => 'MyEnclosedInStringProperty',
                Classification         => 'MyEnclosedInStringProperty',
                ConnectionName         => 'MyEnclosedInStringProperty',
                Delimiter              => 'MyEnclosedInStringProperty',
                EmitConsumerLagMetrics => 'MyEnclosedInStringProperty',
                EndingOffsets          => 'MyEnclosedInStringProperty',
                IncludeHeaders       => 1,                            # OPTIONAL
                MaxOffsetsPerTrigger => 1,                            # OPTIONAL
                MinPartitions        => 1,                            # OPTIONAL
                NumRetries           => 1,                            # OPTIONAL
                PollTimeoutMs        => 1,                            # OPTIONAL
                RetryIntervalMs      => 1,                            # OPTIONAL
                SecurityProtocol     => 'MyEnclosedInStringProperty',
                StartingOffsets      => 'MyEnclosedInStringProperty',
                StartingTimestamp    => '1970-01-01T01:00:00',        # OPTIONAL
                SubscribePattern     => 'MyEnclosedInStringProperty',
                TopicName            => 'MyEnclosedInStringProperty',
              },    # OPTIONAL
              WindowSize => 1,    # OPTIONAL
            },    # OPTIONAL
            DirectKinesisSource => {
              Name               => 'MyNodeName',
              DataPreviewOptions => {
                PollingTime        => 1,    # min: 10; OPTIONAL
                RecordPollingLimit => 1,    # min: 1; OPTIONAL
              },    # OPTIONAL
              DetectSchema     => 1,    # OPTIONAL
              StreamingOptions => {
                AddIdleTimeBetweenReads => 1,                        # OPTIONAL
                AddRecordTimestamp    => 'MyEnclosedInStringProperty',
                AvoidEmptyBatches     => 1,                           # OPTIONAL
                Classification        => 'MyEnclosedInStringProperty',
                Delimiter             => 'MyEnclosedInStringProperty',
                DescribeShardInterval => 1,                           # OPTIONAL
                EmitConsumerLagMetrics   => 'MyEnclosedInStringProperty',
                EndpointUrl              => 'MyEnclosedInStringProperty',
                IdleTimeBetweenReadsInMs => 1,                        # OPTIONAL
                MaxFetchRecordsPerShard  => 1,                        # OPTIONAL
                MaxFetchTimeInMs         => 1,                        # OPTIONAL
                MaxRecordPerRead         => 1,                        # OPTIONAL
                MaxRetryIntervalMs       => 1,                        # OPTIONAL
                NumRetries               => 1,                        # OPTIONAL
                RetryIntervalMs          => 1,                        # OPTIONAL
                RoleArn                  => 'MyEnclosedInStringProperty',
                RoleSessionName          => 'MyEnclosedInStringProperty',
                StartingPosition         => 'latest'
                ,  # values: latest, trim_horizon, earliest, timestamp; OPTIONAL
                StartingTimestamp => '1970-01-01T01:00:00',          # OPTIONAL
                StreamArn         => 'MyEnclosedInStringProperty',
                StreamName        => 'MyEnclosedInStringProperty',
              },    # OPTIONAL
              WindowSize => 1,    # OPTIONAL
            },    # OPTIONAL
            DropDuplicates => {
              Inputs  => [ 'MyNodeId', ... ],    # min: 1, max: 1
              Name    => 'MyNodeName',
              Columns => [
                [
                  'MyGenericLimitedString', ...    # OPTIONAL
                ],
                ...
              ],    # OPTIONAL
            },    # OPTIONAL
            DropFields => {
              Inputs => [ 'MyNodeId', ... ],    # min: 1, max: 1
              Name   => 'MyNodeName',
              Paths  => [ [ 'MyEnclosedInStringProperty', ... ], ... ],

            },    # OPTIONAL
            DropNullFields => {
              Inputs           => [ 'MyNodeId', ... ],    # min: 1, max: 1
              Name             => 'MyNodeName',
              NullCheckBoxList => {
                IsEmpty      => 1,                        # OPTIONAL
                IsNegOne     => 1,                        # OPTIONAL
                IsNullString => 1,                        # OPTIONAL
              },    # OPTIONAL
              NullTextList => [
                {
                  Datatype => {
                    Id    => 'MyGenericLimitedString',    # OPTIONAL
                    Label => 'MyGenericLimitedString',    # OPTIONAL

                  },
                  Value => 'MyEnclosedInStringProperty',

                },
                ...
              ],    # max: 50; OPTIONAL
            },    # OPTIONAL
            DynamicTransform => {
              FunctionName  => 'MyEnclosedInStringProperty',
              Inputs        => [ 'MyNodeId', ... ],            # min: 1, max: 1
              Name          => 'MyEnclosedInStringProperty',
              Path          => 'MyEnclosedInStringProperty',
              TransformName => 'MyEnclosedInStringProperty',
              OutputSchemas => [
                {
                  Columns => [
                    {
                      Name => 'MyGlueStudioColumnNameString',    # max: 1024
                      Type => 'MyColumnTypeString',    # max: 131072; OPTIONAL
                    },
                    ...
                  ],    # OPTIONAL
                },
                ...
              ],    # OPTIONAL
              Parameters => [
                {
                  Name => 'MyEnclosedInStringProperty',
                  Type =>
                    'str',  # values: str, int, float, complex, bool, list, null
                  IsOptional => 1,    # OPTIONAL
                  ListType   =>
                    'str',  # values: str, int, float, complex, bool, list, null
                  ValidationMessage => 'MyEnclosedInStringProperty',
                  ValidationRule    => 'MyEnclosedInStringProperty',
                  Value             => [ 'MyEnclosedInStringProperty', ... ],
                },
                ...
              ],    # OPTIONAL
              Version => 'MyEnclosedInStringProperty',
            },    # OPTIONAL
            DynamoDBCatalogSource => {
              Database => 'MyEnclosedInStringProperty',
              Name     => 'MyNodeName',
              Table    => 'MyEnclosedInStringProperty',

            },    # OPTIONAL
            EvaluateDataQuality => {
              Inputs  => [ 'MyNodeId', ... ],    # min: 1, max: 1
              Name    => 'MyNodeName',
              Ruleset => 'MyDQDLString',         # min: 1, max: 65536
              Output  => 'PrimaryInput'
              ,    # values: PrimaryInput, EvaluationResults; OPTIONAL
              PublishingOptions => {
                CloudWatchMetricsEnabled => 1,                        # OPTIONAL
                EvaluationContext        => 'MyGenericLimitedString', # OPTIONAL
                ResultsPublishingEnabled => 1,                        # OPTIONAL
                ResultsS3Prefix          => 'MyEnclosedInStringProperty',
              },    # OPTIONAL
              StopJobOnFailureOptions => {
                StopJobOnFailureTiming =>
                  'Immediate',    # values: Immediate, AfterDataLoad; OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
            EvaluateDataQualityMultiFrame => {
              Inputs                => [ 'MyNodeId', ... ], # min: 1
              Name                  => 'MyNodeName',
              Ruleset               => 'MyDQDLString',      # min: 1, max: 65536
              AdditionalDataSources =>
                { 'MyNodeName' => 'MyEnclosedInStringProperty', },    # OPTIONAL
              AdditionalOptions => {
                'performanceTuning.caching' => 'MyGenericString'
                , # key: values: performanceTuning.caching, observations.scope, value: OPTIONAL
              },    # OPTIONAL
              PublishingOptions => {
                CloudWatchMetricsEnabled => 1,                        # OPTIONAL
                EvaluationContext        => 'MyGenericLimitedString', # OPTIONAL
                ResultsPublishingEnabled => 1,                        # OPTIONAL
                ResultsS3Prefix          => 'MyEnclosedInStringProperty',
              },    # OPTIONAL
              StopJobOnFailureOptions => {
                StopJobOnFailureTiming =>
                  'Immediate',    # values: Immediate, AfterDataLoad; OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
            FillMissingValues => {
              ImputedPath => 'MyEnclosedInStringProperty',
              Inputs      => [ 'MyNodeId', ... ],            # min: 1, max: 1
              Name        => 'MyNodeName',
              FilledPath  => 'MyEnclosedInStringProperty',
            },    # OPTIONAL
            Filter => {
              Filters => [
                {
                  Operation =>
                    'EQ',    # values: EQ, LT, GT, LTE, GTE, REGEX, ISNULL
                  Values => [
                    {
                      Type =>
                        'COLUMNEXTRACTED',   # values: COLUMNEXTRACTED, CONSTANT
                      Value => [ 'MyEnclosedInStringProperty', ... ],

                    },
                    ...
                  ],
                  Negated => 1,    # OPTIONAL
                },
                ...
              ],
              Inputs          => [ 'MyNodeId', ... ],    # min: 1, max: 1
              LogicalOperator => 'AND',                  # values: AND, OR
              Name            => 'MyNodeName',

            },    # OPTIONAL
            GovernedCatalogSource => {
              Database          => 'MyEnclosedInStringProperty',
              Name              => 'MyNodeName',
              Table             => 'MyEnclosedInStringProperty',
              AdditionalOptions => {
                BoundedFiles => 1,    # OPTIONAL
                BoundedSize  => 1,    # OPTIONAL
              },    # OPTIONAL
              PartitionPredicate => 'MyEnclosedInStringProperty',
            },    # OPTIONAL
            GovernedCatalogTarget => {
              Database      => 'MyEnclosedInStringProperty',
              Inputs        => [ 'MyNodeId', ... ],            # min: 1, max: 1
              Name          => 'MyNodeName',
              Table         => 'MyEnclosedInStringProperty',
              PartitionKeys => [ [ 'MyEnclosedInStringProperty', ... ], ... ],
              SchemaChangePolicy => {
                EnableUpdateCatalog => 1,                     # OPTIONAL
                UpdateBehavior      => 'UPDATE_IN_DATABASE'
                ,    # values: UPDATE_IN_DATABASE, LOG; OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
            JDBCConnectorSource => {
              ConnectionName    => 'MyEnclosedInStringProperty',
              ConnectionType    => 'MyEnclosedInStringProperty',
              ConnectorName     => 'MyEnclosedInStringProperty',
              Name              => 'MyNodeName',
              AdditionalOptions => {
                DataTypeMapping => {
                  'ARRAY' => 'DATE'
                  , # key: values: ARRAY, BIGINT, BINARY, BIT, BLOB, BOOLEAN, CHAR, CLOB, DATALINK, DATE, DECIMAL, DISTINCT, DOUBLE, FLOAT, INTEGER, JAVA_OBJECT, LONGNVARCHAR, LONGVARBINARY, LONGVARCHAR, NCHAR, NCLOB, NULL, NUMERIC, NVARCHAR, OTHER, REAL, REF, REF_CURSOR, ROWID, SMALLINT, SQLXML, STRUCT, TIME, TIME_WITH_TIMEZONE, TIMESTAMP, TIMESTAMP_WITH_TIMEZONE, TINYINT, VARBINARY, VARCHAR, value: values: DATE, STRING, TIMESTAMP, INT, FLOAT, LONG, BIGDECIMAL, BYTE, SHORT, DOUBLE
                },    # OPTIONAL
                FilterPredicate => 'MyEnclosedInStringProperty',
                JobBookmarkKeys => [ 'MyEnclosedInStringProperty', ... ],
                JobBookmarkKeysSortOrder => 'MyEnclosedInStringProperty',
                LowerBound      => 1,                              # OPTIONAL
                NumPartitions   => 1,                              # OPTIONAL
                PartitionColumn => 'MyEnclosedInStringProperty',
                UpperBound      => 1,                              # OPTIONAL
              },    # OPTIONAL
              ConnectionTable =>
                'MyEnclosedInStringPropertyWithQuote',    # OPTIONAL
              OutputSchemas => [
                {
                  Columns => [
                    {
                      Name => 'MyGlueStudioColumnNameString',    # max: 1024
                      Type => 'MyColumnTypeString',    # max: 131072; OPTIONAL
                    },
                    ...
                  ],    # OPTIONAL
                },
                ...
              ],    # OPTIONAL
              Query => 'MySqlQuery',    # OPTIONAL
            },    # OPTIONAL
            JDBCConnectorTarget => {
              ConnectionName  => 'MyEnclosedInStringProperty',
              ConnectionTable =>
                'MyEnclosedInStringPropertyWithQuote',    # OPTIONAL
              ConnectionType    => 'MyEnclosedInStringProperty',
              ConnectorName     => 'MyEnclosedInStringProperty',
              Inputs            => [ 'MyNodeId', ... ],         # min: 1, max: 1
              Name              => 'MyNodeName',
              AdditionalOptions => {
                'MyEnclosedInStringProperty' => 'MyEnclosedInStringProperty',
              },                                                # OPTIONAL
              OutputSchemas => [
                {
                  Columns => [
                    {
                      Name => 'MyGlueStudioColumnNameString',    # max: 1024
                      Type => 'MyColumnTypeString',    # max: 131072; OPTIONAL
                    },
                    ...
                  ],    # OPTIONAL
                },
                ...
              ],    # OPTIONAL
            },    # OPTIONAL
            Join => {
              Columns => [
                {
                  From => 'MyEnclosedInStringProperty',
                  Keys => [ [ 'MyEnclosedInStringProperty', ... ], ... ],

                },
                ...
              ],    # min: 2, max: 2
              Inputs   => [ 'MyNodeId', ... ],    # min: 2, max: 2
              JoinType => 'equijoin'
              ,    # values: equijoin, left, right, outer, leftsemi, leftanti
              Name => 'MyNodeName',

            },    # OPTIONAL
            Merge => {
              Inputs      => [ 'MyNodeId', ... ],    # min: 2, max: 2
              Name        => 'MyNodeName',
              PrimaryKeys => [ [ 'MyEnclosedInStringProperty', ... ], ... ],
              Source      => 'MyNodeId',

            },    # OPTIONAL
            MicrosoftSQLServerCatalogSource => {
              Database => 'MyEnclosedInStringProperty',
              Name     => 'MyNodeName',
              Table    => 'MyEnclosedInStringProperty',

            },    # OPTIONAL
            MicrosoftSQLServerCatalogTarget => {
              Database => 'MyEnclosedInStringProperty',
              Inputs   => [ 'MyNodeId', ... ],            # min: 1, max: 1
              Name     => 'MyNodeName',
              Table    => 'MyEnclosedInStringProperty',

            },    # OPTIONAL
            MySQLCatalogSource => {
              Database => 'MyEnclosedInStringProperty',
              Name     => 'MyNodeName',
              Table    => 'MyEnclosedInStringProperty',

            },    # OPTIONAL
            MySQLCatalogTarget => {
              Database => 'MyEnclosedInStringProperty',
              Inputs   => [ 'MyNodeId', ... ],            # min: 1, max: 1
              Name     => 'MyNodeName',
              Table    => 'MyEnclosedInStringProperty',

            },    # OPTIONAL
            OracleSQLCatalogSource => {
              Database => 'MyEnclosedInStringProperty',
              Name     => 'MyNodeName',
              Table    => 'MyEnclosedInStringProperty',

            },    # OPTIONAL
            OracleSQLCatalogTarget => {
              Database => 'MyEnclosedInStringProperty',
              Inputs   => [ 'MyNodeId', ... ],            # min: 1, max: 1
              Name     => 'MyNodeName',
              Table    => 'MyEnclosedInStringProperty',

            },    # OPTIONAL
            PIIDetection => {
              EntityTypesToDetect => [ 'MyEnclosedInStringProperty', ... ],
              Inputs              => [ 'MyNodeId', ... ],    # min: 1, max: 1
              Name                => 'MyNodeName',
              PiiType             => 'RowAudit'
              ,    # values: RowAudit, RowMasking, ColumnAudit, ColumnMasking
              MaskValue         => 'MyMaskValue',    # max: 256; OPTIONAL
              OutputColumnName  => 'MyEnclosedInStringProperty',
              SampleFraction    => 1,                # max: 1; OPTIONAL
              ThresholdFraction => 1,                # max: 1; OPTIONAL
            },    # OPTIONAL
            PostgreSQLCatalogSource => {
              Database => 'MyEnclosedInStringProperty',
              Name     => 'MyNodeName',
              Table    => 'MyEnclosedInStringProperty',

            },    # OPTIONAL
            PostgreSQLCatalogTarget => {
              Database => 'MyEnclosedInStringProperty',
              Inputs   => [ 'MyNodeId', ... ],            # min: 1, max: 1
              Name     => 'MyNodeName',
              Table    => 'MyEnclosedInStringProperty',

            },    # OPTIONAL
            Recipe => {
              Inputs          => [ 'MyNodeId', ... ],    # min: 1, max: 1
              Name            => 'MyNodeName',
              RecipeReference => {
                RecipeArn     => 'MyEnclosedInStringProperty',
                RecipeVersion => 'MyRecipeVersion',            # min: 1, max: 16

              },    # OPTIONAL
              RecipeSteps => [
                {
                  Action => {
                    Operation  => 'MyOperation',    # min: 1, max: 128
                    Parameters => {
                      'MyParameterName' => 'MyParameterValue'
                      ,    # key: min: 1, max: 128, value: min: 1, max: 32768
                    },    # OPTIONAL
                  },
                  ConditionExpressions => [
                    {
                      Condition    => 'MyDatabrewCondition', # min: 1, max: 128
                      TargetColumn => 'MyTargetColumn',      # min: 1, max: 1024
                      Value => 'MyDatabrewConditionValue', # max: 1024; OPTIONAL
                    },
                    ...
                  ],    # OPTIONAL
                },
                ...
              ],    # OPTIONAL
            },    # OPTIONAL
            RedshiftSource => {
              Database       => 'MyEnclosedInStringProperty',
              Name           => 'MyNodeName',
              Table          => 'MyEnclosedInStringProperty',
              RedshiftTmpDir => 'MyEnclosedInStringProperty',
              TmpDirIAMRole  => 'MyEnclosedInStringProperty',
            },    # OPTIONAL
            RedshiftTarget => {
              Database       => 'MyEnclosedInStringProperty',
              Inputs         => [ 'MyNodeId', ... ],            # min: 1, max: 1
              Name           => 'MyNodeName',
              Table          => 'MyEnclosedInStringProperty',
              RedshiftTmpDir => 'MyEnclosedInStringProperty',
              TmpDirIAMRole  => 'MyEnclosedInStringProperty',
              UpsertRedshiftOptions => {
                ConnectionName => 'MyEnclosedInStringProperty',
                TableLocation  => 'MyEnclosedInStringProperty',
                UpsertKeys => [ 'MyEnclosedInStringProperty', ... ],  # OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
            RelationalCatalogSource => {
              Database => 'MyEnclosedInStringProperty',
              Name     => 'MyNodeName',
              Table    => 'MyEnclosedInStringProperty',

            },    # OPTIONAL
            RenameField => {
              Inputs     => [ 'MyNodeId', ... ],    # min: 1, max: 1
              Name       => 'MyNodeName',
              SourcePath => [ 'MyEnclosedInStringProperty', ... ],
              TargetPath => [ 'MyEnclosedInStringProperty', ... ],

            },    # OPTIONAL
            S3CatalogDeltaSource => {
              Database               => 'MyEnclosedInStringProperty',
              Name                   => 'MyNodeName',
              Table                  => 'MyEnclosedInStringProperty',
              AdditionalDeltaOptions => {
                'MyEnclosedInStringProperty' => 'MyEnclosedInStringProperty',
              },    # OPTIONAL
              OutputSchemas => [
                {
                  Columns => [
                    {
                      Name => 'MyGlueStudioColumnNameString',    # max: 1024
                      Type => 'MyColumnTypeString',    # max: 131072; OPTIONAL
                    },
                    ...
                  ],    # OPTIONAL
                },
                ...
              ],    # OPTIONAL
            },    # OPTIONAL
            S3CatalogHudiSource => {
              Database              => 'MyEnclosedInStringProperty',
              Name                  => 'MyNodeName',
              Table                 => 'MyEnclosedInStringProperty',
              AdditionalHudiOptions => {
                'MyEnclosedInStringProperty' => 'MyEnclosedInStringProperty',
              },    # OPTIONAL
              OutputSchemas => [
                {
                  Columns => [
                    {
                      Name => 'MyGlueStudioColumnNameString',    # max: 1024
                      Type => 'MyColumnTypeString',    # max: 131072; OPTIONAL
                    },
                    ...
                  ],    # OPTIONAL
                },
                ...
              ],    # OPTIONAL
            },    # OPTIONAL
            S3CatalogSource => {
              Database          => 'MyEnclosedInStringProperty',
              Name              => 'MyNodeName',
              Table             => 'MyEnclosedInStringProperty',
              AdditionalOptions => {
                BoundedFiles => 1,    # OPTIONAL
                BoundedSize  => 1,    # OPTIONAL
              },    # OPTIONAL
              PartitionPredicate => 'MyEnclosedInStringProperty',
            },    # OPTIONAL
            S3CatalogTarget => {
              Database      => 'MyEnclosedInStringProperty',
              Inputs        => [ 'MyNodeId', ... ],            # min: 1, max: 1
              Name          => 'MyNodeName',
              Table         => 'MyEnclosedInStringProperty',
              PartitionKeys => [ [ 'MyEnclosedInStringProperty', ... ], ... ],
              SchemaChangePolicy => {
                EnableUpdateCatalog => 1,                     # OPTIONAL
                UpdateBehavior      => 'UPDATE_IN_DATABASE'
                ,    # values: UPDATE_IN_DATABASE, LOG; OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
            S3CsvSource => {
              Name      => 'MyNodeName',
              Paths     => [ 'MyEnclosedInStringProperty', ... ],
              QuoteChar =>
                'quote',    # values: quote, quillemet, single_quote, disabled
              Separator => 'comma', # values: comma, ctrla, pipe, semicolon, tab
              AdditionalOptions => {
                BoundedFiles     => 1,                              # OPTIONAL
                BoundedSize      => 1,                              # OPTIONAL
                EnableSamplePath => 1,                              # OPTIONAL
                SamplePath       => 'MyEnclosedInStringProperty',
              },    # OPTIONAL
              CompressionType => 'gzip',    # values: gzip, bzip2; OPTIONAL
              Escaper    => 'MyEnclosedInStringPropertyWithQuote',    # OPTIONAL
              Exclusions => [ 'MyEnclosedInStringProperty', ... ],
              GroupFiles => 'MyEnclosedInStringProperty',
              GroupSize  => 'MyEnclosedInStringProperty',
              MaxBand    => 1,                                        # OPTIONAL
              MaxFilesInBand      => 1,                               # OPTIONAL
              Multiline           => 1,                               # OPTIONAL
              OptimizePerformance => 1,                               # OPTIONAL
              OutputSchemas       => [
                {
                  Columns => [
                    {
                      Name => 'MyGlueStudioColumnNameString',    # max: 1024
                      Type => 'MyColumnTypeString',    # max: 131072; OPTIONAL
                    },
                    ...
                  ],    # OPTIONAL
                },
                ...
              ],    # OPTIONAL
              Recurse     => 1,    # OPTIONAL
              SkipFirst   => 1,    # OPTIONAL
              WithHeader  => 1,    # OPTIONAL
              WriteHeader => 1,    # OPTIONAL
            },    # OPTIONAL
            S3DeltaCatalogTarget => {
              Database          => 'MyEnclosedInStringProperty',
              Inputs            => [ 'MyNodeId', ... ],         # min: 1, max: 1
              Name              => 'MyNodeName',
              Table             => 'MyEnclosedInStringProperty',
              AdditionalOptions => {
                'MyEnclosedInStringProperty' => 'MyEnclosedInStringProperty',
              },                                                # OPTIONAL
              PartitionKeys => [ [ 'MyEnclosedInStringProperty', ... ], ... ],
              SchemaChangePolicy => {
                EnableUpdateCatalog => 1,                       # OPTIONAL
                UpdateBehavior      => 'UPDATE_IN_DATABASE'
                ,    # values: UPDATE_IN_DATABASE, LOG; OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
            S3DeltaDirectTarget => {
              Compression => 'uncompressed',    # values: uncompressed, snappy
              Format      => 'json'
              , # values: json, csv, avro, orc, parquet, hudi, delta, iceberg, hyper, xml
              Inputs            => [ 'MyNodeId', ... ],         # min: 1, max: 1
              Name              => 'MyNodeName',
              Path              => 'MyEnclosedInStringProperty',
              AdditionalOptions => {
                'MyEnclosedInStringProperty' => 'MyEnclosedInStringProperty',
              },                                                # OPTIONAL
              NumberTargetPartitions =>
                'MyNumberTargetPartitionsString',               # OPTIONAL
              PartitionKeys => [ [ 'MyEnclosedInStringProperty', ... ], ... ],
              SchemaChangePolicy => {
                Database            => 'MyEnclosedInStringProperty',
                EnableUpdateCatalog => 1,                             # OPTIONAL
                Table               => 'MyEnclosedInStringProperty',
                UpdateBehavior      => 'UPDATE_IN_DATABASE'
                ,    # values: UPDATE_IN_DATABASE, LOG; OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
            S3DeltaSource => {
              Name                   => 'MyNodeName',
              Paths                  => [ 'MyEnclosedInStringProperty', ... ],
              AdditionalDeltaOptions => {
                'MyEnclosedInStringProperty' => 'MyEnclosedInStringProperty',
              },    # OPTIONAL
              AdditionalOptions => {
                BoundedFiles     => 1,                              # OPTIONAL
                BoundedSize      => 1,                              # OPTIONAL
                EnableSamplePath => 1,                              # OPTIONAL
                SamplePath       => 'MyEnclosedInStringProperty',
              },    # OPTIONAL
              OutputSchemas => [
                {
                  Columns => [
                    {
                      Name => 'MyGlueStudioColumnNameString',    # max: 1024
                      Type => 'MyColumnTypeString',    # max: 131072; OPTIONAL
                    },
                    ...
                  ],    # OPTIONAL
                },
                ...
              ],    # OPTIONAL
            },    # OPTIONAL
            S3DirectTarget => {
              Format => 'json'
              , # values: json, csv, avro, orc, parquet, hudi, delta, iceberg, hyper, xml
              Inputs      => [ 'MyNodeId', ... ],            # min: 1, max: 1
              Name        => 'MyNodeName',
              Path        => 'MyEnclosedInStringProperty',
              Compression => 'MyEnclosedInStringProperty',
              NumberTargetPartitions =>
                'MyNumberTargetPartitionsString',            # OPTIONAL
              PartitionKeys => [ [ 'MyEnclosedInStringProperty', ... ], ... ],
              SchemaChangePolicy => {
                Database            => 'MyEnclosedInStringProperty',
                EnableUpdateCatalog => 1,                             # OPTIONAL
                Table               => 'MyEnclosedInStringProperty',
                UpdateBehavior      => 'UPDATE_IN_DATABASE'
                ,    # values: UPDATE_IN_DATABASE, LOG; OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
            S3ExcelSource => {
              Name              => 'MyNodeName',
              Paths             => [ 'MyEnclosedInStringProperty', ... ],
              AdditionalOptions => {
                BoundedFiles     => 1,                              # OPTIONAL
                BoundedSize      => 1,                              # OPTIONAL
                EnableSamplePath => 1,                              # OPTIONAL
                SamplePath       => 'MyEnclosedInStringProperty',
              },    # OPTIONAL
              CompressionType => 'snappy'
              , # values: snappy, lzo, gzip, brotli, lz4, uncompressed, none; OPTIONAL
              Exclusions     => [ 'MyEnclosedInStringProperty', ... ],
              GroupFiles     => 'MyEnclosedInStringProperty',
              GroupSize      => 'MyEnclosedInStringProperty',
              MaxBand        => 1,                                    # OPTIONAL
              MaxFilesInBand => 1,                                    # OPTIONAL
              NumberRows     => 1,                                    # OPTIONAL
              OutputSchemas  => [
                {
                  Columns => [
                    {
                      Name => 'MyGlueStudioColumnNameString',    # max: 1024
                      Type => 'MyColumnTypeString',    # max: 131072; OPTIONAL
                    },
                    ...
                  ],    # OPTIONAL
                },
                ...
              ],    # OPTIONAL
              Recurse    => 1,    # OPTIONAL
              SkipFooter => 1,    # OPTIONAL
            },    # OPTIONAL
            S3GlueParquetTarget => {
              Inputs      => [ 'MyNodeId', ... ],            # min: 1, max: 1
              Name        => 'MyNodeName',
              Path        => 'MyEnclosedInStringProperty',
              Compression => 'snappy'
              , # values: snappy, lzo, gzip, brotli, lz4, uncompressed, none; OPTIONAL
              NumberTargetPartitions =>
                'MyNumberTargetPartitionsString',    # OPTIONAL
              PartitionKeys => [ [ 'MyEnclosedInStringProperty', ... ], ... ],
              SchemaChangePolicy => {
                Database            => 'MyEnclosedInStringProperty',
                EnableUpdateCatalog => 1,                             # OPTIONAL
                Table               => 'MyEnclosedInStringProperty',
                UpdateBehavior      => 'UPDATE_IN_DATABASE'
                ,    # values: UPDATE_IN_DATABASE, LOG; OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
            S3HudiCatalogTarget => {
              AdditionalOptions => {
                'MyEnclosedInStringProperty' => 'MyEnclosedInStringProperty',
              },    # OPTIONAL
              Database      => 'MyEnclosedInStringProperty',
              Inputs        => [ 'MyNodeId', ... ],            # min: 1, max: 1
              Name          => 'MyNodeName',
              Table         => 'MyEnclosedInStringProperty',
              PartitionKeys => [ [ 'MyEnclosedInStringProperty', ... ], ... ],
              SchemaChangePolicy => {
                EnableUpdateCatalog => 1,                     # OPTIONAL
                UpdateBehavior      => 'UPDATE_IN_DATABASE'
                ,    # values: UPDATE_IN_DATABASE, LOG; OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
            S3HudiDirectTarget => {
              AdditionalOptions => {
                'MyEnclosedInStringProperty' => 'MyEnclosedInStringProperty',
              },    # OPTIONAL
              Compression => 'gzip',   # values: gzip, lzo, uncompressed, snappy
              Format      => 'json'
              , # values: json, csv, avro, orc, parquet, hudi, delta, iceberg, hyper, xml
              Inputs => [ 'MyNodeId', ... ],            # min: 1, max: 1
              Name   => 'MyNodeName',
              Path   => 'MyEnclosedInStringProperty',
              NumberTargetPartitions =>
                'MyNumberTargetPartitionsString',       # OPTIONAL
              PartitionKeys => [ [ 'MyEnclosedInStringProperty', ... ], ... ],
              SchemaChangePolicy => {
                Database            => 'MyEnclosedInStringProperty',
                EnableUpdateCatalog => 1,                             # OPTIONAL
                Table               => 'MyEnclosedInStringProperty',
                UpdateBehavior      => 'UPDATE_IN_DATABASE'
                ,    # values: UPDATE_IN_DATABASE, LOG; OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
            S3HudiSource => {
              Name                  => 'MyNodeName',
              Paths                 => [ 'MyEnclosedInStringProperty', ... ],
              AdditionalHudiOptions => {
                'MyEnclosedInStringProperty' => 'MyEnclosedInStringProperty',
              },    # OPTIONAL
              AdditionalOptions => {
                BoundedFiles     => 1,                              # OPTIONAL
                BoundedSize      => 1,                              # OPTIONAL
                EnableSamplePath => 1,                              # OPTIONAL
                SamplePath       => 'MyEnclosedInStringProperty',
              },    # OPTIONAL
              OutputSchemas => [
                {
                  Columns => [
                    {
                      Name => 'MyGlueStudioColumnNameString',    # max: 1024
                      Type => 'MyColumnTypeString',    # max: 131072; OPTIONAL
                    },
                    ...
                  ],    # OPTIONAL
                },
                ...
              ],    # OPTIONAL
            },    # OPTIONAL
            S3HyperDirectTarget => {
              Inputs        => [ 'MyNodeId', ... ],            # min: 1, max: 1
              Name          => 'MyNodeName',
              Path          => 'MyEnclosedInStringProperty',
              Compression   => 'uncompressed',  # values: uncompressed; OPTIONAL
              PartitionKeys => [ [ 'MyEnclosedInStringProperty', ... ], ... ],
              SchemaChangePolicy => {
                Database            => 'MyEnclosedInStringProperty',
                EnableUpdateCatalog => 1,                             # OPTIONAL
                Table               => 'MyEnclosedInStringProperty',
                UpdateBehavior      => 'UPDATE_IN_DATABASE'
                ,    # values: UPDATE_IN_DATABASE, LOG; OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
            S3IcebergDirectTarget => {
              Compression => 'gzip',   # values: gzip, lzo, uncompressed, snappy
              Format      => 'json'
              , # values: json, csv, avro, orc, parquet, hudi, delta, iceberg, hyper, xml
              Inputs            => [ 'MyNodeId', ... ],         # min: 1, max: 1
              Name              => 'MyNodeName',
              Path              => 'MyEnclosedInStringProperty',
              AdditionalOptions => {
                'MyEnclosedInStringProperty' => 'MyEnclosedInStringProperty',
              },                                                # OPTIONAL
              NumberTargetPartitions =>
                'MyNumberTargetPartitionsString',               # OPTIONAL
              PartitionKeys => [ [ 'MyEnclosedInStringProperty', ... ], ... ],
              SchemaChangePolicy => {
                Database            => 'MyEnclosedInStringProperty',
                EnableUpdateCatalog => 1,                             # OPTIONAL
                Table               => 'MyEnclosedInStringProperty',
                UpdateBehavior      => 'UPDATE_IN_DATABASE'
                ,    # values: UPDATE_IN_DATABASE, LOG; OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
            S3JsonSource => {
              Name              => 'MyNodeName',
              Paths             => [ 'MyEnclosedInStringProperty', ... ],
              AdditionalOptions => {
                BoundedFiles     => 1,                              # OPTIONAL
                BoundedSize      => 1,                              # OPTIONAL
                EnableSamplePath => 1,                              # OPTIONAL
                SamplePath       => 'MyEnclosedInStringProperty',
              },    # OPTIONAL
              CompressionType => 'gzip',    # values: gzip, bzip2; OPTIONAL
              Exclusions     => [ 'MyEnclosedInStringProperty', ... ],
              GroupFiles     => 'MyEnclosedInStringProperty',
              GroupSize      => 'MyEnclosedInStringProperty',
              JsonPath       => 'MyEnclosedInStringProperty',
              MaxBand        => 1,                                    # OPTIONAL
              MaxFilesInBand => 1,                                    # OPTIONAL
              Multiline      => 1,                                    # OPTIONAL
              OutputSchemas  => [
                {
                  Columns => [
                    {
                      Name => 'MyGlueStudioColumnNameString',    # max: 1024
                      Type => 'MyColumnTypeString',    # max: 131072; OPTIONAL
                    },
                    ...
                  ],    # OPTIONAL
                },
                ...
              ],    # OPTIONAL
              Recurse => 1,    # OPTIONAL
            },    # OPTIONAL
            S3ParquetSource => {
              Name              => 'MyNodeName',
              Paths             => [ 'MyEnclosedInStringProperty', ... ],
              AdditionalOptions => {
                BoundedFiles     => 1,                              # OPTIONAL
                BoundedSize      => 1,                              # OPTIONAL
                EnableSamplePath => 1,                              # OPTIONAL
                SamplePath       => 'MyEnclosedInStringProperty',
              },    # OPTIONAL
              CompressionType => 'snappy'
              , # values: snappy, lzo, gzip, brotli, lz4, uncompressed, none; OPTIONAL
              Exclusions     => [ 'MyEnclosedInStringProperty', ... ],
              GroupFiles     => 'MyEnclosedInStringProperty',
              GroupSize      => 'MyEnclosedInStringProperty',
              MaxBand        => 1,                                    # OPTIONAL
              MaxFilesInBand => 1,                                    # OPTIONAL
              OutputSchemas  => [
                {
                  Columns => [
                    {
                      Name => 'MyGlueStudioColumnNameString',    # max: 1024
                      Type => 'MyColumnTypeString',    # max: 131072; OPTIONAL
                    },
                    ...
                  ],    # OPTIONAL
                },
                ...
              ],    # OPTIONAL
              Recurse => 1,    # OPTIONAL
            },    # OPTIONAL
            SelectFields => {
              Inputs => [ 'MyNodeId', ... ],    # min: 1, max: 1
              Name   => 'MyNodeName',
              Paths  => [ [ 'MyEnclosedInStringProperty', ... ], ... ],

            },    # OPTIONAL
            SelectFromCollection => {
              Index  => 1,
              Inputs => [ 'MyNodeId', ... ],    # min: 1, max: 1
              Name   => 'MyNodeName',

            },    # OPTIONAL
            SnowflakeSource => {
              Data => {
                Action            => 'MyGenericString',    # OPTIONAL
                AdditionalOptions => {
                  'MyEnclosedInStringProperty' => 'MyEnclosedInStringProperty',
                },                                         # OPTIONAL
                AutoPushdown => 1,                         # OPTIONAL
                Connection   => {
                  Description => 'MyEnclosedInStringProperty',
                  Label       => 'MyEnclosedInStringProperty',
                  Value       => 'MyEnclosedInStringProperty',
                },                                         # OPTIONAL
                Database => 'MyGenericString',             # OPTIONAL
                IamRole  => {
                  Description => 'MyEnclosedInStringProperty',
                  Label       => 'MyEnclosedInStringProperty',
                  Value       => 'MyEnclosedInStringProperty',
                },                                         # OPTIONAL
                MergeAction         => 'MyGenericLimitedString',    # OPTIONAL
                MergeClause         => 'MyGenericString',           # OPTIONAL
                MergeWhenMatched    => 'MyGenericLimitedString',    # OPTIONAL
                MergeWhenNotMatched => 'MyGenericLimitedString',    # OPTIONAL
                PostAction          => 'MyGenericString',           # OPTIONAL
                PreAction           => 'MyGenericString',           # OPTIONAL
                SampleQuery         => 'MyGenericString',           # OPTIONAL
                Schema              => 'MyGenericString',           # OPTIONAL
                SelectedColumns     => [
                  {
                    Description => 'MyEnclosedInStringProperty',
                    Label       => 'MyEnclosedInStringProperty',
                    Value       => 'MyEnclosedInStringProperty',
                  },
                  ...    # OPTIONAL
                ],    # OPTIONAL
                SourceType   => 'MyGenericLimitedString',    # OPTIONAL
                StagingTable => 'MyGenericString',           # OPTIONAL
                Table        => 'MyGenericString',           # OPTIONAL
                TableSchema  => [
                  {
                    Description => 'MyEnclosedInStringProperty',
                    Label       => 'MyEnclosedInStringProperty',
                    Value       => 'MyEnclosedInStringProperty',
                  },
                  ...    # OPTIONAL
                ],    # OPTIONAL
                TempDir => 'MyEnclosedInStringProperty',
                Upsert  => 1,                              # OPTIONAL
              },
              Name          => 'MyNodeName',
              OutputSchemas => [
                {
                  Columns => [
                    {
                      Name => 'MyGlueStudioColumnNameString',    # max: 1024
                      Type => 'MyColumnTypeString',    # max: 131072; OPTIONAL
                    },
                    ...
                  ],    # OPTIONAL
                },
                ...
              ],    # OPTIONAL
            },    # OPTIONAL
            SnowflakeTarget => {
              Data => {
                Action            => 'MyGenericString',    # OPTIONAL
                AdditionalOptions => {
                  'MyEnclosedInStringProperty' => 'MyEnclosedInStringProperty',
                },                                         # OPTIONAL
                AutoPushdown => 1,                         # OPTIONAL
                Connection   => {
                  Description => 'MyEnclosedInStringProperty',
                  Label       => 'MyEnclosedInStringProperty',
                  Value       => 'MyEnclosedInStringProperty',
                },                                         # OPTIONAL
                Database => 'MyGenericString',             # OPTIONAL
                IamRole  => {
                  Description => 'MyEnclosedInStringProperty',
                  Label       => 'MyEnclosedInStringProperty',
                  Value       => 'MyEnclosedInStringProperty',
                },                                         # OPTIONAL
                MergeAction         => 'MyGenericLimitedString',    # OPTIONAL
                MergeClause         => 'MyGenericString',           # OPTIONAL
                MergeWhenMatched    => 'MyGenericLimitedString',    # OPTIONAL
                MergeWhenNotMatched => 'MyGenericLimitedString',    # OPTIONAL
                PostAction          => 'MyGenericString',           # OPTIONAL
                PreAction           => 'MyGenericString',           # OPTIONAL
                SampleQuery         => 'MyGenericString',           # OPTIONAL
                Schema              => 'MyGenericString',           # OPTIONAL
                SelectedColumns     => [
                  {
                    Description => 'MyEnclosedInStringProperty',
                    Label       => 'MyEnclosedInStringProperty',
                    Value       => 'MyEnclosedInStringProperty',
                  },
                  ...    # OPTIONAL
                ],    # OPTIONAL
                SourceType   => 'MyGenericLimitedString',    # OPTIONAL
                StagingTable => 'MyGenericString',           # OPTIONAL
                Table        => 'MyGenericString',           # OPTIONAL
                TableSchema  => [
                  {
                    Description => 'MyEnclosedInStringProperty',
                    Label       => 'MyEnclosedInStringProperty',
                    Value       => 'MyEnclosedInStringProperty',
                  },
                  ...    # OPTIONAL
                ],    # OPTIONAL
                TempDir => 'MyEnclosedInStringProperty',
                Upsert  => 1,                              # OPTIONAL
              },
              Name   => 'MyNodeName',
              Inputs => [ 'MyNodeId', ... ],               # min: 1, max: 1
            },    # OPTIONAL
            SparkConnectorSource => {
              ConnectionName    => 'MyEnclosedInStringProperty',
              ConnectionType    => 'MyEnclosedInStringProperty',
              ConnectorName     => 'MyEnclosedInStringProperty',
              Name              => 'MyNodeName',
              AdditionalOptions => {
                'MyEnclosedInStringProperty' => 'MyEnclosedInStringProperty',
              },    # OPTIONAL
              OutputSchemas => [
                {
                  Columns => [
                    {
                      Name => 'MyGlueStudioColumnNameString',    # max: 1024
                      Type => 'MyColumnTypeString',    # max: 131072; OPTIONAL
                    },
                    ...
                  ],    # OPTIONAL
                },
                ...
              ],    # OPTIONAL
            },    # OPTIONAL
            SparkConnectorTarget => {
              ConnectionName    => 'MyEnclosedInStringProperty',
              ConnectionType    => 'MyEnclosedInStringProperty',
              ConnectorName     => 'MyEnclosedInStringProperty',
              Inputs            => [ 'MyNodeId', ... ],         # min: 1, max: 1
              Name              => 'MyNodeName',
              AdditionalOptions => {
                'MyEnclosedInStringProperty' => 'MyEnclosedInStringProperty',
              },                                                # OPTIONAL
              OutputSchemas => [
                {
                  Columns => [
                    {
                      Name => 'MyGlueStudioColumnNameString',    # max: 1024
                      Type => 'MyColumnTypeString',    # max: 131072; OPTIONAL
                    },
                    ...
                  ],    # OPTIONAL
                },
                ...
              ],    # OPTIONAL
            },    # OPTIONAL
            SparkSQL => {
              Inputs     => [ 'MyNodeId', ... ],    # min: 1
              Name       => 'MyNodeName',
              SqlAliases => [
                {
                  Alias => 'MyEnclosedInStringPropertyWithQuote',    # OPTIONAL
                  From  => 'MyNodeId',

                },
                ...
              ],
              SqlQuery      => 'MySqlQuery',    # OPTIONAL
              OutputSchemas => [
                {
                  Columns => [
                    {
                      Name => 'MyGlueStudioColumnNameString',    # max: 1024
                      Type => 'MyColumnTypeString',    # max: 131072; OPTIONAL
                    },
                    ...
                  ],    # OPTIONAL
                },
                ...
              ],    # OPTIONAL
            },    # OPTIONAL
            Spigot => {
              Inputs => [ 'MyNodeId', ... ],            # min: 1, max: 1
              Name   => 'MyNodeName',
              Path   => 'MyEnclosedInStringProperty',
              Prob   => 1,                              # max: 1; OPTIONAL
              Topk   => 1,                              # max: 100; OPTIONAL
            },    # OPTIONAL
            SplitFields => {
              Inputs => [ 'MyNodeId', ... ],    # min: 1, max: 1
              Name   => 'MyNodeName',
              Paths  => [ [ 'MyEnclosedInStringProperty', ... ], ... ],

            },    # OPTIONAL
            Union => {
              Inputs    => [ 'MyNodeId', ... ],    # min: 2, max: 2
              Name      => 'MyNodeName',
              UnionType => 'ALL',                  # values: ALL, DISTINCT

            },    # OPTIONAL
          },
        },    # OPTIONAL
        Command => {
          Name           => 'MyGenericString',           # OPTIONAL
          PythonVersion  => 'MyPythonVersionString',     # OPTIONAL
          Runtime        => 'MyRuntimeNameString',       # max: 64; OPTIONAL
          ScriptLocation => 'MyScriptLocationString',    # max: 400000; OPTIONAL
        },    # OPTIONAL
        Connections => {
          Connections => [
            'MyConnectionString', ...    # max: 255
          ],    # max: 1000; OPTIONAL
        },    # OPTIONAL
        DefaultArguments => {
          'MyGenericString' =>
            'MyGenericString',    # key: OPTIONAL, value: OPTIONAL
        },    # OPTIONAL
        Description       => 'MyDescriptionString',    # max: 2048; OPTIONAL
        ExecutionClass    => 'FLEX',   # values: FLEX, STANDARDmax: 16; OPTIONAL
        ExecutionProperty => {
          MaxConcurrentRuns => 1,      # OPTIONAL
        },    # OPTIONAL
        GlueVersion => 'MyGlueVersionString',    # min: 1, max: 255; OPTIONAL
        JobMode     => 'SCRIPT',    # values: SCRIPT, VISUAL, NOTEBOOK; OPTIONAL
        JobRunQueuingEnabled    => 1,                        # OPTIONAL
        LogUri                  => 'MyUriString',            # OPTIONAL
        MaintenanceWindow       => 'MyMaintenanceWindow',    # OPTIONAL
        MaxCapacity             => 1,                        # OPTIONAL
        MaxRetries              => 1,                        # OPTIONAL
        NonOverridableArguments => {
          'MyGenericString' =>
            'MyGenericString',    # key: OPTIONAL, value: OPTIONAL
        },    # OPTIONAL
        NotificationProperty => {
          NotifyDelayAfter => 1,    # min: 1; OPTIONAL
        },    # OPTIONAL
        NumberOfWorkers       => 1,                 # OPTIONAL
        Role                  => 'MyRoleString',    # OPTIONAL
        SecurityConfiguration => 'MyNameString',    # min: 1, max: 255
        SourceControlDetails  => {
          AuthStrategy => 'PERSONAL_ACCESS_TOKEN'
          ,    # values: PERSONAL_ACCESS_TOKEN, AWS_SECRETS_MANAGER; OPTIONAL
          AuthToken    => 'MyGeneric512CharString', # min: 1, max: 512; OPTIONAL
          Branch       => 'MyGeneric512CharString', # min: 1, max: 512; OPTIONAL
          Folder       => 'MyGeneric512CharString', # min: 1, max: 512; OPTIONAL
          LastCommitId => 'MyGeneric512CharString', # min: 1, max: 512; OPTIONAL
          Owner        => 'MyGeneric512CharString', # min: 1, max: 512; OPTIONAL
          Provider     => 'GITHUB'
          ,    # values: GITHUB, GITLAB, BITBUCKET, AWS_CODE_COMMIT; OPTIONAL
          Repository => 'MyGeneric512CharString',   # min: 1, max: 512; OPTIONAL
        },    # OPTIONAL
        Timeout    => 1,           # min: 1; OPTIONAL
        WorkerType => 'Standard'
        ,    # values: Standard, G.1X, G.2X, G.025X, G.4X, G.8X, Z.2X; OPTIONAL
      },

    );

    # Results:
    my $JobName = $UpdateJobResponse->JobName;

    # Returns a L<Paws::Glue::UpdateJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/UpdateJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobName => Str

The name of the job definition to update.



=head2 B<REQUIRED> JobUpdate => L<Paws::Glue::JobUpdate>

Specifies the values with which to update the job definition.
Unspecified configuration is removed or reset to default values.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateJob in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

