
package Paws::SNS::CreateTopic;
  use Moose;
  has Attributes => (is => 'ro', isa => 'Paws::SNS::TopicAttributesMap');
  has DataProtectionPolicy => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SNS::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTopic');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SNS::CreateTopicResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateTopicResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS::CreateTopic - Arguments for method CreateTopic on L<Paws::SNS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTopic on the
L<Amazon Simple Notification Service|Paws::SNS> service. Use the attributes of this class
as arguments to method CreateTopic.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTopic.

=head1 SYNOPSIS

    my $sns = Paws->service('SNS');
    my $CreateTopicResponse = $sns->CreateTopic(
      Name       => 'MytopicName',
      Attributes => { 'MyattributeName' => 'MyattributeValue', },    # OPTIONAL
      DataProtectionPolicy => 'MyattributeValue',                    # OPTIONAL
      Tags                 => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $TopicArn = $CreateTopicResponse->TopicArn;

    # Returns a L<Paws::SNS::CreateTopicResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sns/CreateTopic>

=head1 ATTRIBUTES


=head2 Attributes => L<Paws::SNS::TopicAttributesMap>

A map of attributes with their corresponding values.

The following lists names, descriptions, and values of the special
request parameters that the C<CreateTopic> action uses:

=over

=item *

C<DeliveryPolicy> E<ndash> The policy that defines how Amazon SNS
retries failed deliveries to HTTP/S endpoints.

=item *

C<DisplayName> E<ndash> The display name to use for a topic with SMS
subscriptions.

=item *

C<FifoTopic> E<ndash> Set to true to create a FIFO topic.

=item *

C<Policy> E<ndash> The policy that defines who can access your topic.
By default, only the topic owner can publish or subscribe to the topic.

=item *

C<SignatureVersion> E<ndash> The signature version corresponds to the
hashing algorithm used while creating the signature of the
notifications, subscription confirmations, or unsubscribe confirmation
messages sent by Amazon SNS. By default, C<SignatureVersion> is set to
C<1>.

=item *

C<TracingConfig> E<ndash> Tracing mode of an Amazon SNS topic. By
default C<TracingConfig> is set to C<PassThrough>, and the topic passes
through the tracing header it receives from an Amazon SNS publisher to
its subscriptions. If set to C<Active>, Amazon SNS will vend X-Ray
segment data to topic owner account if the sampled flag in the tracing
header is true. This is only supported on standard topics.

=back

The following attribute applies only to server-side encryption
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

=back

The following attributes apply only to FIFO topics
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




=head2 DataProtectionPolicy => Str

The body of the policy document you want to use for this topic.

You can only add one policy per topic.

The policy must be in JSON string format.

Length Constraints: Maximum length of 30,720.



=head2 B<REQUIRED> Name => Str

The name of the topic you want to create.

Constraints: Topic names must be made up of only uppercase and
lowercase ASCII letters, numbers, underscores, and hyphens, and must be
between 1 and 256 characters long.

For a FIFO (first-in-first-out) topic, the name must end with the
C<.fifo> suffix.



=head2 Tags => ArrayRef[L<Paws::SNS::Tag>]

The list of tags to add to a new topic.

To be able to tag a topic on creation, you must have the
C<sns:CreateTopic> and C<sns:TagResource> permissions.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTopic in L<Paws::SNS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

