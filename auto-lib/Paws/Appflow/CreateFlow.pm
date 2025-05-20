
package Paws::Appflow::CreateFlow;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DestinationFlowConfigList => (is => 'ro', isa => 'ArrayRef[Paws::Appflow::DestinationFlowConfig]', traits => ['NameInRequest'], request_name => 'destinationFlowConfigList', required => 1);
  has FlowName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'flowName', required => 1);
  has KmsArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsArn');
  has MetadataCatalogConfig => (is => 'ro', isa => 'Paws::Appflow::MetadataCatalogConfig', traits => ['NameInRequest'], request_name => 'metadataCatalogConfig');
  has SourceFlowConfig => (is => 'ro', isa => 'Paws::Appflow::SourceFlowConfig', traits => ['NameInRequest'], request_name => 'sourceFlowConfig', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Appflow::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has Tasks => (is => 'ro', isa => 'ArrayRef[Paws::Appflow::Task]', traits => ['NameInRequest'], request_name => 'tasks', required => 1);
  has TriggerConfig => (is => 'ro', isa => 'Paws::Appflow::TriggerConfig', traits => ['NameInRequest'], request_name => 'triggerConfig', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateFlow');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/create-flow');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Appflow::CreateFlowResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Appflow::CreateFlow - Arguments for method CreateFlow on L<Paws::Appflow>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateFlow on the
L<Amazon Appflow|Paws::Appflow> service. Use the attributes of this class
as arguments to method CreateFlow.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateFlow.

=head1 SYNOPSIS

    my $appflow = Paws->service('Appflow');
    my $CreateFlowResponse = $appflow->CreateFlow(
      DestinationFlowConfigList => [
        {
          ConnectorType => 'Salesforce'
          , # values: Salesforce, Singular, Slack, Redshift, S3, Marketo, Googleanalytics, Zendesk, Servicenow, Datadog, Trendmicro, Snowflake, Dynatrace, Infornexus, Amplitude, Veeva, EventBridge, LookoutMetrics, Upsolver, Honeycode, CustomerProfiles, SAPOData, CustomConnector, Pardot
          DestinationConnectorProperties => {
            CustomConnector => {
              EntityName       => 'MyEntityName',    # max: 1024
              CustomProperties => {
                'MyCustomPropertyKey' => 'MyCustomPropertyValue'
                ,    # key: min: 1, max: 128, value: max: 2048
              },    # max: 50; OPTIONAL
              ErrorHandlingConfig => {
                BucketName   => 'MyBucketName',      # min: 3, max: 63; OPTIONAL
                BucketPrefix => 'MyBucketPrefix',    # max: 512; OPTIONAL
                FailOnFirstDestinationError => 1,    # OPTIONAL
              },    # OPTIONAL
              IdFieldNames => [
                'MyName', ...    # max: 128
              ],    # OPTIONAL
              WriteOperationType =>
                'INSERT',    # values: INSERT, UPSERT, UPDATE, DELETE; OPTIONAL
            },    # OPTIONAL
            CustomerProfiles => {
              DomainName     => 'MyDomainName',        # max: 64
              ObjectTypeName => 'MyObjectTypeName',    # max: 255; OPTIONAL
            },    # OPTIONAL
            EventBridge => {
              Object              => 'MyObject',    # max: 512
              ErrorHandlingConfig => {
                BucketName   => 'MyBucketName',      # min: 3, max: 63; OPTIONAL
                BucketPrefix => 'MyBucketPrefix',    # max: 512; OPTIONAL
                FailOnFirstDestinationError => 1,    # OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
            Honeycode => {
              Object              => 'MyObject',    # max: 512
              ErrorHandlingConfig => {
                BucketName   => 'MyBucketName',      # min: 3, max: 63; OPTIONAL
                BucketPrefix => 'MyBucketPrefix',    # max: 512; OPTIONAL
                FailOnFirstDestinationError => 1,    # OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
            LookoutMetrics => {

            },    # OPTIONAL
            Marketo => {
              Object              => 'MyObject',    # max: 512
              ErrorHandlingConfig => {
                BucketName   => 'MyBucketName',      # min: 3, max: 63; OPTIONAL
                BucketPrefix => 'MyBucketPrefix',    # max: 512; OPTIONAL
                FailOnFirstDestinationError => 1,    # OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
            Redshift => {
              IntermediateBucketName =>
                'MyBucketName',    # min: 3, max: 63; OPTIONAL
              Object              => 'MyObject',          # max: 512
              BucketPrefix        => 'MyBucketPrefix',    # max: 512; OPTIONAL
              ErrorHandlingConfig => {
                BucketName   => 'MyBucketName',      # min: 3, max: 63; OPTIONAL
                BucketPrefix => 'MyBucketPrefix',    # max: 512; OPTIONAL
                FailOnFirstDestinationError => 1,    # OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
            S3 => {
              BucketName   => 'MyBucketName',      # min: 3, max: 63; OPTIONAL
              BucketPrefix => 'MyBucketPrefix',    # max: 512; OPTIONAL
              S3OutputFormatConfig => {
                AggregationConfig => {
                  AggregationType =>
                    'None',    # values: None, SingleFile; OPTIONAL
                  TargetFileSize => 1,    # OPTIONAL
                },    # OPTIONAL
                FileType     => 'CSV',    # values: CSV, JSON, PARQUET; OPTIONAL
                PrefixConfig => {
                  PathPrefixHierarchy => [
                    'EXECUTION_ID', ...   # values: EXECUTION_ID, SCHEMA_VERSION
                  ],    # OPTIONAL
                  PrefixFormat =>
                    'YEAR',   # values: YEAR, MONTH, DAY, HOUR, MINUTE; OPTIONAL
                  PrefixType => 'FILENAME'
                  ,    # values: FILENAME, PATH, PATH_AND_FILENAME; OPTIONAL
                },    # OPTIONAL
                PreserveSourceDataTyping => 1,    # OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
            SAPOData => {
              ObjectPath          => 'MyObject',    # max: 512
              ErrorHandlingConfig => {
                BucketName   => 'MyBucketName',      # min: 3, max: 63; OPTIONAL
                BucketPrefix => 'MyBucketPrefix',    # max: 512; OPTIONAL
                FailOnFirstDestinationError => 1,    # OPTIONAL
              },    # OPTIONAL
              IdFieldNames => [
                'MyName', ...    # max: 128
              ],    # OPTIONAL
              SuccessResponseHandlingConfig => {
                BucketName   => 'MyBucketName',      # min: 3, max: 63; OPTIONAL
                BucketPrefix => 'MyBucketPrefix',    # max: 512; OPTIONAL
              },    # OPTIONAL
              WriteOperationType =>
                'INSERT',    # values: INSERT, UPSERT, UPDATE, DELETE; OPTIONAL
            },    # OPTIONAL
            Salesforce => {
              Object          => 'MyObject',    # max: 512
              DataTransferApi =>
                'AUTOMATIC',    # values: AUTOMATIC, BULKV2, REST_SYNC; OPTIONAL
              ErrorHandlingConfig => {
                BucketName   => 'MyBucketName',      # min: 3, max: 63; OPTIONAL
                BucketPrefix => 'MyBucketPrefix',    # max: 512; OPTIONAL
                FailOnFirstDestinationError => 1,    # OPTIONAL
              },    # OPTIONAL
              IdFieldNames => [
                'MyName', ...    # max: 128
              ],    # OPTIONAL
              WriteOperationType =>
                'INSERT',    # values: INSERT, UPSERT, UPDATE, DELETE; OPTIONAL
            },    # OPTIONAL
            Snowflake => {
              IntermediateBucketName =>
                'MyBucketName',    # min: 3, max: 63; OPTIONAL
              Object              => 'MyObject',          # max: 512
              BucketPrefix        => 'MyBucketPrefix',    # max: 512; OPTIONAL
              ErrorHandlingConfig => {
                BucketName   => 'MyBucketName',      # min: 3, max: 63; OPTIONAL
                BucketPrefix => 'MyBucketPrefix',    # max: 512; OPTIONAL
                FailOnFirstDestinationError => 1,    # OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
            Upsolver => {
              BucketName           => 'MyUpsolverBucketName', # min: 16, max: 63
              S3OutputFormatConfig => {
                PrefixConfig => {
                  PathPrefixHierarchy => [
                    'EXECUTION_ID', ...   # values: EXECUTION_ID, SCHEMA_VERSION
                  ],    # OPTIONAL
                  PrefixFormat =>
                    'YEAR',   # values: YEAR, MONTH, DAY, HOUR, MINUTE; OPTIONAL
                  PrefixType => 'FILENAME'
                  ,    # values: FILENAME, PATH, PATH_AND_FILENAME; OPTIONAL
                },    # OPTIONAL
                AggregationConfig => {
                  AggregationType =>
                    'None',    # values: None, SingleFile; OPTIONAL
                  TargetFileSize => 1,    # OPTIONAL
                },    # OPTIONAL
                FileType => 'CSV',    # values: CSV, JSON, PARQUET; OPTIONAL
              },
              BucketPrefix => 'MyBucketPrefix',    # max: 512; OPTIONAL
            },    # OPTIONAL
            Zendesk => {
              Object              => 'MyObject',    # max: 512
              ErrorHandlingConfig => {
                BucketName   => 'MyBucketName',      # min: 3, max: 63; OPTIONAL
                BucketPrefix => 'MyBucketPrefix',    # max: 512; OPTIONAL
                FailOnFirstDestinationError => 1,    # OPTIONAL
              },    # OPTIONAL
              IdFieldNames => [
                'MyName', ...    # max: 128
              ],    # OPTIONAL
              WriteOperationType =>
                'INSERT',    # values: INSERT, UPSERT, UPDATE, DELETE; OPTIONAL
            },    # OPTIONAL
          },
          ApiVersion           => 'MyApiVersion',           # max: 256; OPTIONAL
          ConnectorProfileName => 'MyConnectorProfileName', # max: 256; OPTIONAL
        },
        ...
      ],
      FlowName         => 'MyFlowName',
      SourceFlowConfig => {
        ConnectorType => 'Salesforce'
        , # values: Salesforce, Singular, Slack, Redshift, S3, Marketo, Googleanalytics, Zendesk, Servicenow, Datadog, Trendmicro, Snowflake, Dynatrace, Infornexus, Amplitude, Veeva, EventBridge, LookoutMetrics, Upsolver, Honeycode, CustomerProfiles, SAPOData, CustomConnector, Pardot
        SourceConnectorProperties => {
          Amplitude => {
            Object => 'MyObject',    # max: 512

          },    # OPTIONAL
          CustomConnector => {
            EntityName       => 'MyEntityName',    # max: 1024
            CustomProperties => {
              'MyCustomPropertyKey' => 'MyCustomPropertyValue'
              ,    # key: min: 1, max: 128, value: max: 2048
            },    # max: 50; OPTIONAL
            DataTransferApi => {
              Name => 'MyDataTransferApiTypeName',    # max: 64; OPTIONAL
              Type => 'SYNC',    # values: SYNC, ASYNC, AUTOMATIC; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          Datadog => {
            Object => 'MyObject',    # max: 512

          },    # OPTIONAL
          Dynatrace => {
            Object => 'MyObject',    # max: 512

          },    # OPTIONAL
          GoogleAnalytics => {
            Object => 'MyObject',    # max: 512

          },    # OPTIONAL
          InforNexus => {
            Object => 'MyObject',    # max: 512

          },    # OPTIONAL
          Marketo => {
            Object => 'MyObject',    # max: 512

          },    # OPTIONAL
          Pardot => {
            Object => 'MyObject',    # max: 512

          },    # OPTIONAL
          S3 => {
            BucketName          => 'MyBucketName',   # min: 3, max: 63; OPTIONAL
            BucketPrefix        => 'MyBucketPrefix', # max: 512; OPTIONAL
            S3InputFormatConfig => {
              S3InputFileType => 'CSV',    # values: CSV, JSON; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          SAPOData => {
            ObjectPath       => 'MyObject',    # max: 512
            PaginationConfig => {
              MaxPageSize => 1,                # min: 1, max: 10000

            },    # OPTIONAL
            ParallelismConfig => {
              MaxParallelism => 1,    # min: 1, max: 10

            },    # OPTIONAL
          },    # OPTIONAL
          Salesforce => {
            Object          => 'MyObject',    # max: 512
            DataTransferApi =>
              'AUTOMATIC',    # values: AUTOMATIC, BULKV2, REST_SYNC; OPTIONAL
            EnableDynamicFieldUpdate => 1,    # OPTIONAL
            IncludeDeletedRecords    => 1,    # OPTIONAL
          },    # OPTIONAL
          ServiceNow => {
            Object => 'MyObject',    # max: 512

          },    # OPTIONAL
          Singular => {
            Object => 'MyObject',    # max: 512

          },    # OPTIONAL
          Slack => {
            Object => 'MyObject',    # max: 512

          },    # OPTIONAL
          Trendmicro => {
            Object => 'MyObject',    # max: 512

          },    # OPTIONAL
          Veeva => {
            Object             => 'MyObject',          # max: 512
            DocumentType       => 'MyDocumentType',    # max: 512; OPTIONAL
            IncludeAllVersions => 1,                   # OPTIONAL
            IncludeRenditions  => 1,                   # OPTIONAL
            IncludeSourceFiles => 1,                   # OPTIONAL
          },    # OPTIONAL
          Zendesk => {
            Object => 'MyObject',    # max: 512

          },    # OPTIONAL
        },
        ApiVersion            => 'MyApiVersion',            # max: 256; OPTIONAL
        ConnectorProfileName  => 'MyConnectorProfileName',  # max: 256; OPTIONAL
        IncrementalPullConfig => {
          DatetimeTypeFieldName =>
            'MyDatetimeTypeFieldName',                      # max: 256; OPTIONAL
        },    # OPTIONAL
      },
      Tasks => [
        {
          SourceFields => [
            'MyString', ...    # max: 2048
          ],
          TaskType => 'Arithmetic'
          , # values: Arithmetic, Filter, Map, Map_all, Mask, Merge, Passthrough, Truncate, Validate, Partition
          ConnectorOperator => {
            Amplitude       => 'BETWEEN',     # values: BETWEEN; OPTIONAL
            CustomConnector => 'PROJECTION'
            , # values: PROJECTION, LESS_THAN, GREATER_THAN, CONTAINS, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP; OPTIONAL
            Datadog => 'PROJECTION'
            , # values: PROJECTION, BETWEEN, EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP; OPTIONAL
            Dynatrace => 'PROJECTION'
            , # values: PROJECTION, BETWEEN, EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP; OPTIONAL
            GoogleAnalytics =>
              'PROJECTION',    # values: PROJECTION, BETWEEN; OPTIONAL
            InforNexus => 'PROJECTION'
            , # values: PROJECTION, BETWEEN, EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP; OPTIONAL
            Marketo => 'PROJECTION'
            , # values: PROJECTION, LESS_THAN, GREATER_THAN, BETWEEN, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP; OPTIONAL
            Pardot => 'PROJECTION'
            , # values: PROJECTION, EQUAL_TO, NO_OP, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC; OPTIONAL
            S3 => 'PROJECTION'
            , # values: PROJECTION, LESS_THAN, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP; OPTIONAL
            SAPOData => 'PROJECTION'
            , # values: PROJECTION, LESS_THAN, CONTAINS, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP; OPTIONAL
            Salesforce => 'PROJECTION'
            , # values: PROJECTION, LESS_THAN, CONTAINS, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP; OPTIONAL
            ServiceNow => 'PROJECTION'
            , # values: PROJECTION, CONTAINS, LESS_THAN, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP; OPTIONAL
            Singular => 'PROJECTION'
            , # values: PROJECTION, EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP; OPTIONAL
            Slack => 'PROJECTION'
            , # values: PROJECTION, LESS_THAN, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP; OPTIONAL
            Trendmicro => 'PROJECTION'
            , # values: PROJECTION, EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP; OPTIONAL
            Veeva => 'PROJECTION'
            , # values: PROJECTION, LESS_THAN, GREATER_THAN, CONTAINS, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP; OPTIONAL
            Zendesk => 'PROJECTION'
            , # values: PROJECTION, GREATER_THAN, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP; OPTIONAL
          },    # OPTIONAL
          DestinationField => 'MyDestinationField',    # max: 256; OPTIONAL
          TaskProperties   => {
            'VALUE' => 'MyProperty'
            , # key: values: VALUE, VALUES, DATA_TYPE, UPPER_BOUND, LOWER_BOUND, SOURCE_DATA_TYPE, DESTINATION_DATA_TYPE, VALIDATION_ACTION, MASK_VALUE, MASK_LENGTH, TRUNCATE_LENGTH, MATH_OPERATION_FIELDS_ORDER, CONCAT_FORMAT, SUBFIELD_CATEGORY_MAP, EXCLUDE_SOURCE_FIELDS_LIST, INCLUDE_NEW_FIELDS, ORDERED_PARTITION_KEYS_LIST, value: max: 2048
          },    # OPTIONAL
        },
        ...
      ],
      TriggerConfig => {
        TriggerType       => 'Scheduled',   # values: Scheduled, Event, OnDemand
        TriggerProperties => {
          Scheduled => {
            ScheduleExpression => 'MyScheduleExpression',    # max: 256
            DataPullMode       =>
              'Incremental',    # values: Incremental, Complete; OPTIONAL
            FirstExecutionFrom             => '1970-01-01T01:00:00',  # OPTIONAL
            FlowErrorDeactivationThreshold => 1,    # min: 1, max: 100; OPTIONAL
            ScheduleEndTime   => '1970-01-01T01:00:00',   # OPTIONAL
            ScheduleOffset    => 1,                       # max: 36000; OPTIONAL
            ScheduleStartTime => '1970-01-01T01:00:00',   # OPTIONAL
            Timezone          => 'MyTimezone',            # max: 256; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },
      ClientToken           => 'MyClientToken',        # OPTIONAL
      Description           => 'MyFlowDescription',    # OPTIONAL
      KmsArn                => 'MyKMSArn',             # OPTIONAL
      MetadataCatalogConfig => {
        GlueDataCatalog => {
          DatabaseName => 'MyGlueDataCatalogDatabaseName',    # max: 255
          RoleArn      => 'MyGlueDataCatalogIAMRole',         # max: 512
          TablePrefix  => 'MyGlueDataCatalogTablePrefix',     # max: 128

        },    # OPTIONAL
      },    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $FlowArn    = $CreateFlowResponse->FlowArn;
    my $FlowStatus = $CreateFlowResponse->FlowStatus;

    # Returns a L<Paws::Appflow::CreateFlowResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appflow/CreateFlow>

=head1 ATTRIBUTES


=head2 ClientToken => Str

The C<clientToken> parameter is an idempotency token. It ensures that
your C<CreateFlow> request completes only once. You choose the value to
pass. For example, if you don't receive a response from your request,
you can safely retry the request with the same C<clientToken> parameter
value.

If you omit a C<clientToken> value, the Amazon Web Services SDK that
you are using inserts a value for you. This way, the SDK can safely
retry requests multiple times after a network error. You must provide
your own value for other use cases.

If you specify input parameters that differ from your first request, an
error occurs. If you use a different value for C<clientToken>, Amazon
AppFlow considers it a new call to C<CreateFlow>. The token is active
for 8 hours.



=head2 Description => Str

A description of the flow you want to create.



=head2 B<REQUIRED> DestinationFlowConfigList => ArrayRef[L<Paws::Appflow::DestinationFlowConfig>]

The configuration that controls how Amazon AppFlow places data in the
destination connector.



=head2 B<REQUIRED> FlowName => Str

The specified name of the flow. Spaces are not allowed. Use underscores
(_) or hyphens (-) only.



=head2 KmsArn => Str

The ARN (Amazon Resource Name) of the Key Management Service (KMS) key
you provide for encryption. This is required if you do not want to use
the Amazon AppFlow-managed KMS key. If you don't provide anything here,
Amazon AppFlow uses the Amazon AppFlow-managed KMS key.



=head2 MetadataCatalogConfig => L<Paws::Appflow::MetadataCatalogConfig>

Specifies the configuration that Amazon AppFlow uses when it catalogs
the data that's transferred by the associated flow. When Amazon AppFlow
catalogs the data from a flow, it stores metadata in a data catalog.



=head2 B<REQUIRED> SourceFlowConfig => L<Paws::Appflow::SourceFlowConfig>

The configuration that controls how Amazon AppFlow retrieves data from
the source connector.



=head2 Tags => L<Paws::Appflow::TagMap>

The tags used to organize, track, or control access for your flow.



=head2 B<REQUIRED> Tasks => ArrayRef[L<Paws::Appflow::Task>]

A list of tasks that Amazon AppFlow performs while transferring the
data in the flow run.



=head2 B<REQUIRED> TriggerConfig => L<Paws::Appflow::TriggerConfig>

The trigger settings that determine how and when the flow runs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFlow in L<Paws::Appflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

