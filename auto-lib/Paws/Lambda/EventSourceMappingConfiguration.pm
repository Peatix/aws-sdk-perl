
package Paws::Lambda::EventSourceMappingConfiguration;
  use Moose;
  has AmazonManagedKafkaEventSourceConfig => (is => 'ro', isa => 'Paws::Lambda::AmazonManagedKafkaEventSourceConfig');
  has BatchSize => (is => 'ro', isa => 'Int');
  has BisectBatchOnFunctionError => (is => 'ro', isa => 'Bool');
  has DestinationConfig => (is => 'ro', isa => 'Paws::Lambda::DestinationConfig');
  has DocumentDBEventSourceConfig => (is => 'ro', isa => 'Paws::Lambda::DocumentDBEventSourceConfig');
  has EventSourceArn => (is => 'ro', isa => 'Str');
  has EventSourceMappingArn => (is => 'ro', isa => 'Str');
  has FilterCriteria => (is => 'ro', isa => 'Paws::Lambda::FilterCriteria');
  has FilterCriteriaError => (is => 'ro', isa => 'Paws::Lambda::FilterCriteriaError');
  has FunctionArn => (is => 'ro', isa => 'Str');
  has FunctionResponseTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has KMSKeyArn => (is => 'ro', isa => 'Str');
  has LastModified => (is => 'ro', isa => 'Str');
  has LastProcessingResult => (is => 'ro', isa => 'Str');
  has MaximumBatchingWindowInSeconds => (is => 'ro', isa => 'Int');
  has MaximumRecordAgeInSeconds => (is => 'ro', isa => 'Int');
  has MaximumRetryAttempts => (is => 'ro', isa => 'Int');
  has MetricsConfig => (is => 'ro', isa => 'Paws::Lambda::EventSourceMappingMetricsConfig');
  has ParallelizationFactor => (is => 'ro', isa => 'Int');
  has ProvisionedPollerConfig => (is => 'ro', isa => 'Paws::Lambda::ProvisionedPollerConfig');
  has Queues => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ScalingConfig => (is => 'ro', isa => 'Paws::Lambda::ScalingConfig');
  has SelfManagedEventSource => (is => 'ro', isa => 'Paws::Lambda::SelfManagedEventSource');
  has SelfManagedKafkaEventSourceConfig => (is => 'ro', isa => 'Paws::Lambda::SelfManagedKafkaEventSourceConfig');
  has SourceAccessConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::Lambda::SourceAccessConfiguration]');
  has StartingPosition => (is => 'ro', isa => 'Str');
  has StartingPositionTimestamp => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has StateTransitionReason => (is => 'ro', isa => 'Str');
  has Topics => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has TumblingWindowInSeconds => (is => 'ro', isa => 'Int');
  has UUID => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::EventSourceMappingConfiguration

=head1 ATTRIBUTES


=head2 AmazonManagedKafkaEventSourceConfig => L<Paws::Lambda::AmazonManagedKafkaEventSourceConfig>

Specific configuration settings for an Amazon Managed Streaming for
Apache Kafka (Amazon MSK) event source.


=head2 BatchSize => Int

The maximum number of records in each batch that Lambda pulls from your
stream or queue and sends to your function. Lambda passes all of the
records in the batch to the function in a single call, up to the
payload limit for synchronous invocation (6 MB).

Default value: Varies by service. For Amazon SQS, the default is 10.
For all other services, the default is 100.

Related setting: When you set C<BatchSize> to a value greater than 10,
you must set C<MaximumBatchingWindowInSeconds> to at least 1.


=head2 BisectBatchOnFunctionError => Bool

(Kinesis and DynamoDB Streams only) If the function returns an error,
split the batch in two and retry. The default value is false.


=head2 DestinationConfig => L<Paws::Lambda::DestinationConfig>

(Kinesis, DynamoDB Streams, Amazon MSK, and self-managed Apache Kafka
event sources only) A configuration object that specifies the
destination of an event after Lambda processes it.


=head2 DocumentDBEventSourceConfig => L<Paws::Lambda::DocumentDBEventSourceConfig>

Specific configuration settings for a DocumentDB event source.


=head2 EventSourceArn => Str

The Amazon Resource Name (ARN) of the event source.


=head2 EventSourceMappingArn => Str

The Amazon Resource Name (ARN) of the event source mapping.


=head2 FilterCriteria => L<Paws::Lambda::FilterCriteria>

An object that defines the filter criteria that determine whether
Lambda should process an event. For more information, see Lambda event
filtering
(https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventfiltering.html).

If filter criteria is encrypted, this field shows up as C<null> in the
response of ListEventSourceMapping API calls. You can view this field
in plaintext in the response of GetEventSourceMapping and
DeleteEventSourceMapping calls if you have C<kms:Decrypt> permissions
for the correct KMS key.


=head2 FilterCriteriaError => L<Paws::Lambda::FilterCriteriaError>

An object that contains details about an error related to filter
criteria encryption.


=head2 FunctionArn => Str

The ARN of the Lambda function.


=head2 FunctionResponseTypes => ArrayRef[Str|Undef]

