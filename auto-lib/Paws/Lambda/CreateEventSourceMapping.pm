
package Paws::Lambda::CreateEventSourceMapping;
  use Moose;
  has AmazonManagedKafkaEventSourceConfig => (is => 'ro', isa => 'Paws::Lambda::AmazonManagedKafkaEventSourceConfig');
  has BatchSize => (is => 'ro', isa => 'Int');
  has BisectBatchOnFunctionError => (is => 'ro', isa => 'Bool');
  has DestinationConfig => (is => 'ro', isa => 'Paws::Lambda::DestinationConfig');
  has DocumentDBEventSourceConfig => (is => 'ro', isa => 'Paws::Lambda::DocumentDBEventSourceConfig');
  has Enabled => (is => 'ro', isa => 'Bool');
  has EventSourceArn => (is => 'ro', isa => 'Str');
  has FilterCriteria => (is => 'ro', isa => 'Paws::Lambda::FilterCriteria');
  has FunctionName => (is => 'ro', isa => 'Str', required => 1);
  has FunctionResponseTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has KMSKeyArn => (is => 'ro', isa => 'Str');
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
  has Tags => (is => 'ro', isa => 'Paws::Lambda::Tags');
  has Topics => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has TumblingWindowInSeconds => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEventSourceMapping');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-03-31/event-source-mappings/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lambda::EventSourceMappingConfiguration');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::CreateEventSourceMapping - Arguments for method CreateEventSourceMapping on L<Paws::Lambda>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateEventSourceMapping on the
L<AWS Lambda|Paws::Lambda> service. Use the attributes of this class
as arguments to method CreateEventSourceMapping.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateEventSourceMapping.

=head1 SYNOPSIS

    my $lambda = Paws->service('Lambda');
    # To create a mapping between an event source and an AWS Lambda function
    # The following example creates a mapping between an SQS queue and the
    # my-function Lambda function.
    my $EventSourceMappingConfiguration = $lambda->CreateEventSourceMapping(
      'BatchSize'      => 5,
      'EventSourceArn' => 'arn:aws:sqs:us-west-2:123456789012:my-queue',
      'FunctionName'   => 'my-function'
    );

    # Results:
    my $BatchSize      = $EventSourceMappingConfiguration->BatchSize;
    my $EventSourceArn = $EventSourceMappingConfiguration->EventSourceArn;
    my $FunctionArn    = $EventSourceMappingConfiguration->FunctionArn;
    my $LastModified   = $EventSourceMappingConfiguration->LastModified;
    my $State          = $EventSourceMappingConfiguration->State;
    my $StateTransitionReason =
      $EventSourceMappingConfiguration->StateTransitionReason;
    my $UUID = $EventSourceMappingConfiguration->UUID;

    # Returns a L<Paws::Lambda::EventSourceMappingConfiguration> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lambda/CreateEventSourceMapping>

=head1 ATTRIBUTES


=head2 AmazonManagedKafkaEventSourceConfig => L<Paws::Lambda::AmazonManagedKafkaEventSourceConfig>

Specific configuration settings for an Amazon Managed Streaming for
Apache Kafka (Amazon MSK) event source.



=head2 BatchSize => Int

The maximum number of records in each batch that Lambda pulls from your
stream or queue and sends to your function. Lambda passes all of the
records in the batch to the function in a single call, up to the
payload limit for synchronous invocation (6 MB).

=over

=item *

B<Amazon Kinesis> E<ndash> Default 100. Max 10,000.

=item *

B<Amazon DynamoDB Streams> E<ndash> Default 100. Max 10,000.

=item *

B<Amazon Simple Queue Service> E<ndash> Default 10. For standard queues
the max is 10,000. For FIFO queues the max is 10.

=item *

B<Amazon Managed Streaming for Apache Kafka> E<ndash> Default 100. Max
10,000.

=item *

B<Self-managed Apache Kafka> E<ndash> Default 100. Max 10,000.

=item *

B<Amazon MQ (ActiveMQ and RabbitMQ)> E<ndash> Default 100. Max 10,000.

=item *

B<DocumentDB> E<ndash> Default 100. Max 10,000.

=back




=head2 BisectBatchOnFunctionError => Bool

(Kinesis and DynamoDB Streams only) If the function returns an error,
split the batch in two and retry.



=head2 DestinationConfig => L<Paws::Lambda::DestinationConfig>

(Kinesis, DynamoDB Streams, Amazon MSK, and self-managed Kafka only) A
configuration object that specifies the destination of an event after
Lambda processes it.



=head2 DocumentDBEventSourceConfig => L<Paws::Lambda::DocumentDBEventSourceConfig>

Specific configuration settings for a DocumentDB event source.



=head2 Enabled => Bool

When true, the event source mapping is active. When false, Lambda
pauses polling and invocation.

Default: True



=head2 EventSourceArn => Str

The Amazon Resource Name (ARN) of the event source.

=over

=item *

B<Amazon Kinesis> E<ndash> The ARN of the data stream or a stream
consumer.

=item *

B<Amazon DynamoDB Streams> E<ndash> The ARN of the stream.

=item *

B<Amazon Simple Queue Service> E<ndash> The ARN of the queue.

=item *

