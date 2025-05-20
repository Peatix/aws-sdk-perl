
package Paws::Pipes::CreatePipe;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has DesiredState => (is => 'ro', isa => 'Str');
  has Enrichment => (is => 'ro', isa => 'Str');
  has EnrichmentParameters => (is => 'ro', isa => 'Paws::Pipes::PipeEnrichmentParameters');
  has KmsKeyIdentifier => (is => 'ro', isa => 'Str');
  has LogConfiguration => (is => 'ro', isa => 'Paws::Pipes::PipeLogConfigurationParameters');
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Name', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has Source => (is => 'ro', isa => 'Str', required => 1);
  has SourceParameters => (is => 'ro', isa => 'Paws::Pipes::PipeSourceParameters');
  has Tags => (is => 'ro', isa => 'Paws::Pipes::TagMap');
  has Target => (is => 'ro', isa => 'Str', required => 1);
  has TargetParameters => (is => 'ro', isa => 'Paws::Pipes::PipeTargetParameters');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePipe');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/pipes/{Name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Pipes::CreatePipeResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pipes::CreatePipe - Arguments for method CreatePipe on L<Paws::Pipes>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePipe on the
L<Amazon EventBridge Pipes|Paws::Pipes> service. Use the attributes of this class
as arguments to method CreatePipe.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePipe.

