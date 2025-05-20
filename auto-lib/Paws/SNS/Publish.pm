
package Paws::SNS::Publish;
  use Moose;
  has Message => (is => 'ro', isa => 'Str', required => 1);
  has MessageAttributes => (is => 'ro', isa => 'Paws::SNS::MessageAttributeMap');
  has MessageDeduplicationId => (is => 'ro', isa => 'Str');
  has MessageGroupId => (is => 'ro', isa => 'Str');
  has MessageStructure => (is => 'ro', isa => 'Str');
  has PhoneNumber => (is => 'ro', isa => 'Str');
  has Subject => (is => 'ro', isa => 'Str');
  has TargetArn => (is => 'ro', isa => 'Str');
  has TopicArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'Publish');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SNS::PublishResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'PublishResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS::Publish - Arguments for method Publish on L<Paws::SNS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method Publish on the
L<Amazon Simple Notification Service|Paws::SNS> service. Use the attributes of this class
as arguments to method Publish.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to Publish.

=head1 SYNOPSIS

    my $sns = Paws->service('SNS');
    my $PublishResponse = $sns->Publish(
      Message           => 'Mymessage',
      MessageAttributes => {
        'MyString' => {
          DataType    => 'MyString',
          BinaryValue => 'BlobBinary',    # OPTIONAL
          StringValue => 'MyString',
        },
      },    # OPTIONAL
      MessageDeduplicationId => 'MyString',              # OPTIONAL
      MessageGroupId         => 'MyString',              # OPTIONAL
      MessageStructure       => 'MymessageStructure',    # OPTIONAL
      PhoneNumber            => 'MyPhoneNumber',         # OPTIONAL
      Subject                => 'Mysubject',             # OPTIONAL
      TargetArn              => 'MyString',              # OPTIONAL
      TopicArn               => 'MytopicARN',            # OPTIONAL
    );

    # Results:
    my $MessageId      = $PublishResponse->MessageId;
    my $SequenceNumber = $PublishResponse->SequenceNumber;

    # Returns a L<Paws::SNS::PublishResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sns/Publish>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Message => Str

The message you want to send.

If you are publishing to a topic and you want to send the same message
to all transport protocols, include the text of the message as a String
value. If you want to send different messages for each transport
protocol, set the value of the C<MessageStructure> parameter to C<json>
and use a JSON object for the C<Message> parameter.

Constraints:

=over

=item *

With the exception of SMS, messages must be UTF-8 encoded strings and
at most 256 KB in size (262,144 bytes, not 262,144 characters).

=item *

For SMS, each message can contain up to 140 characters. This character
limit depends on the encoding schema. For example, an SMS message can
contain 160 GSM characters, 140 ASCII characters, or 70 UCS-2
characters.

If you publish a message that exceeds this size limit, Amazon SNS sends
the message as multiple messages, each fitting within the size limit.
Messages aren't truncated mid-word but are cut off at whole-word
boundaries.

The total size limit for a single SMS C<Publish> action is 1,600
characters.

=back

JSON-specific constraints:

=over

=item *

Keys in the JSON object that correspond to supported transport
protocols must have simple JSON string values.

=item *

The values will be parsed (unescaped) before they are used in outgoing
messages.

=item *

Outbound notifications are JSON encoded (meaning that the characters
will be reescaped for sending).

=item *

Values have a minimum length of 0 (the empty string, "", is allowed).

=item *

Values have a maximum length bounded by the overall message size (so,
including multiple protocols may limit message sizes).

=item *

Non-string values will cause the key to be ignored.

=item *

Keys that do not correspond to supported transport protocols are
ignored.

=item *

Duplicate keys are not allowed.

=item *

Failure to parse or validate any key or value in the message will cause
the C<Publish> call to return an error (no partial delivery).

=back




=head2 MessageAttributes => L<Paws::SNS::MessageAttributeMap>

Message attributes for Publish action.



=head2 MessageDeduplicationId => Str

=over

=item *