(Kinesis, DynamoDB Streams, and Amazon SQS) A list of current response
type enums applied to the event source mapping.


=head2 KMSKeyArn => Str

The ARN of the Key Management Service (KMS) customer managed key that
Lambda uses to encrypt your function's filter criteria
(https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventfiltering.html#filtering-basics).


=head2 LastModified => Str

The date that the event source mapping was last updated or that its
state changed.


=head2 LastProcessingResult => Str

The result of the last Lambda invocation of your function.


=head2 MaximumBatchingWindowInSeconds => Int

The maximum amount of time, in seconds, that Lambda spends gathering
records before invoking the function. You can configure
C<MaximumBatchingWindowInSeconds> to any value from 0 seconds to 300
seconds in increments of seconds.

For streams and Amazon SQS event sources, the default batching window
is 0 seconds. For Amazon MSK, Self-managed Apache Kafka, Amazon MQ, and
DocumentDB event sources, the default batching window is 500 ms. Note
that because you can only change C<MaximumBatchingWindowInSeconds> in
increments of seconds, you cannot revert back to the 500 ms default
batching window after you have changed it. To restore the default
batching window, you must create a new event source mapping.

Related setting: For streams and Amazon SQS event sources, when you set
C<BatchSize> to a value greater than 10, you must set
C<MaximumBatchingWindowInSeconds> to at least 1.


=head2 MaximumRecordAgeInSeconds => Int

(Kinesis and DynamoDB Streams only) Discard records older than the
specified age. The default value is -1, which sets the maximum age to
infinite. When the value is set to infinite, Lambda never discards old
records.

The minimum valid value for maximum record age is 60s. Although values
less than 60 and greater than -1 fall within the parameter's absolute
range, they are not allowed


=head2 MaximumRetryAttempts => Int

(Kinesis and DynamoDB Streams only) Discard records after the specified
number of retries. The default value is -1, which sets the maximum
number of retries to infinite. When MaximumRetryAttempts is infinite,
Lambda retries failed records until the record expires in the event
source.


=head2 MetricsConfig => L<Paws::Lambda::EventSourceMappingMetricsConfig>

The metrics configuration for your event source. For more information,
see Event source mapping metrics
(https://docs.aws.amazon.com/lambda/latest/dg/monitoring-metrics-types.html#event-source-mapping-metrics).


=head2 ParallelizationFactor => Int

(Kinesis and DynamoDB Streams only) The number of batches to process
concurrently from each shard. The default value is 1.


=head2 ProvisionedPollerConfig => L<Paws::Lambda::ProvisionedPollerConfig>

(Amazon MSK and self-managed Apache Kafka only) The provisioned mode
configuration for the event source. For more information, see
provisioned mode
(https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventsourcemapping.html#invocation-eventsourcemapping-provisioned-mode).


=head2 Queues => ArrayRef[Str|Undef]

(Amazon MQ) The name of the Amazon MQ broker destination queue to
consume.


=head2 ScalingConfig => L<Paws::Lambda::ScalingConfig>

(Amazon SQS only) The scaling configuration for the event source. For
more information, see Configuring maximum concurrency for Amazon SQS
event sources
(https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#events-sqs-max-concurrency).


=head2 SelfManagedEventSource => L<Paws::Lambda::SelfManagedEventSource>

The self-managed Apache Kafka cluster for your event source.


=head2 SelfManagedKafkaEventSourceConfig => L<Paws::Lambda::SelfManagedKafkaEventSourceConfig>

Specific configuration settings for a self-managed Apache Kafka event
source.


=head2 SourceAccessConfigurations => ArrayRef[L<Paws::Lambda::SourceAccessConfiguration>]

An array of the authentication protocol, VPC components, or virtual
host to secure and define your event source.


=head2 StartingPosition => Str

The position in a stream from which to start reading. Required for
Amazon Kinesis and Amazon DynamoDB Stream event sources.
C<AT_TIMESTAMP> is supported only for Amazon Kinesis streams, Amazon
DocumentDB, Amazon MSK, and self-managed Apache Kafka.

Valid values are: C<"TRIM_HORIZON">, C<"LATEST">, C<"AT_TIMESTAMP">
=head2 StartingPositionTimestamp => Str

With C<StartingPosition> set to C<AT_TIMESTAMP>, the time from which to
start reading. C<StartingPositionTimestamp> cannot be in the future.


=head2 State => Str

The state of the event source mapping. It can be one of the following:
C<Creating>, C<Enabling>, C<Enabled>, C<Disabling>, C<Disabled>,
C<Updating>, or C<Deleting>.


=head2 StateTransitionReason => Str

Indicates whether a user or Lambda made the last change to the event
source mapping.


=head2 Topics => ArrayRef[Str|Undef]

The name of the Kafka topic.


=head2 TumblingWindowInSeconds => Int

(Kinesis and DynamoDB Streams only) The duration in seconds of a
processing window for DynamoDB and Kinesis Streams event sources. A
value of 0 seconds indicates no tumbling window.


=head2 UUID => Str

The identifier of the event source mapping.


=head2 _request_id => Str


=cut

