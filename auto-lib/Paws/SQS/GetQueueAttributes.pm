
package Paws::SQS::GetQueueAttributes;
  use Moose;
  has AttributeNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has QueueUrl => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetQueueAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SQS::GetQueueAttributesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SQS::GetQueueAttributes - Arguments for method GetQueueAttributes on L<Paws::SQS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetQueueAttributes on the
L<Amazon Simple Queue Service|Paws::SQS> service. Use the attributes of this class
as arguments to method GetQueueAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetQueueAttributes.

=head1 SYNOPSIS

    my $sqs = Paws->service('SQS');
    my $GetQueueAttributesResult = $sqs->GetQueueAttributes(
      QueueUrl       => 'MyString',
      AttributeNames => [
        'All',
        ... # values: All, Policy, VisibilityTimeout, MaximumMessageSize, MessageRetentionPeriod, ApproximateNumberOfMessages, ApproximateNumberOfMessagesNotVisible, CreatedTimestamp, LastModifiedTimestamp, QueueArn, ApproximateNumberOfMessagesDelayed, DelaySeconds, ReceiveMessageWaitTimeSeconds, RedrivePolicy, FifoQueue, ContentBasedDeduplication, KmsMasterKeyId, KmsDataKeyReusePeriodSeconds, DeduplicationScope, FifoThroughputLimit, RedriveAllowPolicy, SqsManagedSseEnabled
      ],    # OPTIONAL
    );

    # Results:
    my $Attributes = $GetQueueAttributesResult->Attributes;

    # Returns a L<Paws::SQS::GetQueueAttributesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sqs/GetQueueAttributes>

=head1 ATTRIBUTES


=head2 AttributeNames => ArrayRef[Str|Undef]

A list of attributes for which to retrieve information.

The C<AttributeNames> parameter is optional, but if you don't specify
values for this parameter, the request returns empty results.

In the future, new attributes might be added. If you write code that
calls this action, we recommend that you structure your code so that it
can handle new attributes gracefully.

The following attributes are supported:

The C<ApproximateNumberOfMessagesDelayed>,
C<ApproximateNumberOfMessagesNotVisible>, and
C<ApproximateNumberOfMessages> metrics may not achieve consistency
until at least 1 minute after the producers stop sending messages. This
period is required for the queue metadata to reach eventual
consistency.

=over

=item *

C<All> E<ndash> Returns all values.

=item *

C<ApproximateNumberOfMessages> E<ndash> Returns the approximate number
of messages available for retrieval from the queue.

=item *

C<ApproximateNumberOfMessagesDelayed> E<ndash> Returns the approximate
number of messages in the queue that are delayed and not available for
reading immediately. This can happen when the queue is configured as a
delay queue or when a message has been sent with a delay parameter.

=item *

C<ApproximateNumberOfMessagesNotVisible> E<ndash> Returns the
approximate number of messages that are in flight. Messages are
considered to be I<in flight> if they have been sent to a client but
have not yet been deleted or have not yet reached the end of their
visibility window.

=item *