=head1 SYNOPSIS

    my $pipes = Paws->service('Pipes');
    my $CreatePipeResponse = $pipes->CreatePipe(
      Name                 => 'MyPipeName',
      RoleArn              => 'MyRoleArn',
      Source               => 'MyArnOrUrl',
      Target               => 'MyArn',
      Description          => 'MyPipeDescription',    # OPTIONAL
      DesiredState         => 'RUNNING',              # OPTIONAL
      Enrichment           => 'MyOptionalArn',        # OPTIONAL
      EnrichmentParameters => {
        HttpParameters => {
          HeaderParameters => {
            'MyHeaderKey' => 'MyHeaderValue',   # key: max: 512, value: max: 512
          },    # OPTIONAL
          PathParameterValues   => [ 'MyPathParameter', ... ],    # OPTIONAL
          QueryStringParameters => {
            'MyQueryStringKey' =>
              'MyQueryStringValue',    # key: max: 512, value: max: 512
          },    # OPTIONAL
        },    # OPTIONAL
        InputTemplate => 'MyInputTemplate',    # max: 8192; OPTIONAL
      },    # OPTIONAL
      KmsKeyIdentifier => 'MyKmsKeyIdentifier',    # OPTIONAL
      LogConfiguration => {
        Level                        => 'OFF', # values: OFF, ERROR, INFO, TRACE
        CloudwatchLogsLogDestination => {
          LogGroupArn => 'MyCloudwatchLogGroupArn',    # min: 1, max: 1600

        },    # OPTIONAL
        FirehoseLogDestination => {
          DeliveryStreamArn => 'MyFirehoseArn',    # min: 1, max: 1600

        },    # OPTIONAL
        IncludeExecutionData => [
          'ALL', ...    # values: ALL
        ],    # OPTIONAL
        S3LogDestination => {
          BucketName =>
            'MyS3LogDestinationParametersBucketNameString',    # min: 3, max: 63
          BucketOwner  => 'MyS3LogDestinationParametersBucketOwnerString',
          OutputFormat => 'json',    # values: json, plain, w3c; OPTIONAL
          Prefix       =>
            'MyS3LogDestinationParametersPrefixString',    # max: 256; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      SourceParameters => {
        ActiveMQBrokerParameters => {
          Credentials => {
            BasicAuth => 'MySecretManagerArn',    # min: 1, max: 1600; OPTIONAL
          },
          QueueName => 'MyMQBrokerQueueName',     # min: 1, max: 1000
          BatchSize => 1,                         # min: 1, max: 10000; OPTIONAL
          MaximumBatchingWindowInSeconds => 1,    # max: 300; OPTIONAL
        },    # OPTIONAL
        DynamoDBStreamParameters => {
          StartingPosition => 'TRIM_HORIZON',    # values: TRIM_HORIZON, LATEST
          BatchSize        => 1,                 # min: 1, max: 10000; OPTIONAL
          DeadLetterConfig => {
            Arn => 'MyArn',                      # min: 1, max: 1600
          },    # OPTIONAL
          MaximumBatchingWindowInSeconds => 1,  # max: 300; OPTIONAL
          MaximumRecordAgeInSeconds      => 1,  # min: -1, max: 604800; OPTIONAL
          MaximumRetryAttempts           => 1,  # min: -1, max: 10000; OPTIONAL
          OnPartialBatchItemFailure      =>
            'AUTOMATIC_BISECT',    # values: AUTOMATIC_BISECT; OPTIONAL
          ParallelizationFactor => 1,    # min: 1, max: 10; OPTIONAL
        },    # OPTIONAL
        FilterCriteria => {
          Filters => [
            {
              Pattern => 'MyEventPattern',    # max: 4096; OPTIONAL
            },
            ...
          ],    # max: 5; OPTIONAL
        },    # OPTIONAL
        KinesisStreamParameters => {
          StartingPosition =>
            'TRIM_HORIZON',    # values: TRIM_HORIZON, LATEST, AT_TIMESTAMP
          BatchSize        => 1,    # min: 1, max: 10000; OPTIONAL
          DeadLetterConfig => {
            Arn => 'MyArn',         # min: 1, max: 1600
          },    # OPTIONAL
          MaximumBatchingWindowInSeconds => 1,  # max: 300; OPTIONAL
          MaximumRecordAgeInSeconds      => 1,  # min: -1, max: 604800; OPTIONAL
          MaximumRetryAttempts           => 1,  # min: -1, max: 10000; OPTIONAL
          OnPartialBatchItemFailure      =>
            'AUTOMATIC_BISECT',    # values: AUTOMATIC_BISECT; OPTIONAL
          ParallelizationFactor     => 1,    # min: 1, max: 10; OPTIONAL
          StartingPositionTimestamp => '1970-01-01T01:00:00',    # OPTIONAL
        },    # OPTIONAL
        ManagedStreamingKafkaParameters => {
          TopicName       => 'MyKafkaTopicName',  # min: 1, max: 249
          BatchSize       => 1,                   # min: 1, max: 10000; OPTIONAL
          ConsumerGroupID => 'MyURI',             # min: 1, max: 200; OPTIONAL
          Credentials     => {
            ClientCertificateTlsAuth =>
              'MySecretManagerArn',               # min: 1, max: 1600; OPTIONAL
            SaslScram512Auth =>
              'MySecretManagerArn',               # min: 1, max: 1600; OPTIONAL
          },    # OPTIONAL
          MaximumBatchingWindowInSeconds => 1,    # max: 300; OPTIONAL
          StartingPosition               =>
            'TRIM_HORIZON',    # values: TRIM_HORIZON, LATEST; OPTIONAL
        },    # OPTIONAL
        RabbitMQBrokerParameters => {
          Credentials => {
            BasicAuth => 'MySecretManagerArn',    # min: 1, max: 1600; OPTIONAL
          },
          QueueName => 'MyMQBrokerQueueName',     # min: 1, max: 1000
          BatchSize => 1,                         # min: 1, max: 10000; OPTIONAL
          MaximumBatchingWindowInSeconds => 1,    # max: 300; OPTIONAL
          VirtualHost => 'MyURI',                 # min: 1, max: 200; OPTIONAL
        },    # OPTIONAL
        SelfManagedKafkaParameters => {
          TopicName                  => 'MyKafkaTopicName',   # min: 1, max: 249
          AdditionalBootstrapServers => [
            'MyEndpointString', ...                           # min: 1, max: 300
          ],    # max: 2; OPTIONAL
          BatchSize       => 1,          # min: 1, max: 10000; OPTIONAL
          ConsumerGroupID => 'MyURI',    # min: 1, max: 200; OPTIONAL
          Credentials     => {
            BasicAuth => 'MySecretManagerArn',    # min: 1, max: 1600; OPTIONAL
            ClientCertificateTlsAuth =>
              'MySecretManagerArn',               # min: 1, max: 1600; OPTIONAL
            SaslScram256Auth =>
              'MySecretManagerArn',               # min: 1, max: 1600; OPTIONAL
            SaslScram512Auth =>
              'MySecretManagerArn',               # min: 1, max: 1600; OPTIONAL
          },    # OPTIONAL
          MaximumBatchingWindowInSeconds => 1,    # max: 300; OPTIONAL
          ServerRootCaCertificate        =>
            'MySecretManagerArn',                 # min: 1, max: 1600; OPTIONAL
          StartingPosition =>
            'TRIM_HORIZON',    # values: TRIM_HORIZON, LATEST; OPTIONAL
          Vpc => {
            SecurityGroup => [
              'MySecurityGroupId', ...    # min: 1, max: 1024
            ],    # min: 1, max: 5; OPTIONAL
            Subnets => [
              'MySubnetId', ...    # min: 1, max: 1024
            ],    # min: 1, max: 16; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        SqsQueueParameters => {
          BatchSize                      => 1,    # min: 1, max: 10000; OPTIONAL
          MaximumBatchingWindowInSeconds => 1,    # max: 300; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      TargetParameters => {
        BatchJobParameters => {
          JobDefinition   => 'MyString',
          JobName         => 'MyString',
          ArrayProperties => {
            Size => 1,    # min: 2, max: 10000; OPTIONAL
          },    # OPTIONAL
          ContainerOverrides => {
            Command     => [ 'MyString', ... ],    # OPTIONAL
            Environment => [
              {
                Name  => 'MyString',
                Value => 'MyString',
              },
              ...
            ],                                     # OPTIONAL
            InstanceType         => 'MyString',
            ResourceRequirements => [
              {
                Type  => 'GPU',                    # values: GPU, MEMORY, VCPU
                Value => 'MyString',

              },
              ...
            ],    # OPTIONAL
          },    # OPTIONAL
          DependsOn => [
            {
              JobId => 'MyString',
              Type  => 'N_TO_N',     # values: N_TO_N, SEQUENTIAL; OPTIONAL
            },
            ...
          ],    # max: 20; OPTIONAL
          Parameters    => { 'MyString' => 'MyString', },    # OPTIONAL
          RetryStrategy => {
            Attempts => 1,    # min: 1, max: 10; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        CloudWatchLogsParameters => {
          LogStreamName => 'MyLogStreamName',    # min: 1, max: 256; OPTIONAL
          Timestamp     => 'MyJsonPath',         # min: 1, max: 256; OPTIONAL
        },    # OPTIONAL
        EcsTaskParameters => {
          TaskDefinitionArn        => 'MyArnOrJsonPath',    # min: 1, max: 1600
          CapacityProviderStrategy => [
            {
              CapacityProvider => 'MyCapacityProvider',  # min: 1, max: 255
              Base             => 1,                     # max: 100000; OPTIONAL
              Weight           => 1,                     # max: 1000; OPTIONAL
            },
            ...
          ],    # max: 6; OPTIONAL
          EnableECSManagedTags => 1,            # OPTIONAL
          EnableExecuteCommand => 1,            # OPTIONAL
          Group                => 'MyString',
          LaunchType => 'EC2',    # values: EC2, FARGATE, EXTERNAL; OPTIONAL
          NetworkConfiguration => {
            AwsvpcConfiguration => {
              Subnets => [
                'MySubnet', ...    # min: 1, max: 1024
              ],    # max: 16
              AssignPublicIp => 'ENABLED', # values: ENABLED, DISABLED; OPTIONAL
              SecurityGroups => [
                'MySecurityGroup', ...     # min: 1, max: 1024
              ],    # max: 5; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          Overrides => {
            ContainerOverrides => [
              {
                Command     => [ 'MyString', ... ],    # OPTIONAL
                Cpu         => 1,                      # OPTIONAL
                Environment => [
                  {
                    Name  => 'MyString',
                    Value => 'MyString',
                  },
                  ...
                ],                                     # OPTIONAL
                EnvironmentFiles => [
                  {
                    Type  => 's3',                     # values: s3
                    Value => 'MyString',

                  },
                  ...
                ],    # OPTIONAL
                Memory               => 1,            # OPTIONAL
                MemoryReservation    => 1,            # OPTIONAL
                Name                 => 'MyString',
                ResourceRequirements => [
                  {
                    Type  => 'GPU',        # values: GPU, InferenceAccelerator
                    Value => 'MyString',

                  },
                  ...
                ],    # OPTIONAL
              },
              ...
            ],    # OPTIONAL
            Cpu              => 'MyString',
            EphemeralStorage => {
              SizeInGiB => 1,    # min: 21, max: 200

            },    # OPTIONAL
            ExecutionRoleArn => 'MyArnOrJsonPath',    # min: 1, max: 1600
            InferenceAcceleratorOverrides => [
              {
                DeviceName => 'MyString',
                DeviceType => 'MyString',
              },
              ...
            ],                                        # OPTIONAL
            Memory      => 'MyString',
            TaskRoleArn => 'MyArnOrJsonPath',         # min: 1, max: 1600
          },    # OPTIONAL
          PlacementConstraints => [
            {
              Expression =>
                'MyPlacementConstraintExpression',    # max: 2000; OPTIONAL
              Type => 'distinctInstance'
              ,    # values: distinctInstance, memberOf; OPTIONAL
            },
            ...
          ],    # max: 10; OPTIONAL
          PlacementStrategy => [
            {
              Field => 'MyPlacementStrategyField',    # max: 255; OPTIONAL
              Type  => 'random',    # values: random, spread, binpack; OPTIONAL
            },
            ...
          ],    # max: 5; OPTIONAL
          PlatformVersion => 'MyString',
          PropagateTags   =>
            'TASK_DEFINITION',    # values: TASK_DEFINITION; OPTIONAL
          ReferenceId => 'MyReferenceId',    # max: 1024; OPTIONAL
          Tags        => [
            {
              Key   => 'MyTagKey',      # min: 1, max: 128
              Value => 'MyTagValue',    # max: 256

            },
            ...
          ],    # OPTIONAL
          TaskCount => 1,    # min: 1; OPTIONAL
        },    # OPTIONAL
        EventBridgeEventBusParameters => {
          DetailType => 'MyEventBridgeDetailType',  # min: 1, max: 128; OPTIONAL
          EndpointId => 'MyEventBridgeEndpointId',  # min: 1, max: 50; OPTIONAL
          Resources  => [
            'MyArnOrJsonPath', ...                  # min: 1, max: 1600
          ],    # max: 10; OPTIONAL
          Source => 'MyEventBridgeEventSource',    # min: 1, max: 256; OPTIONAL
          Time   => 'MyJsonPath',                  # min: 1, max: 256; OPTIONAL
        },    # OPTIONAL
        HttpParameters => {
          HeaderParameters => {
            'MyHeaderKey' => 'MyHeaderValue',   # key: max: 512, value: max: 512
          },    # OPTIONAL
          PathParameterValues   => [ 'MyPathParameter', ... ],    # OPTIONAL
          QueryStringParameters => {
            'MyQueryStringKey' =>
              'MyQueryStringValue',    # key: max: 512, value: max: 512
          },    # OPTIONAL
        },    # OPTIONAL
        InputTemplate           => 'MyInputTemplate',    # max: 8192; OPTIONAL
        KinesisStreamParameters => {
          PartitionKey => 'MyKinesisPartitionKey',       # max: 256

        },    # OPTIONAL
        LambdaFunctionParameters => {
          InvocationType => 'REQUEST_RESPONSE'
          ,    # values: REQUEST_RESPONSE, FIRE_AND_FORGET; OPTIONAL
        },    # OPTIONAL
        RedshiftDataParameters => {
          Database => 'MyDatabase',    # min: 1, max: 64
          Sqls     => [
            'MySql', ...               # min: 1, max: 100000
          ],    # min: 1, max: 40
          DbUser           => 'MyDbUser',      # min: 1, max: 128; OPTIONAL
          SecretManagerArn =>
            'MySecretManagerArnOrJsonPath',    # min: 1, max: 1600; OPTIONAL
          StatementName => 'MyStatementName',  # min: 1, max: 500; OPTIONAL
          WithEvent     => 1,                  # OPTIONAL
        },    # OPTIONAL
        SageMakerPipelineParameters => {
          PipelineParameterList => [
            {
              Name  => 'MySageMakerPipelineParameterName',    # min: 1, max: 256
              Value => 'MySageMakerPipelineParameterValue',   # max: 1024

            },
            ...
          ],    # max: 200; OPTIONAL
        },    # OPTIONAL
        SqsQueueParameters => {
          MessageDeduplicationId =>
            'MyMessageDeduplicationId',    # max: 100; OPTIONAL
          MessageGroupId => 'MyMessageGroupId',    # max: 100; OPTIONAL
        },    # OPTIONAL
        StepFunctionStateMachineParameters => {
          InvocationType => 'REQUEST_RESPONSE'
          ,    # values: REQUEST_RESPONSE, FIRE_AND_FORGET; OPTIONAL
        },    # OPTIONAL
        TimestreamParameters => {
          DimensionMappings => [
            {
              DimensionName      => 'MyDimensionName',     # min: 1, max: 256
              DimensionValue     => 'MyDimensionValue',    # min: 1, max: 2048
              DimensionValueType => 'VARCHAR',             # values: VARCHAR

            },
            ...
          ],    # min: 1, max: 128
          TimeValue     => 'MyTimeValue',       # min: 1, max: 256
          VersionValue  => 'MyVersionValue',    # min: 1, max: 256
          EpochTimeUnit => 'MILLISECONDS'
          , # values: MILLISECONDS, SECONDS, MICROSECONDS, NANOSECONDS; OPTIONAL
          MultiMeasureMappings => [
            {
              MultiMeasureAttributeMappings => [
                {
                  MeasureValue     => 'MyMeasureValue',    # min: 1, max: 2048
                  MeasureValueType => 'DOUBLE'
                  ,    # values: DOUBLE, BIGINT, VARCHAR, BOOLEAN, TIMESTAMP
                  MultiMeasureAttributeName =>
                    'MyMultiMeasureAttributeName',    # min: 1, max: 256

                },
                ...
              ],    # min: 1, max: 256
              MultiMeasureName => 'MyMultiMeasureName',    # min: 1, max: 256

            },
            ...
          ],    # max: 1024; OPTIONAL
          SingleMeasureMappings => [
            {
              MeasureName      => 'MyMeasureName',     # min: 1, max: 1024
              MeasureValue     => 'MyMeasureValue',    # min: 1, max: 2048
              MeasureValueType =>
                'DOUBLE',  # values: DOUBLE, BIGINT, VARCHAR, BOOLEAN, TIMESTAMP

            },
            ...
          ],    # max: 8192; OPTIONAL
          TimeFieldType => 'EPOCH',  # values: EPOCH, TIMESTAMP_FORMAT; OPTIONAL
          TimestampFormat => 'MyTimestampFormat',   # min: 1, max: 256; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $Arn              = $CreatePipeResponse->Arn;
    my $CreationTime     = $CreatePipeResponse->CreationTime;
    my $CurrentState     = $CreatePipeResponse->CurrentState;
    my $DesiredState     = $CreatePipeResponse->DesiredState;
    my $LastModifiedTime = $CreatePipeResponse->LastModifiedTime;
    my $Name             = $CreatePipeResponse->Name;

    # Returns a L<Paws::Pipes::CreatePipeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pipes/CreatePipe>

=head1 ATTRIBUTES


=head2 Description => Str

A description of the pipe.



=head2 DesiredState => Str

The state the pipe should be in.

Valid values are: C<"RUNNING">, C<"STOPPED">

=head2 Enrichment => Str

The ARN of the enrichment resource.



=head2 EnrichmentParameters => L<Paws::Pipes::PipeEnrichmentParameters>

The parameters required to set up enrichment on your pipe.



=head2 KmsKeyIdentifier => Str

The identifier of the KMS customer managed key for EventBridge to use,
if you choose to use a customer managed key to encrypt pipe data. The
identifier can be the key Amazon Resource Name (ARN), KeyId, key alias,
or key alias ARN.

If you do not specify a customer managed key identifier, EventBridge
uses an Amazon Web Services owned key to encrypt pipe data.

For more information, see Managing keys
(https://docs.aws.amazon.com/kms/latest/developerguide/getting-started.html)
in the I<Key Management Service Developer Guide>.



=head2 LogConfiguration => L<Paws::Pipes::PipeLogConfigurationParameters>

The logging configuration settings for the pipe.



=head2 B<REQUIRED> Name => Str

The name of the pipe.



=head2 B<REQUIRED> RoleArn => Str

The ARN of the role that allows the pipe to send data to the target.



=head2 B<REQUIRED> Source => Str

The ARN of the source resource.



=head2 SourceParameters => L<Paws::Pipes::PipeSourceParameters>

The parameters required to set up a source for your pipe.



=head2 Tags => L<Paws::Pipes::TagMap>

The list of key-value pairs to associate with the pipe.



=head2 B<REQUIRED> Target => Str

The ARN of the target resource.



=head2 TargetParameters => L<Paws::Pipes::PipeTargetParameters>

The parameters required to set up a target for your pipe.

For more information about pipe target parameters, including how to use
dynamic path parameters, see Target parameters
(https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes-event-target.html)
in the I<Amazon EventBridge User Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePipe in L<Paws::Pipes>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

