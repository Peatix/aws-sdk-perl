
package Paws::Glue::CreateJob;
  use Moose;
  has AllocatedCapacity => (is => 'ro', isa => 'Int');
  has CodeGenConfigurationNodes => (is => 'ro', isa => 'Paws::Glue::CodeGenConfigurationNodes');
  has Command => (is => 'ro', isa => 'Paws::Glue::JobCommand', required => 1);
  has Connections => (is => 'ro', isa => 'Paws::Glue::ConnectionsList');
  has DefaultArguments => (is => 'ro', isa => 'Paws::Glue::GenericMap');
  has Description => (is => 'ro', isa => 'Str');
  has ExecutionClass => (is => 'ro', isa => 'Str');
  has ExecutionProperty => (is => 'ro', isa => 'Paws::Glue::ExecutionProperty');
  has GlueVersion => (is => 'ro', isa => 'Str');
  has JobMode => (is => 'ro', isa => 'Str');
  has JobRunQueuingEnabled => (is => 'ro', isa => 'Bool');
  has LogUri => (is => 'ro', isa => 'Str');
  has MaintenanceWindow => (is => 'ro', isa => 'Str');
  has MaxCapacity => (is => 'ro', isa => 'Num');
  has MaxRetries => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has NonOverridableArguments => (is => 'ro', isa => 'Paws::Glue::GenericMap');
  has NotificationProperty => (is => 'ro', isa => 'Paws::Glue::NotificationProperty');
  has NumberOfWorkers => (is => 'ro', isa => 'Int');
  has Role => (is => 'ro', isa => 'Str', required => 1);
  has SecurityConfiguration => (is => 'ro', isa => 'Str');
  has SourceControlDetails => (is => 'ro', isa => 'Paws::Glue::SourceControlDetails');
  has Tags => (is => 'ro', isa => 'Paws::Glue::TagsMap');
  has Timeout => (is => 'ro', isa => 'Int');
  has WorkerType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::CreateJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::CreateJob - Arguments for method CreateJob on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateJob on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method CreateJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateJob.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $CreateJobResponse = $glue->CreateJob(
      Command => {
        Name           => 'MyGenericString',           # OPTIONAL
        PythonVersion  => 'MyPythonVersionString',     # OPTIONAL
        Runtime        => 'MyRuntimeNameString',       # max: 64; OPTIONAL
        ScriptLocation => 'MyScriptLocationString',    # max: 400000; OPTIONAL
      },
      Name                      => 'MyNameString',
      Role                      => 'MyRoleString',
      AllocatedCapacity         => 1,                  # OPTIONAL
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
                Dropped  => 1,                                       # OPTIONAL
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
            ConnectionTable => 'MyEnclosedInStringPropertyWithQuote', # OPTIONAL
            OutputSchemas   => [
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
            AdditionalDeltaOptions =>
              { 'MyEnclosedInStringProperty' => 'MyEnclosedInStringProperty', }
            ,    # OPTIONAL
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
            AdditionalHudiOptions =>
              { 'MyEnclosedInStringProperty' => 'MyEnclosedInStringProperty', }
            ,    # OPTIONAL
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
              IncludeHeaders         => 1,                            # OPTIONAL
              MaxOffsetsPerTrigger   => 1,                            # OPTIONAL
              MinPartitions          => 1,                            # OPTIONAL
              NumRetries             => 1,                            # OPTIONAL
              PollTimeoutMs          => 1,                            # OPTIONAL
              RetryIntervalMs        => 1,                            # OPTIONAL
              SecurityProtocol       => 'MyEnclosedInStringProperty',
              StartingOffsets        => 'MyEnclosedInStringProperty',
              StartingTimestamp      => '1970-01-01T01:00:00',        # OPTIONAL
              SubscribePattern       => 'MyEnclosedInStringProperty',
              TopicName              => 'MyEnclosedInStringProperty',
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
              AddIdleTimeBetweenReads => 1,                           # OPTIONAL
              AddRecordTimestamp      => 'MyEnclosedInStringProperty',
              AvoidEmptyBatches       => 1,                           # OPTIONAL
              Classification          => 'MyEnclosedInStringProperty',
              Delimiter               => 'MyEnclosedInStringProperty',
              DescribeShardInterval   => 1,                           # OPTIONAL
              EmitConsumerLagMetrics  => 'MyEnclosedInStringProperty',
              EndpointUrl             => 'MyEnclosedInStringProperty',
              IdleTimeBetweenReadsInMs => 1,                          # OPTIONAL
              MaxFetchRecordsPerShard  => 1,                          # OPTIONAL
              MaxFetchTimeInMs         => 1,                          # OPTIONAL
              MaxRecordPerRead         => 1,                          # OPTIONAL
              MaxRetryIntervalMs       => 1,                          # OPTIONAL
              NumRetries               => 1,                          # OPTIONAL
              RetryIntervalMs          => 1,                          # OPTIONAL
              RoleArn                  => 'MyEnclosedInStringProperty',
              RoleSessionName          => 'MyEnclosedInStringProperty',
              StartingPosition         => 'latest'
              ,    # values: latest, trim_horizon, earliest, timestamp; OPTIONAL
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
              IncludeHeaders         => 1,                            # OPTIONAL
              MaxOffsetsPerTrigger   => 1,                            # OPTIONAL
              MinPartitions          => 1,                            # OPTIONAL
              NumRetries             => 1,                            # OPTIONAL
              PollTimeoutMs          => 1,                            # OPTIONAL
              RetryIntervalMs        => 1,                            # OPTIONAL
              SecurityProtocol       => 'MyEnclosedInStringProperty',
              StartingOffsets        => 'MyEnclosedInStringProperty',
              StartingTimestamp      => '1970-01-01T01:00:00',        # OPTIONAL
              SubscribePattern       => 'MyEnclosedInStringProperty',
              TopicName              => 'MyEnclosedInStringProperty',
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
              AddIdleTimeBetweenReads => 1,                           # OPTIONAL
              AddRecordTimestamp      => 'MyEnclosedInStringProperty',
              AvoidEmptyBatches       => 1,                           # OPTIONAL
              Classification          => 'MyEnclosedInStringProperty',
              Delimiter               => 'MyEnclosedInStringProperty',
              DescribeShardInterval   => 1,                           # OPTIONAL
              EmitConsumerLagMetrics  => 'MyEnclosedInStringProperty',
              EndpointUrl             => 'MyEnclosedInStringProperty',
              IdleTimeBetweenReadsInMs => 1,                          # OPTIONAL
              MaxFetchRecordsPerShard  => 1,                          # OPTIONAL
              MaxFetchTimeInMs         => 1,                          # OPTIONAL
              MaxRecordPerRead         => 1,                          # OPTIONAL
              MaxRetryIntervalMs       => 1,                          # OPTIONAL
              NumRetries               => 1,                          # OPTIONAL
              RetryIntervalMs          => 1,                          # OPTIONAL
              RoleArn                  => 'MyEnclosedInStringProperty',
              RoleSessionName          => 'MyEnclosedInStringProperty',
              StartingPosition         => 'latest'
              ,    # values: latest, trim_horizon, earliest, timestamp; OPTIONAL
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
                  'str',    # values: str, int, float, complex, bool, list, null
                IsOptional => 1,    # OPTIONAL
                ListType   =>
                  'str',    # values: str, int, float, complex, bool, list, null
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
              CloudWatchMetricsEnabled => 1,                          # OPTIONAL
              EvaluationContext        => 'MyGenericLimitedString',   # OPTIONAL
              ResultsPublishingEnabled => 1,                          # OPTIONAL
              ResultsS3Prefix          => 'MyEnclosedInStringProperty',
            },    # OPTIONAL
            StopJobOnFailureOptions => {
              StopJobOnFailureTiming =>
                'Immediate',    # values: Immediate, AfterDataLoad; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          EvaluateDataQualityMultiFrame => {
            Inputs                => [ 'MyNodeId', ... ],   # min: 1
            Name                  => 'MyNodeName',
            Ruleset               => 'MyDQDLString',        # min: 1, max: 65536
            AdditionalDataSources =>
              { 'MyNodeName' => 'MyEnclosedInStringProperty', },    # OPTIONAL
            AdditionalOptions => {
              'performanceTuning.caching' => 'MyGenericString'
              , # key: values: performanceTuning.caching, observations.scope, value: OPTIONAL
            },    # OPTIONAL
            PublishingOptions => {
              CloudWatchMetricsEnabled => 1,                          # OPTIONAL
              EvaluationContext        => 'MyGenericLimitedString',   # OPTIONAL
              ResultsPublishingEnabled => 1,                          # OPTIONAL
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
                Operation => 'EQ', # values: EQ, LT, GT, LTE, GTE, REGEX, ISNULL
                Values    => [
                  {
                    Type =>
                      'COLUMNEXTRACTED',    # values: COLUMNEXTRACTED, CONSTANT
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
              FilterPredicate          => 'MyEnclosedInStringProperty',
              JobBookmarkKeys          => [ 'MyEnclosedInStringProperty', ... ],
              JobBookmarkKeysSortOrder => 'MyEnclosedInStringProperty',
              LowerBound      => 1,                              # OPTIONAL
              NumPartitions   => 1,                              # OPTIONAL
              PartitionColumn => 'MyEnclosedInStringProperty',
              UpperBound      => 1,                              # OPTIONAL
            },    # OPTIONAL
            ConnectionTable => 'MyEnclosedInStringPropertyWithQuote', # OPTIONAL
            OutputSchemas   => [
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
            ConnectionTable => 'MyEnclosedInStringPropertyWithQuote', # OPTIONAL
            ConnectionType  => 'MyEnclosedInStringProperty',
            ConnectorName   => 'MyEnclosedInStringProperty',
            Inputs            => [ 'MyNodeId', ... ],    # min: 1, max: 1
            Name              => 'MyNodeName',
            AdditionalOptions =>
              { 'MyEnclosedInStringProperty' => 'MyEnclosedInStringProperty', }
            ,                                            # OPTIONAL
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
            Inputs              => [ 'MyNodeId', ... ],       # min: 1, max: 1
            Name                => 'MyNodeName',
            PiiType             => 'RowAudit'
            ,    # values: RowAudit, RowMasking, ColumnAudit, ColumnMasking
            MaskValue         => 'MyMaskValue',    # max: 256; OPTIONAL
            OutputColumnName  => 'MyEnclosedInStringProperty',
            SampleFraction    => 1,                           # max: 1; OPTIONAL
            ThresholdFraction => 1,                           # max: 1; OPTIONAL
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
              RecipeVersion => 'MyRecipeVersion',              # min: 1, max: 16

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
                    Condition    => 'MyDatabrewCondition',   # min: 1, max: 128
                    TargetColumn => 'MyTargetColumn',        # min: 1, max: 1024
                    Value => 'MyDatabrewConditionValue',   # max: 1024; OPTIONAL
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
              UpsertKeys => [ 'MyEnclosedInStringProperty', ... ],    # OPTIONAL
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
            AdditionalDeltaOptions =>
              { 'MyEnclosedInStringProperty' => 'MyEnclosedInStringProperty', }
            ,    # OPTIONAL
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
            AdditionalHudiOptions =>
              { 'MyEnclosedInStringProperty' => 'MyEnclosedInStringProperty', }
            ,    # OPTIONAL
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
            Separator => 'comma',   # values: comma, ctrla, pipe, semicolon, tab
            AdditionalOptions => {
              BoundedFiles     => 1,                              # OPTIONAL
              BoundedSize      => 1,                              # OPTIONAL
              EnableSamplePath => 1,                              # OPTIONAL
              SamplePath       => 'MyEnclosedInStringProperty',
            },    # OPTIONAL
            CompressionType => 'gzip',    # values: gzip, bzip2; OPTIONAL
            Escaper         => 'MyEnclosedInStringPropertyWithQuote', # OPTIONAL
            Exclusions      => [ 'MyEnclosedInStringProperty', ... ],
            GroupFiles      => 'MyEnclosedInStringProperty',
            GroupSize       => 'MyEnclosedInStringProperty',
            MaxBand         => 1,                                     # OPTIONAL
            MaxFilesInBand  => 1,                                     # OPTIONAL
            Multiline       => 1,                                     # OPTIONAL
            OptimizePerformance => 1,                                 # OPTIONAL
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
            Inputs            => [ 'MyNodeId', ... ],           # min: 1, max: 1
            Name              => 'MyNodeName',
            Table             => 'MyEnclosedInStringProperty',
            AdditionalOptions =>
              { 'MyEnclosedInStringProperty' => 'MyEnclosedInStringProperty', }
            ,                                                   # OPTIONAL
            PartitionKeys => [ [ 'MyEnclosedInStringProperty', ... ], ... ],
            SchemaChangePolicy => {
              EnableUpdateCatalog => 1,                         # OPTIONAL
              UpdateBehavior      => 'UPDATE_IN_DATABASE'
              ,    # values: UPDATE_IN_DATABASE, LOG; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          S3DeltaDirectTarget => {
            Compression => 'uncompressed',    # values: uncompressed, snappy
            Format      => 'json'
            , # values: json, csv, avro, orc, parquet, hudi, delta, iceberg, hyper, xml
            Inputs            => [ 'MyNodeId', ... ],           # min: 1, max: 1
            Name              => 'MyNodeName',
            Path              => 'MyEnclosedInStringProperty',
            AdditionalOptions =>
              { 'MyEnclosedInStringProperty' => 'MyEnclosedInStringProperty', }
            ,                                                   # OPTIONAL
            NumberTargetPartitions =>
              'MyNumberTargetPartitionsString',                 # OPTIONAL
            PartitionKeys => [ [ 'MyEnclosedInStringProperty', ... ], ... ],
            SchemaChangePolicy => {
              Database            => 'MyEnclosedInStringProperty',
              EnableUpdateCatalog => 1,                              # OPTIONAL
              Table               => 'MyEnclosedInStringProperty',
              UpdateBehavior      => 'UPDATE_IN_DATABASE'
              ,    # values: UPDATE_IN_DATABASE, LOG; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          S3DeltaSource => {
            Name                   => 'MyNodeName',
            Paths                  => [ 'MyEnclosedInStringProperty', ... ],
            AdditionalDeltaOptions =>
              { 'MyEnclosedInStringProperty' => 'MyEnclosedInStringProperty', }
            ,    # OPTIONAL
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
              EnableUpdateCatalog => 1,                              # OPTIONAL
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
            MaxBand        => 1,                                      # OPTIONAL
            MaxFilesInBand => 1,                                      # OPTIONAL
            NumberRows     => 1,                                      # OPTIONAL
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
              EnableUpdateCatalog => 1,                              # OPTIONAL
              Table               => 'MyEnclosedInStringProperty',
              UpdateBehavior      => 'UPDATE_IN_DATABASE'
              ,    # values: UPDATE_IN_DATABASE, LOG; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          S3HudiCatalogTarget => {
            AdditionalOptions =>
              { 'MyEnclosedInStringProperty' => 'MyEnclosedInStringProperty', }
            ,                                                # OPTIONAL
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
            AdditionalOptions =>
              { 'MyEnclosedInStringProperty' => 'MyEnclosedInStringProperty', }
            ,                                         # OPTIONAL
            Compression => 'gzip',    # values: gzip, lzo, uncompressed, snappy
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
              EnableUpdateCatalog => 1,                              # OPTIONAL
              Table               => 'MyEnclosedInStringProperty',
              UpdateBehavior      => 'UPDATE_IN_DATABASE'
              ,    # values: UPDATE_IN_DATABASE, LOG; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          S3HudiSource => {
            Name                  => 'MyNodeName',
            Paths                 => [ 'MyEnclosedInStringProperty', ... ],
            AdditionalHudiOptions =>
              { 'MyEnclosedInStringProperty' => 'MyEnclosedInStringProperty', }
            ,    # OPTIONAL
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
            Compression   => 'uncompressed',    # values: uncompressed; OPTIONAL
            PartitionKeys => [ [ 'MyEnclosedInStringProperty', ... ], ... ],
            SchemaChangePolicy => {
              Database            => 'MyEnclosedInStringProperty',
              EnableUpdateCatalog => 1,                              # OPTIONAL
              Table               => 'MyEnclosedInStringProperty',
              UpdateBehavior      => 'UPDATE_IN_DATABASE'
              ,    # values: UPDATE_IN_DATABASE, LOG; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          S3IcebergDirectTarget => {
            Compression => 'gzip',    # values: gzip, lzo, uncompressed, snappy
            Format      => 'json'
            , # values: json, csv, avro, orc, parquet, hudi, delta, iceberg, hyper, xml
            Inputs            => [ 'MyNodeId', ... ],           # min: 1, max: 1
            Name              => 'MyNodeName',
            Path              => 'MyEnclosedInStringProperty',
            AdditionalOptions =>
              { 'MyEnclosedInStringProperty' => 'MyEnclosedInStringProperty', }
            ,                                                   # OPTIONAL
            NumberTargetPartitions =>
              'MyNumberTargetPartitionsString',                 # OPTIONAL
            PartitionKeys => [ [ 'MyEnclosedInStringProperty', ... ], ... ],
            SchemaChangePolicy => {
              Database            => 'MyEnclosedInStringProperty',
              EnableUpdateCatalog => 1,                              # OPTIONAL
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
            Exclusions      => [ 'MyEnclosedInStringProperty', ... ],
            GroupFiles      => 'MyEnclosedInStringProperty',
            GroupSize       => 'MyEnclosedInStringProperty',
            JsonPath        => 'MyEnclosedInStringProperty',
            MaxBand         => 1,                                     # OPTIONAL
            MaxFilesInBand  => 1,                                     # OPTIONAL
            Multiline       => 1,                                     # OPTIONAL
            OutputSchemas   => [
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
            MaxBand        => 1,                                      # OPTIONAL
            MaxFilesInBand => 1,                                      # OPTIONAL
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
            AdditionalOptions =>
              { 'MyEnclosedInStringProperty' => 'MyEnclosedInStringProperty', }
            ,    # OPTIONAL
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
            Inputs            => [ 'MyNodeId', ... ],           # min: 1, max: 1
            Name              => 'MyNodeName',
            AdditionalOptions =>
              { 'MyEnclosedInStringProperty' => 'MyEnclosedInStringProperty', }
            ,                                                   # OPTIONAL
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
      Connections => {
        Connections => [
          'MyConnectionString', ...    # max: 255
        ],    # max: 1000; OPTIONAL
      },    # OPTIONAL
      DefaultArguments => {
        'MyGenericString' => 'MyGenericString', # key: OPTIONAL, value: OPTIONAL
      },    # OPTIONAL
      Description       => 'MyDescriptionString',    # OPTIONAL
      ExecutionClass    => 'FLEX',                   # OPTIONAL
      ExecutionProperty => {
        MaxConcurrentRuns => 1,                      # OPTIONAL
      },    # OPTIONAL
      GlueVersion             => 'MyGlueVersionString',    # OPTIONAL
      JobMode                 => 'SCRIPT',                 # OPTIONAL
      JobRunQueuingEnabled    => 1,                        # OPTIONAL
      LogUri                  => 'MyUriString',            # OPTIONAL
      MaintenanceWindow       => 'MyMaintenanceWindow',    # OPTIONAL
      MaxCapacity             => 1,                        # OPTIONAL
      MaxRetries              => 1,                        # OPTIONAL
      NonOverridableArguments => {
        'MyGenericString' => 'MyGenericString', # key: OPTIONAL, value: OPTIONAL
      },    # OPTIONAL
      NotificationProperty => {
        NotifyDelayAfter => 1,    # min: 1; OPTIONAL
      },    # OPTIONAL
      NumberOfWorkers       => 1,                 # OPTIONAL
      SecurityConfiguration => 'MyNameString',    # OPTIONAL
      SourceControlDetails  => {
        AuthStrategy => 'PERSONAL_ACCESS_TOKEN'
        ,    # values: PERSONAL_ACCESS_TOKEN, AWS_SECRETS_MANAGER; OPTIONAL
        AuthToken    => 'MyGeneric512CharString',   # min: 1, max: 512; OPTIONAL
        Branch       => 'MyGeneric512CharString',   # min: 1, max: 512; OPTIONAL
        Folder       => 'MyGeneric512CharString',   # min: 1, max: 512; OPTIONAL
        LastCommitId => 'MyGeneric512CharString',   # min: 1, max: 512; OPTIONAL
        Owner        => 'MyGeneric512CharString',   # min: 1, max: 512; OPTIONAL
        Provider     => 'GITHUB'
        ,    # values: GITHUB, GITLAB, BITBUCKET, AWS_CODE_COMMIT; OPTIONAL
        Repository => 'MyGeneric512CharString',    # min: 1, max: 512; OPTIONAL
      },    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      Timeout    => 1,             # OPTIONAL
      WorkerType => 'Standard',    # OPTIONAL
    );

    # Results:
    my $Name = $CreateJobResponse->Name;

    # Returns a L<Paws::Glue::CreateJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/CreateJob>

=head1 ATTRIBUTES


=head2 AllocatedCapacity => Int

This parameter is deprecated. Use C<MaxCapacity> instead.

The number of Glue data processing units (DPUs) to allocate to this
Job. You can allocate a minimum of 2 DPUs; the default is 10. A DPU is
a relative measure of processing power that consists of 4 vCPUs of
compute capacity and 16 GB of memory. For more information, see the
Glue pricing page (https://aws.amazon.com/glue/pricing/).



=head2 CodeGenConfigurationNodes => L<Paws::Glue::CodeGenConfigurationNodes>

The representation of a directed acyclic graph on which both the Glue
Studio visual component and Glue Studio code generation is based.



=head2 B<REQUIRED> Command => L<Paws::Glue::JobCommand>

The C<JobCommand> that runs this job.



=head2 Connections => L<Paws::Glue::ConnectionsList>

The connections used for this job.



=head2 DefaultArguments => L<Paws::Glue::GenericMap>

The default arguments for every run of this job, specified as
name-value pairs.

You can specify arguments here that your own job-execution script
consumes, as well as arguments that Glue itself consumes.

Job arguments may be logged. Do not pass plaintext secrets as
arguments. Retrieve secrets from a Glue Connection, Secrets Manager or
other secret management mechanism if you intend to keep them within the
Job.

For information about how to specify and consume your own Job
arguments, see the Calling Glue APIs in Python
(https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html)
topic in the developer guide.

For information about the arguments you can provide to this field when
configuring Spark jobs, see the Special Parameters Used by Glue
(https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html)
topic in the developer guide.

For information about the arguments you can provide to this field when
configuring Ray jobs, see Using job parameters in Ray jobs
(https://docs.aws.amazon.com/glue/latest/dg/author-job-ray-job-parameters.html)
in the developer guide.



=head2 Description => Str

Description of the job being defined.



=head2 ExecutionClass => Str

Indicates whether the job is run with a standard or flexible execution
class. The standard execution-class is ideal for time-sensitive
workloads that require fast job startup and dedicated resources.

The flexible execution class is appropriate for time-insensitive jobs
whose start and completion times may vary.

Only jobs with Glue version 3.0 and above and command type C<glueetl>
will be allowed to set C<ExecutionClass> to C<FLEX>. The flexible
execution class is available for Spark jobs.

Valid values are: C<"FLEX">, C<"STANDARD">

=head2 ExecutionProperty => L<Paws::Glue::ExecutionProperty>

An C<ExecutionProperty> specifying the maximum number of concurrent
runs allowed for this job.



=head2 GlueVersion => Str

In Spark jobs, C<GlueVersion> determines the versions of Apache Spark
and Python that Glue available in a job. The Python version indicates
the version supported for jobs of type Spark.

Ray jobs should set C<GlueVersion> to C<4.0> or greater. However, the
versions of Ray, Python and additional libraries available in your Ray
job are determined by the C<Runtime> parameter of the Job command.

For more information about the available Glue versions and
corresponding Spark and Python versions, see Glue version
(https://docs.aws.amazon.com/glue/latest/dg/add-job.html) in the
developer guide.

Jobs that are created without specifying a Glue version default to Glue
0.9.



=head2 JobMode => Str

A mode that describes how a job was created. Valid values are:

=over

=item *

C<SCRIPT> - The job was created using the Glue Studio script editor.

=item *

C<VISUAL> - The job was created using the Glue Studio visual editor.

=item *

C<NOTEBOOK> - The job was created using an interactive sessions
notebook.

=back

When the C<JobMode> field is missing or null, C<SCRIPT> is assigned as
the default value.

Valid values are: C<"SCRIPT">, C<"VISUAL">, C<"NOTEBOOK">

=head2 JobRunQueuingEnabled => Bool

Specifies whether job run queuing is enabled for the job runs for this
job.

A value of true means job run queuing is enabled for the job runs. If
false or not populated, the job runs will not be considered for
queueing.

If this field does not match the value set in the job run, then the
value from the job run field will be used.



=head2 LogUri => Str

This field is reserved for future use.



=head2 MaintenanceWindow => Str

This field specifies a day of the week and hour for a maintenance
window for streaming jobs. Glue periodically performs maintenance
activities. During these maintenance windows, Glue will need to restart
your streaming jobs.

Glue will restart the job within 3 hours of the specified maintenance
window. For instance, if you set up the maintenance window for Monday
at 10:00AM GMT, your jobs will be restarted between 10:00AM GMT to
1:00PM GMT.



=head2 MaxCapacity => Num

For Glue version 1.0 or earlier jobs, using the standard worker type,
the number of Glue data processing units (DPUs) that can be allocated
when this job runs. A DPU is a relative measure of processing power
that consists of 4 vCPUs of compute capacity and 16 GB of memory. For
more information, see the Glue pricing page
(https://aws.amazon.com/glue/pricing/).

For Glue version 2.0+ jobs, you cannot specify a C<Maximum capacity>.
Instead, you should specify a C<Worker type> and the C<Number of
workers>.

Do not set C<MaxCapacity> if using C<WorkerType> and
C<NumberOfWorkers>.

The value that can be allocated for C<MaxCapacity> depends on whether
you are running a Python shell job, an Apache Spark ETL job, or an
Apache Spark streaming ETL job:

=over

=item *

When you specify a Python shell job (C<JobCommand.Name>="pythonshell"),
you can allocate either 0.0625 or 1 DPU. The default is 0.0625 DPU.

=item *

When you specify an Apache Spark ETL job (C<JobCommand.Name>="glueetl")
or Apache Spark streaming ETL job (C<JobCommand.Name>="gluestreaming"),
you can allocate from 2 to 100 DPUs. The default is 10 DPUs. This job
type cannot have a fractional DPU allocation.

=back




=head2 MaxRetries => Int

The maximum number of times to retry this job if it fails.



=head2 B<REQUIRED> Name => Str

The name you assign to this job definition. It must be unique in your
account.



=head2 NonOverridableArguments => L<Paws::Glue::GenericMap>

Arguments for this job that are not overridden when providing job
arguments in a job run, specified as name-value pairs.



=head2 NotificationProperty => L<Paws::Glue::NotificationProperty>

Specifies configuration properties of a job notification.



=head2 NumberOfWorkers => Int

The number of workers of a defined C<workerType> that are allocated
when a job runs.



=head2 B<REQUIRED> Role => Str

The name or Amazon Resource Name (ARN) of the IAM role associated with
this job.



=head2 SecurityConfiguration => Str

The name of the C<SecurityConfiguration> structure to be used with this
job.



=head2 SourceControlDetails => L<Paws::Glue::SourceControlDetails>

The details for a source control configuration for a job, allowing
synchronization of job artifacts to or from a remote repository.



=head2 Tags => L<Paws::Glue::TagsMap>

The tags to use with this job. You may use tags to limit access to the
job. For more information about tags in Glue, see Amazon Web Services
Tags in Glue
(https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html) in the
developer guide.



=head2 Timeout => Int

The job timeout in minutes. This is the maximum time that a job run can
consume resources before it is terminated and enters C<TIMEOUT> status.

Jobs must have timeout values less than 7 days or 10080 minutes.
Otherwise, the jobs will throw an exception.

When the value is left blank, the timeout is defaulted to 2880 minutes.

Any existing Glue jobs that had a timeout value greater than 7 days
will be defaulted to 7 days. For instance if you have specified a
timeout of 20 days for a batch job, it will be stopped on the 7th day.

For streaming jobs, if you have set up a maintenance window, it will be
restarted during the maintenance window after 7 days.



=head2 WorkerType => Str

The type of predefined worker that is allocated when a job runs.
Accepts a value of G.1X, G.2X, G.4X, G.8X or G.025X for Spark jobs.
Accepts the value Z.2X for Ray jobs.

=over

=item *

For the C<G.1X> worker type, each worker maps to 1 DPU (4 vCPUs, 16 GB
of memory) with 94GB disk, and provides 1 executor per worker. We
recommend this worker type for workloads such as data transforms,
joins, and queries, to offers a scalable and cost effective way to run
most jobs.

=item *

For the C<G.2X> worker type, each worker maps to 2 DPU (8 vCPUs, 32 GB
of memory) with 138GB disk, and provides 1 executor per worker. We
recommend this worker type for workloads such as data transforms,
joins, and queries, to offers a scalable and cost effective way to run
most jobs.

=item *

For the C<G.4X> worker type, each worker maps to 4 DPU (16 vCPUs, 64 GB
of memory) with 256GB disk, and provides 1 executor per worker. We
recommend this worker type for jobs whose workloads contain your most
demanding transforms, aggregations, joins, and queries. This worker
type is available only for Glue version 3.0 or later Spark ETL jobs in
the following Amazon Web Services Regions: US East (Ohio), US East (N.
Virginia), US West (Oregon), Asia Pacific (Singapore), Asia Pacific
(Sydney), Asia Pacific (Tokyo), Canada (Central), Europe (Frankfurt),
Europe (Ireland), and Europe (Stockholm).

=item *

For the C<G.8X> worker type, each worker maps to 8 DPU (32 vCPUs, 128
GB of memory) with 512GB disk, and provides 1 executor per worker. We
recommend this worker type for jobs whose workloads contain your most
demanding transforms, aggregations, joins, and queries. This worker
type is available only for Glue version 3.0 or later Spark ETL jobs, in
the same Amazon Web Services Regions as supported for the C<G.4X>
worker type.

=item *

For the C<G.025X> worker type, each worker maps to 0.25 DPU (2 vCPUs, 4
GB of memory) with 84GB disk, and provides 1 executor per worker. We
recommend this worker type for low volume streaming jobs. This worker
type is only available for Glue version 3.0 or later streaming jobs.

=item *

For the C<Z.2X> worker type, each worker maps to 2 M-DPU (8vCPUs, 64 GB
of memory) with 128 GB disk, and provides up to 8 Ray workers based on
the autoscaler.

=back


Valid values are: C<"Standard">, C<"G.1X">, C<"G.2X">, C<"G.025X">, C<"G.4X">, C<"G.8X">, C<"Z.2X">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateJob in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