This parameter applies only to FIFO (first-in-first-out) topics. The
C<MessageDeduplicationId> can contain up to 128 alphanumeric characters
C<(a-z, A-Z, 0-9)> and punctuation
C<(!"#$%&'()*+,-./:;E<lt>=E<gt>?@[\]^_`{|}~)>.

=item *

Every message must have a unique C<MessageDeduplicationId>, which is a
token used for deduplication of sent messages within the 5 minute
minimum deduplication interval.

=item *

The scope of deduplication depends on the C<FifoThroughputScope>
attribute, when set to C<Topic> the message deduplication scope is
across the entire topic, when set to C<MessageGroup> the message
deduplication scope is within each individual message group.

=item *

If a message with a particular C<MessageDeduplicationId> is sent
successfully, subsequent messages within the deduplication scope and
interval, with the same C<MessageDeduplicationId>, are accepted
successfully but aren't delivered.

=item *

Every message must have a unique C<MessageDeduplicationId>:

=over

=item *

You may provide a C<MessageDeduplicationId> explicitly.

=item *

If you aren't able to provide a C<MessageDeduplicationId> and you
enable C<ContentBasedDeduplication> for your topic, Amazon SNS uses a
SHA-256 hash to generate the C<MessageDeduplicationId> using the body
of the message (but not the attributes of the message).

=item *

If you don't provide a C<MessageDeduplicationId> and the topic doesn't
have C<ContentBasedDeduplication> set, the action fails with an error.

=item *

If the topic has a C<ContentBasedDeduplication> set, your
C<MessageDeduplicationId> overrides the generated one.

=back

=item *

When C<ContentBasedDeduplication> is in effect, messages with identical
content sent within the deduplication scope and interval are treated as
duplicates and only one copy of the message is delivered.

=item *

If you send one message with C<ContentBasedDeduplication> enabled, and
then another message with a C<MessageDeduplicationId> that is the same
as the one generated for the first C<MessageDeduplicationId>, the two
messages are treated as duplicates, within the deduplication scope and
interval, and only one copy of the message is delivered.

=back




=head2 MessageGroupId => Str

This parameter applies only to FIFO (first-in-first-out) topics. The
C<MessageGroupId> can contain up to 128 alphanumeric characters C<(a-z,
A-Z, 0-9)> and punctuation
C<(!"#$%&'()*+,-./:;E<lt>=E<gt>?@[\]^_`{|}~)>.

The C<MessageGroupId> is a tag that specifies that a message belongs to
a specific message group. Messages that belong to the same message
group are processed in a FIFO manner (however, messages in different
message groups might be processed out of order). Every message must
include a C<MessageGroupId>.



=head2 MessageStructure => Str

Set C<MessageStructure> to C<json> if you want to send a different
message for each protocol. For example, using one publish action, you
can send a short message to your SMS subscribers and a longer message
to your email subscribers. If you set C<MessageStructure> to C<json>,
the value of the C<Message> parameter must:

=over

=item *

be a syntactically valid JSON object; and

=item *

contain at least a top-level JSON key of "default" with a value that is
a string.

=back

You can define other top-level keys that define the message you want to
send to a specific transport protocol (e.g., "http").

Valid value: C<json>



=head2 PhoneNumber => Str

The phone number to which you want to deliver an SMS message. Use E.164
format.

If you don't specify a value for the C<PhoneNumber> parameter, you must
specify a value for the C<TargetArn> or C<TopicArn> parameters.



=head2 Subject => Str

Optional parameter to be used as the "Subject" line when the message is
delivered to email endpoints. This field will also be included, if
present, in the standard JSON messages delivered to other endpoints.

Constraints: Subjects must be UTF-8 text with no line breaks or control
characters, and less than 100 characters long.



=head2 TargetArn => Str

If you don't specify a value for the C<TargetArn> parameter, you must
specify a value for the C<PhoneNumber> or C<TopicArn> parameters.



=head2 TopicArn => Str

The topic you want to publish to.

If you don't specify a value for the C<TopicArn> parameter, you must
specify a value for the C<PhoneNumber> or C<TargetArn> parameters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method Publish in L<Paws::SNS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