B<Amazon Managed Streaming for Apache Kafka> E<ndash> The ARN of the
cluster or the ARN of the VPC connection (for cross-account event
source mappings
(https://docs.aws.amazon.com/lambda/latest/dg/with-msk.html#msk-multi-vpc)).

=item *

B<Amazon MQ> E<ndash> The ARN of the broker.

=item *

B<Amazon DocumentDB> E<ndash> The ARN of the DocumentDB change stream.

=back




=head2 FilterCriteria => L<Paws::Lambda::FilterCriteria>

An object that defines the filter criteria that determine whether
Lambda should process an event. For more information, see Lambda event
filtering
(https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventfiltering.html).



=head2 B<REQUIRED> FunctionName => Str

The name or ARN of the Lambda function.

B<Name formats>

=over

=item *

B<Function name> E<ndash> C<MyFunction>.

=item *

B<Function ARN> E<ndash>
C<arn:aws:lambda:us-west-2:123456789012:function:MyFunction>.

=item *

B<Version or Alias ARN> E<ndash>
C<arn:aws:lambda:us-west-2:123456789012:function:MyFunction:PROD>.

=item *

B<Partial ARN> E<ndash> C<123456789012:function:MyFunction>.

=back

The length constraint applies only to the full ARN. If you specify only
the function name, it's limited to 64 characters in length.



=head2 FunctionResponseTypes => ArrayRef[Str|Undef]

(Kinesis, DynamoDB Streams, and Amazon SQS) A list of current response
type enums applied to the event source mapping.



=head2 KMSKeyArn => Str

The ARN of the Key Management Service (KMS) customer managed key that
Lambda uses to encrypt your function's filter criteria
(https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventfiltering.html#filtering-basics).
By default, Lambda does not encrypt your filter criteria object.
Specify this property to encrypt data using your own customer managed
key.



=head2 MaximumBatchingWindowInSeconds => Int

The maximum amount of time, in seconds, that Lambda spends gathering
records before invoking the function. You can configure
C<MaximumBatchingWindowInSeconds> to any value from 0 seconds to 300
seconds in increments of seconds.

For Kinesis, DynamoDB, and Amazon SQS event sources, the default
batching window is 0 seconds. For Amazon MSK, Self-managed Apache
Kafka, Amazon MQ, and DocumentDB event sources, the default batching
window is 500 ms. Note that because you can only change
C<MaximumBatchingWindowInSeconds> in increments of seconds, you cannot
revert back to the 500 ms default batching window after you have
changed it. To restore the default batching window, you must create a
new event source mapping.

Related setting: For Kinesis, DynamoDB, and Amazon SQS event sources,
when you set C<BatchSize> to a value greater than 10, you must set
C<MaximumBatchingWindowInSeconds> to at least 1.



=head2 MaximumRecordAgeInSeconds => Int

(Kinesis and DynamoDB Streams only) Discard records older than the
specified age. The default value is infinite (-1).



=head2 MaximumRetryAttempts => Int

(Kinesis and DynamoDB Streams only) Discard records after the specified
number of retries. The default value is infinite (-1). When set to
infinite (-1), failed records are retried until the record expires.



=head2 MetricsConfig => L<Paws::Lambda::EventSourceMappingMetricsConfig>

The metrics configuration for your event source. For more information,
see Event source mapping metrics
(https://docs.aws.amazon.com/lambda/latest/dg/monitoring-metrics-types.html#event-source-mapping-metrics).



=head2 ParallelizationFactor => Int

(Kinesis and DynamoDB Streams only) The number of batches to process
from each shard concurrently.



=head2 ProvisionedPollerConfig => L<Paws::Lambda::ProvisionedPollerConfig>

(Amazon MSK and self-managed Apache Kafka only) The provisioned mode
configuration for the event source. For more information, see
provisioned mode
(https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventsourcemapping.html#invocation-eventsourcemapping-provisioned-mode).



=head2 Queues => ArrayRef[Str|Undef]

(MQ) The name of the Amazon MQ broker destination queue to consume.



=head2 ScalingConfig => L<Paws::Lambda::ScalingConfig>

(Amazon SQS only) The scaling configuration for the event source. For
more information, see Configuring maximum concurrency for Amazon SQS
event sources
(https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#events-sqs-max-concurrency).



=head2 SelfManagedEventSource => L<Paws::Lambda::SelfManagedEventSource>

The self-managed Apache Kafka cluster to receive records from.



=head2 SelfManagedKafkaEventSourceConfig => L<Paws::Lambda::SelfManagedKafkaEventSourceConfig>

Specific configuration settings for a self-managed Apache Kafka event
source.



=head2 SourceAccessConfigurations => ArrayRef[L<Paws::Lambda::SourceAccessConfiguration>]

An array of authentication protocols or VPC components required to
secure your event source.



=head2 StartingPosition => Str

The position in a stream from which to start reading. Required for
Amazon Kinesis and Amazon DynamoDB Stream event sources.
C<AT_TIMESTAMP> is supported only for Amazon Kinesis streams, Amazon
DocumentDB, Amazon MSK, and self-managed Apache Kafka.

Valid values are: C<"TRIM_HORIZON">, C<"LATEST">, C<"AT_TIMESTAMP">

=head2 StartingPositionTimestamp => Str

With C<StartingPosition> set to C<AT_TIMESTAMP>, the time from which to
start reading. C<StartingPositionTimestamp> cannot be in the future.



=head2 Tags => L<Paws::Lambda::Tags>

A list of tags to apply to the event source mapping.



=head2 Topics => ArrayRef[Str|Undef]

The name of the Kafka topic.



=head2 TumblingWindowInSeconds => Int

(Kinesis and DynamoDB Streams only) The duration in seconds of a
processing window for DynamoDB and Kinesis Streams event sources. A
value of 0 seconds indicates no tumbling window.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateEventSourceMapping in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