C<CreatedTimestamp> E<ndash> Returns the time when the queue was
created in seconds (epoch time
(http://en.wikipedia.org/wiki/Unix_time)).

=item *

C<DelaySeconds> E<ndash> Returns the default delay on the queue in
seconds.

=item *

C<LastModifiedTimestamp> E<ndash> Returns the time when the queue was
last changed in seconds (epoch time
(http://en.wikipedia.org/wiki/Unix_time)).

=item *

C<MaximumMessageSize> E<ndash> Returns the limit of how many bytes a
message can contain before Amazon SQS rejects it.

=item *

C<MessageRetentionPeriod> E<ndash> Returns the length of time, in
seconds, for which Amazon SQS retains a message. When you change a
queue's attributes, the change can take up to 60 seconds for most of
the attributes to propagate throughout the Amazon SQS system. Changes
made to the C<MessageRetentionPeriod> attribute can take up to 15
minutes and will impact existing messages in the queue potentially
causing them to be expired and deleted if the C<MessageRetentionPeriod>
is reduced below the age of existing messages.

=item *

C<Policy> E<ndash> Returns the policy of the queue.

=item *

C<QueueArn> E<ndash> Returns the Amazon resource name (ARN) of the
queue.

=item *

C<ReceiveMessageWaitTimeSeconds> E<ndash> Returns the length of time,
in seconds, for which the C<ReceiveMessage> action waits for a message
to arrive.

=item *

C<VisibilityTimeout> E<ndash> Returns the visibility timeout for the
queue. For more information about the visibility timeout, see
Visibility Timeout
(https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html)
in the I<Amazon SQS Developer Guide>.

=back

The following attributes apply only to dead-letter queues:
(https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html)

=over

=item *

C<RedrivePolicy> E<ndash> The string that includes the parameters for
the dead-letter queue functionality of the source queue as a JSON
object. The parameters are as follows:

=over

=item *

C<deadLetterTargetArn> E<ndash> The Amazon Resource Name (ARN) of the
dead-letter queue to which Amazon SQS moves messages after the value of
C<maxReceiveCount> is exceeded.

=item *

C<maxReceiveCount> E<ndash> The number of times a message is delivered
to the source queue before being moved to the dead-letter queue.
Default: 10. When the C<ReceiveCount> for a message exceeds the
C<maxReceiveCount> for a queue, Amazon SQS moves the message to the
dead-letter-queue.

=back

=item *

C<RedriveAllowPolicy> E<ndash> The string that includes the parameters
for the permissions for the dead-letter queue redrive permission and
which source queues can specify dead-letter queues as a JSON object.
The parameters are as follows:

=over

=item *

C<redrivePermission> E<ndash> The permission type that defines which
source queues can specify the current queue as the dead-letter queue.
Valid values are:

=over

=item *

C<allowAll> E<ndash> (Default) Any source queues in this Amazon Web
Services account in the same Region can specify this queue as the
dead-letter queue.

=item *

C<denyAll> E<ndash> No source queues can specify this queue as the
dead-letter queue.

=item *

C<byQueue> E<ndash> Only queues specified by the C<sourceQueueArns>
parameter can specify this queue as the dead-letter queue.

=back

=item *

C<sourceQueueArns> E<ndash> The Amazon Resource Names (ARN)s of the
source queues that can specify this queue as the dead-letter queue and
redrive messages. You can specify this parameter only when the
C<redrivePermission> parameter is set to C<byQueue>. You can specify up
to 10 source queue ARNs. To allow more than 10 source queues to specify
dead-letter queues, set the C<redrivePermission> parameter to
C<allowAll>.

=back

=back

The dead-letter queue of a FIFO queue must also be a FIFO queue.
Similarly, the dead-letter queue of a standard queue must also be a
standard queue.

The following attributes apply only to server-side-encryption
(https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html):

=over

=item *

C<KmsMasterKeyId> E<ndash> Returns the ID of an Amazon Web Services
managed customer master key (CMK) for Amazon SQS or a custom CMK. For
more information, see Key Terms
(https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-sse-key-terms).

=item *

C<KmsDataKeyReusePeriodSeconds> E<ndash> Returns the length of time, in
seconds, for which Amazon SQS can reuse a data key to encrypt or
decrypt messages before calling KMS again. For more information, see
How Does the Data Key Reuse Period Work?
(https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-how-does-the-data-key-reuse-period-work).

=item *

C<SqsManagedSseEnabled> E<ndash> Returns information about whether the
queue is using SSE-SQS encryption using SQS owned encryption keys. Only
one server-side encryption option is supported per queue (for example,
SSE-KMS
(https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-configure-sse-existing-queue.html)
or SSE-SQS
(https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-configure-sqs-sse-queue.html)).

=back

The following attributes apply only to FIFO (first-in-first-out) queues
(https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html):

=over

=item *

C<FifoQueue> E<ndash> Returns information about whether the queue is
FIFO. For more information, see FIFO queue logic
(https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues-understanding-logic.html)
in the I<Amazon SQS Developer Guide>.

To determine whether a queue is FIFO
(https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html),
you can check whether C<QueueName> ends with the C<.fifo> suffix.

=item *

C<ContentBasedDeduplication> E<ndash> Returns whether content-based
deduplication is enabled for the queue. For more information, see
Exactly-once processing
(https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues-exactly-once-processing.html)
in the I<Amazon SQS Developer Guide>.

=back

The following attributes apply only to high throughput for FIFO queues
(https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/high-throughput-fifo.html):

=over

=item *

C<DeduplicationScope> E<ndash> Specifies whether message deduplication
occurs at the message group or queue level. Valid values are
C<messageGroup> and C<queue>.

=item *

C<FifoThroughputLimit> E<ndash> Specifies whether the FIFO queue
throughput quota applies to the entire queue or per message group.
Valid values are C<perQueue> and C<perMessageGroupId>. The
C<perMessageGroupId> value is allowed only when the value for
C<DeduplicationScope> is C<messageGroup>.

=back

To enable high throughput for FIFO queues, do the following:

=over

=item *

Set C<DeduplicationScope> to C<messageGroup>.

=item *

Set C<FifoThroughputLimit> to C<perMessageGroupId>.

=back

If you set these attributes to anything other than the values shown for
enabling high throughput, normal throughput is in effect and
deduplication occurs as specified.

For information on throughput quotas, see Quotas related to messages
(https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/quotas-messages.html)
in the I<Amazon SQS Developer Guide>.



=head2 B<REQUIRED> QueueUrl => Str

The URL of the Amazon SQS queue whose attribute information is
retrieved.

Queue URLs and names are case-sensitive.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetQueueAttributes in L<Paws::SQS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

