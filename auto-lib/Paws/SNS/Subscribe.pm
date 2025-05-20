
package Paws::SNS::Subscribe;
  use Moose;
  has Attributes => (is => 'ro', isa => 'Paws::SNS::SubscriptionAttributesMap');
  has Endpoint => (is => 'ro', isa => 'Str');
  has Protocol => (is => 'ro', isa => 'Str', required => 1);
  has ReturnSubscriptionArn => (is => 'ro', isa => 'Bool');
  has TopicArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'Subscribe');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SNS::SubscribeResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'SubscribeResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS::Subscribe - Arguments for method Subscribe on L<Paws::SNS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method Subscribe on the
L<Amazon Simple Notification Service|Paws::SNS> service. Use the attributes of this class
as arguments to method Subscribe.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to Subscribe.

=head1 SYNOPSIS

    my $sns = Paws->service('SNS');
    my $SubscribeResponse = $sns->Subscribe(
      Protocol   => 'Myprotocol',
      TopicArn   => 'MytopicARN',
      Attributes => { 'MyattributeName' => 'MyattributeValue', },    # OPTIONAL
      Endpoint   => 'Myendpoint',                                    # OPTIONAL
      ReturnSubscriptionArn => 1,                                    # OPTIONAL
    );

    # Results:
    my $SubscriptionArn = $SubscribeResponse->SubscriptionArn;

    # Returns a L<Paws::SNS::SubscribeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sns/Subscribe>

=head1 ATTRIBUTES


=head2 Attributes => L<Paws::SNS::SubscriptionAttributesMap>

A map of attributes with their corresponding values.

The following lists the names, descriptions, and values of the special
request parameters that the C<Subscribe> action uses:

=over

=item *

C<DeliveryPolicy> E<ndash> The policy that defines how Amazon SNS
retries failed deliveries to HTTP/S endpoints.

=item *

C<FilterPolicy> E<ndash> The simple JSON object that lets your
subscriber receive only a subset of messages, rather than receiving
every message published to the topic.

=item *

C<FilterPolicyScope> E<ndash> This attribute lets you choose the
filtering scope by using one of the following string value types:

=over

=item *

C<MessageAttributes> (default) E<ndash> The filter is applied on the
message attributes.

=item *

C<MessageBody> E<ndash> The filter is applied on the message body.

=back

=item *

C<RawMessageDelivery> E<ndash> When set to C<true>, enables raw message
delivery to Amazon SQS or HTTP/S endpoints. This eliminates the need
for the endpoints to process JSON formatting, which is otherwise
created for Amazon SNS metadata.

=item *

C<RedrivePolicy> E<ndash> When specified, sends undeliverable messages
to the specified Amazon SQS dead-letter queue. Messages that can't be
delivered due to client errors (for example, when the subscribed
endpoint is unreachable) or server errors (for example, when the
service that powers the subscribed endpoint becomes unavailable) are
held in the dead-letter queue for further analysis or reprocessing.

=back

The following attribute applies only to Amazon Data Firehose delivery
stream subscriptions:

=over

=item *

C<SubscriptionRoleArn> E<ndash> The ARN of the IAM role that has the
following:

=over

=item *

Permission to write to the Firehose delivery stream

=item *

Amazon SNS listed as a trusted entity

=back

Specifying a valid ARN for this attribute is required for Firehose
delivery stream subscriptions. For more information, see Fanout to
Firehose delivery streams
(https://docs.aws.amazon.com/sns/latest/dg/sns-firehose-as-subscriber.html)
in the I<Amazon SNS Developer Guide>.

=back

The following attributes apply only to FIFO topics
(https://docs.aws.amazon.com/sns/latest/dg/sns-fifo-topics.html):

=over

=item *

C<ReplayPolicy> E<ndash> Adds or updates an inline policy document for
a subscription to replay messages stored in the specified Amazon SNS
topic.

=item *

C<ReplayStatus> E<ndash> Retrieves the status of the subscription
message replay, which can be one of the following:

=over

=item *

C<Completed> E<ndash> The replay has successfully redelivered all
messages, and is now delivering newly published messages. If an ending
point was specified in the C<ReplayPolicy> then the subscription will
no longer receive newly published messages.

=item *

C<In progress> E<ndash> The replay is currently replaying the selected
messages.

=item *

C<Failed> E<ndash> The replay was unable to complete.

=item *

C<Pending> E<ndash> The default state while the replay initiates.

=back

=back




=head2 Endpoint => Str

The endpoint that you want to receive notifications. Endpoints vary by
protocol:

=over

=item *

For the C<http> protocol, the (public) endpoint is a URL beginning with
C<http://>.

=item *

For the C<https> protocol, the (public) endpoint is a URL beginning
with C<https://>.

=item *

For the C<email> protocol, the endpoint is an email address.

=item *

For the C<email-json> protocol, the endpoint is an email address.

=item *

For the C<sms> protocol, the endpoint is a phone number of an
SMS-enabled device.

=item *

For the C<sqs> protocol, the endpoint is the ARN of an Amazon SQS
queue.

=item *

For the C<application> protocol, the endpoint is the EndpointArn of a
mobile app and device.

=item *

For the C<lambda> protocol, the endpoint is the ARN of an Lambda
function.

=item *

For the C<firehose> protocol, the endpoint is the ARN of an Amazon
Kinesis Data Firehose delivery stream.

=back




=head2 B<REQUIRED> Protocol => Str

The protocol that you want to use. Supported protocols include:

=over

=item *

C<http> E<ndash> delivery of JSON-encoded message via HTTP POST

=item *

C<https> E<ndash> delivery of JSON-encoded message via HTTPS POST

=item *

C<email> E<ndash> delivery of message via SMTP

=item *

C<email-json> E<ndash> delivery of JSON-encoded message via SMTP

=item *

C<sms> E<ndash> delivery of message via SMS

=item *

C<sqs> E<ndash> delivery of JSON-encoded message to an Amazon SQS queue

=item *

C<application> E<ndash> delivery of JSON-encoded message to an
EndpointArn for a mobile app and device

=item *

C<lambda> E<ndash> delivery of JSON-encoded message to an Lambda
function

=item *

C<firehose> E<ndash> delivery of JSON-encoded message to an Amazon
Kinesis Data Firehose delivery stream.

=back




=head2 ReturnSubscriptionArn => Bool

Sets whether the response from the C<Subscribe> request includes the
subscription ARN, even if the subscription is not yet confirmed.

If you set this parameter to C<true>, the response includes the ARN in
all cases, even if the subscription is not yet confirmed. In addition
to the ARN for confirmed subscriptions, the response also includes the
C<pending subscription> ARN value for subscriptions that aren't yet
confirmed. A subscription becomes confirmed when the subscriber calls
the C<ConfirmSubscription> action with a confirmation token.

The default value is C<false>.



=head2 B<REQUIRED> TopicArn => Str

The ARN of the topic you want to subscribe to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method Subscribe in L<Paws::SNS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

