
package Paws::SQS::SetQueueAttributes;
  use Moose;
  has Attributes => (is => 'ro', isa => 'Paws::SQS::QueueAttributeMap', required => 1);
  has QueueUrl => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetQueueAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SQS::SetQueueAttributes - Arguments for method SetQueueAttributes on L<Paws::SQS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SetQueueAttributes on the
L<Amazon Simple Queue Service|Paws::SQS> service. Use the attributes of this class
as arguments to method SetQueueAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SetQueueAttributes.

=head1 SYNOPSIS

    my $sqs = Paws->service('SQS');
    $sqs->SetQueueAttributes(
      Attributes => {
        'All' => 'MyString'
        , # key: values: All, Policy, VisibilityTimeout, MaximumMessageSize, MessageRetentionPeriod, ApproximateNumberOfMessages, ApproximateNumberOfMessagesNotVisible, CreatedTimestamp, LastModifiedTimestamp, QueueArn, ApproximateNumberOfMessagesDelayed, DelaySeconds, ReceiveMessageWaitTimeSeconds, RedrivePolicy, FifoQueue, ContentBasedDeduplication, KmsMasterKeyId, KmsDataKeyReusePeriodSeconds, DeduplicationScope, FifoThroughputLimit, RedriveAllowPolicy, SqsManagedSseEnabled
      },
      QueueUrl => 'MyString',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sqs/SetQueueAttributes>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Attributes => L<Paws::SQS::QueueAttributeMap>

A map of attributes to set.

The following lists the names, descriptions, and values of the special
request parameters that the C<SetQueueAttributes> action uses:

=over

=item *

C<DelaySeconds> E<ndash> The length of time, in seconds, for which the
delivery of all messages in the queue is delayed. Valid values: An
integer from 0 to 900 (15 minutes). Default: 0.

=item *

C<MaximumMessageSize> E<ndash> The limit of how many bytes a message
can contain before Amazon SQS rejects it. Valid values: An integer from
1,024 bytes (1 KiB) up to 262,144 bytes (256 KiB). Default: 262,144
(256 KiB).

=item *

C<MessageRetentionPeriod> E<ndash> The length of time, in seconds, for
which Amazon SQS retains a message. Valid values: An integer
representing seconds, from 60 (1 minute) to 1,209,600 (14 days).
Default: 345,600 (4 days). When you change a queue's attributes, the
change can take up to 60 seconds for most of the attributes to
propagate throughout the Amazon SQS system. Changes made to the
C<MessageRetentionPeriod> attribute can take up to 15 minutes and will
impact existing messages in the queue potentially causing them to be
expired and deleted if the C<MessageRetentionPeriod> is reduced below
the age of existing messages.

=item *

C<Policy> E<ndash> The queue's policy. A valid Amazon Web Services
policy. For more information about policy structure, see Overview of
Amazon Web Services IAM Policies
(https://docs.aws.amazon.com/IAM/latest/UserGuide/PoliciesOverview.html)
in the I<Identity and Access Management User Guide>.

=item *

C<ReceiveMessageWaitTimeSeconds> E<ndash> The length of time, in
seconds, for which a C< ReceiveMessage > action waits for a message to
arrive. Valid values: An integer from 0 to 20 (seconds). Default: 0.

=item *

C<VisibilityTimeout> E<ndash> The visibility timeout for the queue, in
seconds. Valid values: An integer from 0 to 43,200 (12 hours). Default:
30. For more information about the visibility timeout, see Visibility
Timeout
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

C<KmsMasterKeyId> E<ndash> The ID of an Amazon Web Services managed
customer master key (CMK) for Amazon SQS or a custom CMK. For more
information, see Key Terms
(https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-sse-key-terms).
While the alias of the AWS-managed CMK for Amazon SQS is always
C<alias/aws/sqs>, the alias of a custom CMK can, for example, be
C<alias/I<MyAlias> >. For more examples, see KeyId
(https://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html#API_DescribeKey_RequestParameters)
in the I<Key Management Service API Reference>.

=item *

C<KmsDataKeyReusePeriodSeconds> E<ndash> The length of time, in
seconds, for which Amazon SQS can reuse a data key
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#data-keys)
to encrypt or decrypt messages before calling KMS again. An integer
representing seconds, between 60 seconds (1 minute) and 86,400 seconds
(24 hours). Default: 300 (5 minutes). A shorter time period provides
better security but results in more calls to KMS which might incur
charges after Free Tier. For more information, see How Does the Data
Key Reuse Period Work?
(https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-how-does-the-data-key-reuse-period-work).

=item *

C<SqsManagedSseEnabled> E<ndash> Enables server-side queue encryption
using SQS owned encryption keys. Only one server-side encryption option
is supported per queue (for example, SSE-KMS
(https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-configure-sse-existing-queue.html)
or SSE-SQS
(https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-configure-sqs-sse-queue.html)).

=back

The following attribute applies only to FIFO (first-in-first-out)
queues
(https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html):

=over

=item *

C<ContentBasedDeduplication> E<ndash> Enables content-based
deduplication. For more information, see Exactly-once processing
(https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues-exactly-once-processing.html)
in the I<Amazon SQS Developer Guide>. Note the following:

=over

=item *

Every message must have a unique C<MessageDeduplicationId>.

=over

=item *

You may provide a C<MessageDeduplicationId> explicitly.

=item *

If you aren't able to provide a C<MessageDeduplicationId> and you
enable C<ContentBasedDeduplication> for your queue, Amazon SQS uses a
SHA-256 hash to generate the C<MessageDeduplicationId> using the body
of the message (but not the attributes of the message).

=item *

If you don't provide a C<MessageDeduplicationId> and the queue doesn't
have C<ContentBasedDeduplication> set, the action fails with an error.

=item *

If the queue has C<ContentBasedDeduplication> set, your
C<MessageDeduplicationId> overrides the generated one.

=back

=item *

When C<ContentBasedDeduplication> is in effect, messages with identical
content sent within the deduplication interval are treated as
duplicates and only one copy of the message is delivered.

=item *

If you send one message with C<ContentBasedDeduplication> enabled and
then another message with a C<MessageDeduplicationId> that is the same
as the one generated for the first C<MessageDeduplicationId>, the two
messages are treated as duplicates and only one copy of the message is
delivered.

=back

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

The URL of the Amazon SQS queue whose attributes are set.

Queue URLs and names are case-sensitive.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SetQueueAttributes in L<Paws::SQS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

