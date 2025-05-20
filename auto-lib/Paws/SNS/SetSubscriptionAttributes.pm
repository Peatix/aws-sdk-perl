
package Paws::SNS::SetSubscriptionAttributes;
  use Moose;
  has AttributeName => (is => 'ro', isa => 'Str', required => 1);
  has AttributeValue => (is => 'ro', isa => 'Str');
  has SubscriptionArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetSubscriptionAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS::SetSubscriptionAttributes - Arguments for method SetSubscriptionAttributes on L<Paws::SNS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SetSubscriptionAttributes on the
L<Amazon Simple Notification Service|Paws::SNS> service. Use the attributes of this class
as arguments to method SetSubscriptionAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SetSubscriptionAttributes.

=head1 SYNOPSIS

    my $sns = Paws->service('SNS');
    $sns->SetSubscriptionAttributes(
      AttributeName   => 'MyattributeName',
      SubscriptionArn => 'MysubscriptionARN',
      AttributeValue  => 'MyattributeValue',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sns/SetSubscriptionAttributes>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AttributeName => Str

A map of attributes with their corresponding values.

The following lists the names, descriptions, and values of the special
request parameters that this action uses:

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




=head2 AttributeValue => Str

The new value for the attribute in JSON format.



=head2 B<REQUIRED> SubscriptionArn => Str

The ARN of the subscription to modify.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SetSubscriptionAttributes in L<Paws::SNS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

