
package Paws::SNS::SetTopicAttributes;
  use Moose;
  has AttributeName => (is => 'ro', isa => 'Str', required => 1);
  has AttributeValue => (is => 'ro', isa => 'Str');
  has TopicArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetTopicAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS::SetTopicAttributes - Arguments for method SetTopicAttributes on L<Paws::SNS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SetTopicAttributes on the
L<Amazon Simple Notification Service|Paws::SNS> service. Use the attributes of this class
as arguments to method SetTopicAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SetTopicAttributes.

=head1 SYNOPSIS

    my $sns = Paws->service('SNS');
    $sns->SetTopicAttributes(
      AttributeName  => 'MyattributeName',
      TopicArn       => 'MytopicARN',
      AttributeValue => 'MyattributeValue',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sns/SetTopicAttributes>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AttributeName => Str

A map of attributes with their corresponding values.

The following lists the names, descriptions, and values of the special
request parameters that the C<SetTopicAttributes> action uses:

=over

=item *

C<ApplicationSuccessFeedbackRoleArn> E<ndash> Indicates failed message
delivery status for an Amazon SNS topic that is subscribed to a
platform application endpoint.

=item *

C<DeliveryPolicy> E<ndash> The policy that defines how Amazon SNS
retries failed deliveries to HTTP/S endpoints.

=item *

C<DisplayName> E<ndash> The display name to use for a topic with SMS
subscriptions.

=item *

C<Policy> E<ndash> The policy that defines who can access your topic.
By default, only the topic owner can publish or subscribe to the topic.

=item *

C<TracingConfig> E<ndash> Tracing mode of an Amazon SNS topic. By
default C<TracingConfig> is set to C<PassThrough>, and the topic passes
through the tracing header it receives from an Amazon SNS publisher to
its subscriptions. If set to C<Active>, Amazon SNS will vend X-Ray
segment data to topic owner account if the sampled flag in the tracing
header is true. This is only supported on standard topics.

=item *

HTTP

=over

=item *

C<HTTPSuccessFeedbackRoleArn> E<ndash> Indicates successful message
delivery status for an Amazon SNS topic that is subscribed to an HTTP
endpoint.

=item *

C<HTTPSuccessFeedbackSampleRate> E<ndash> Indicates percentage of
successful messages to sample for an Amazon SNS topic that is
subscribed to an HTTP endpoint.

=item *

C<HTTPFailureFeedbackRoleArn> E<ndash> Indicates failed message
delivery status for an Amazon SNS topic that is subscribed to an HTTP
endpoint.

=back

=item *

Amazon Kinesis Data Firehose

=over

=item *

C<FirehoseSuccessFeedbackRoleArn> E<ndash> Indicates successful message
delivery status for an Amazon SNS topic that is subscribed to an Amazon
Kinesis Data Firehose endpoint.

=item *

C<FirehoseSuccessFeedbackSampleRate> E<ndash> Indicates percentage of
successful messages to sample for an Amazon SNS topic that is
subscribed to an Amazon Kinesis Data Firehose endpoint.

=item *

C<FirehoseFailureFeedbackRoleArn> E<ndash> Indicates failed message
delivery status for an Amazon SNS topic that is subscribed to an Amazon
Kinesis Data Firehose endpoint.

=back

=item *

Lambda

=over

=item *

C<LambdaSuccessFeedbackRoleArn> E<ndash> Indicates successful message
delivery status for an Amazon SNS topic that is subscribed to an Lambda
endpoint.

=item *

C<LambdaSuccessFeedbackSampleRate> E<ndash> Indicates percentage of
successful messages to sample for an Amazon SNS topic that is
subscribed to an Lambda endpoint.

=item *

C<LambdaFailureFeedbackRoleArn> E<ndash> Indicates failed message
delivery status for an Amazon SNS topic that is subscribed to an Lambda
endpoint.

=back

=item *

Platform application endpoint

=over

=item *

C<ApplicationSuccessFeedbackRoleArn> E<ndash> Indicates successful
message delivery status for an Amazon SNS topic that is subscribed to
an Amazon Web Services application endpoint.

=item *

C<ApplicationSuccessFeedbackSampleRate> E<ndash> Indicates percentage
of successful messages to sample for an Amazon SNS topic that is
subscribed to an Amazon Web Services application endpoint.

=item *

C<ApplicationFailureFeedbackRoleArn> E<ndash> Indicates failed message
delivery status for an Amazon SNS topic that is subscribed to an Amazon
Web Services application endpoint.

=back

In addition to being able to configure topic attributes for message
delivery status of notification messages sent to Amazon SNS application
endpoints, you can also configure application attributes for the
delivery status of push notification messages sent to push notification
services.

For example, For more information, see Using Amazon SNS Application
Attributes for Message Delivery Status
(https://docs.aws.amazon.com/sns/latest/dg/sns-msg-status.html).

=item *

Amazon SQS

=over

=item *

C<SQSSuccessFeedbackRoleArn> E<ndash> Indicates successful message
delivery status for an Amazon SNS topic that is subscribed to an Amazon
SQS endpoint.

=item *

C<SQSSuccessFeedbackSampleRate> E<ndash> Indicates percentage of
successful messages to sample for an Amazon SNS topic that is
subscribed to an Amazon SQS endpoint.

=item *

C<SQSFailureFeedbackRoleArn> E<ndash> Indicates failed message delivery
status for an Amazon SNS topic that is subscribed to an Amazon SQS
endpoint.

=back

=back

The E<lt>ENDPOINTE<gt>SuccessFeedbackRoleArn and
E<lt>ENDPOINTE<gt>FailureFeedbackRoleArn attributes are used to give
Amazon SNS write access to use CloudWatch Logs on your behalf. The
E<lt>ENDPOINTE<gt>SuccessFeedbackSampleRate attribute is for specifying
the sample rate percentage (0-100) of successfully delivered messages.
After you configure the E<lt>ENDPOINTE<gt>FailureFeedbackRoleArn
attribute, then all failed message deliveries generate CloudWatch Logs.

The following attribute applies only to server-side-encryption
(https://docs.aws.amazon.com/sns/latest/dg/sns-server-side-encryption.html):

=over

=item *

C<KmsMasterKeyId> E<ndash> The ID of an Amazon Web Services managed
customer master key (CMK) for Amazon SNS or a custom CMK. For more
information, see Key Terms
(https://docs.aws.amazon.com/sns/latest/dg/sns-server-side-encryption.html#sse-key-terms).
For more examples, see KeyId
(https://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html#API_DescribeKey_RequestParameters)
in the I<Key Management Service API Reference>.

=item *

C<SignatureVersion> E<ndash> The signature version corresponds to the
hashing algorithm used while creating the signature of the
notifications, subscription confirmations, or unsubscribe confirmation
messages sent by Amazon SNS. By default, C<SignatureVersion> is set to
C<1>.

=back

The following attribute applies only to FIFO topics
(https://docs.aws.amazon.com/sns/latest/dg/sns-fifo-topics.html):

=over

=item *

C<ArchivePolicy> E<ndash> The policy that sets the retention period for
messages stored in the message archive of an Amazon SNS FIFO topic.

=item *

C<ContentBasedDeduplication> E<ndash> Enables content-based
deduplication for FIFO topics.

=over

=item *

By default, C<ContentBasedDeduplication> is set to C<false>. If you
create a FIFO topic and this attribute is C<false>, you must specify a
value for the C<MessageDeduplicationId> parameter for the Publish
(https://docs.aws.amazon.com/sns/latest/api/API_Publish.html) action.

=item *

When you set C<ContentBasedDeduplication> to C<true>, Amazon SNS uses a
SHA-256 hash to generate the C<MessageDeduplicationId> using the body
of the message (but not the attributes of the message).

(Optional) To override the generated value, you can specify a value for
the C<MessageDeduplicationId> parameter for the C<Publish> action.

=back

=back

=over

=item *

C<FifoThroughputScope> E<ndash> Enables higher throughput for your FIFO
topic by adjusting the scope of deduplication. This attribute has two
possible values:

=over

=item *

C<Topic> E<ndash> The scope of message deduplication is across the
entire topic. This is the default value and maintains existing
behavior, with a maximum throughput of 3000 messages per second or 20MB
per second, whichever comes first.

=item *

C<MessageGroup> E<ndash> The scope of deduplication is within each
individual message group, which enables higher throughput per topic
subject to regional quotas. For more information on quotas or to
request an increase, see Amazon SNS service quotas
(https://docs.aws.amazon.com/general/latest/gr/sns.html) in the Amazon
Web Services General Reference.

=back

=back




=head2 AttributeValue => Str

The new value for the attribute.



=head2 B<REQUIRED> TopicArn => Str

The ARN of the topic to modify.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SetTopicAttributes in L<Paws::SNS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

