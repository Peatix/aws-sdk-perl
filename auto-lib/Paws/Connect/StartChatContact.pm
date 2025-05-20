
package Paws::Connect::StartChatContact;
  use Moose;
  has Attributes => (is => 'ro', isa => 'Paws::Connect::Attributes');
  has ChatDurationInMinutes => (is => 'ro', isa => 'Int');
  has ClientToken => (is => 'ro', isa => 'Str');
  has ContactFlowId => (is => 'ro', isa => 'Str', required => 1);
  has CustomerId => (is => 'ro', isa => 'Str');
  has InitialMessage => (is => 'ro', isa => 'Paws::Connect::ChatMessage');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has ParticipantDetails => (is => 'ro', isa => 'Paws::Connect::ParticipantDetails', required => 1);
  has PersistentChat => (is => 'ro', isa => 'Paws::Connect::PersistentChat');
  has RelatedContactId => (is => 'ro', isa => 'Str');
  has SegmentAttributes => (is => 'ro', isa => 'Paws::Connect::SegmentAttributes');
  has SupportedMessagingContentTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartChatContact');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/contact/chat');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::StartChatContactResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::StartChatContact - Arguments for method StartChatContact on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartChatContact on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method StartChatContact.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartChatContact.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $StartChatContactResponse = $connect->StartChatContact(
      ContactFlowId      => 'MyContactFlowId',
      InstanceId         => 'MyInstanceId',
      ParticipantDetails => {
        DisplayName => 'MyDisplayName',    # min: 1, max: 256

      },
      Attributes => {
        'MyAttributeName' =>
          'MyAttributeValue',    # key: min: 1, max: 32767, value: max: 32767
      },    # OPTIONAL
      ChatDurationInMinutes => 1,                         # OPTIONAL
      ClientToken           => 'MyClientToken',           # OPTIONAL
      CustomerId            => 'MyCustomerIdNonEmpty',    # OPTIONAL
      InitialMessage        => {
        Content     => 'MyChatContent',                   # min: 1, max: 16384
        ContentType => 'MyChatContentType',               # min: 1, max: 100

      },    # OPTIONAL
      PersistentChat => {
        RehydrationType => 'ENTIRE_PAST_SESSION'
        ,    # values: ENTIRE_PAST_SESSION, FROM_SEGMENT; OPTIONAL
        SourceContactId => 'MyContactId',    # min: 1, max: 256; OPTIONAL
      },    # OPTIONAL
      RelatedContactId  => 'MyContactId',    # OPTIONAL
      SegmentAttributes => {
        'MySegmentAttributeName' => {
          ValueInteger => 1,                 # OPTIONAL
          ValueMap     => {
            'MySegmentAttributeName' =>
              <SegmentAttributeValue>,       # key: min: 1, max: 128
          },    # OPTIONAL
          ValueString => 'MySegmentAttributeValueString',  # max: 1024; OPTIONAL
        },    # key: min: 1, max: 128
      },    # OPTIONAL
      SupportedMessagingContentTypes => [
        'MySupportedMessagingContentType', ...    # min: 1, max: 100
      ],    # OPTIONAL
    );

    # Results:
    my $ContactId = $StartChatContactResponse->ContactId;
    my $ContinuedFromContactId =
      $StartChatContactResponse->ContinuedFromContactId;
    my $ParticipantId    = $StartChatContactResponse->ParticipantId;
    my $ParticipantToken = $StartChatContactResponse->ParticipantToken;

    # Returns a L<Paws::Connect::StartChatContactResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/StartChatContact>

=head1 ATTRIBUTES


=head2 Attributes => L<Paws::Connect::Attributes>

A custom key-value pair using an attribute map. The attributes are
standard Amazon Connect attributes. They can be accessed in flows just
like any other contact attributes.

There can be up to 32,768 UTF-8 bytes across all key-value pairs per
contact. Attribute keys can include only alphanumeric, dash, and
underscore characters.



=head2 ChatDurationInMinutes => Int

The total duration of the newly started chat session. If not specified,
the chat session duration defaults to 25 hour. The minimum configurable
time is 60 minutes. The maximum configurable time is 10,080 minutes (7
days).



=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see
Making retries safe with idempotent APIs
(https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/).



=head2 B<REQUIRED> ContactFlowId => Str

The identifier of the flow for initiating the chat. To see the
ContactFlowId in the Amazon Connect admin website, on the navigation
menu go to B<Routing>, B<Flows>. Choose the flow. On the flow page,
under the name of the flow, choose B<Show additional flow information>.
The ContactFlowId is the last part of the ARN, shown here in bold:

arn:aws:connect:us-west-2:xxxxxxxxxxxx:instance/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/contact-flow/B<846ec553-a005-41c0-8341-xxxxxxxxxxxx>



=head2 CustomerId => Str

The customer's identification number. For example, the C<CustomerId>
may be a customer number from your CRM.



=head2 InitialMessage => L<Paws::Connect::ChatMessage>

The initial message to be sent to the newly created chat. If you have a
Lex bot in your flow, the initial message is not delivered to the Lex
bot.



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instance ID
(https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
in the Amazon Resource Name (ARN) of the instance.



=head2 B<REQUIRED> ParticipantDetails => L<Paws::Connect::ParticipantDetails>

Information identifying the participant.



=head2 PersistentChat => L<Paws::Connect::PersistentChat>

Enable persistent chats. For more information about enabling persistent
chat, and for example use cases and how to configure for them, see
Enable persistent chat
(https://docs.aws.amazon.com/connect/latest/adminguide/chat-persistence.html).



=head2 RelatedContactId => Str

The unique identifier for an Amazon Connect contact. This identifier is
related to the chat starting.

You cannot provide data for both RelatedContactId and PersistentChat.



=head2 SegmentAttributes => L<Paws::Connect::SegmentAttributes>

A set of system defined key-value pairs stored on individual contact
segments using an attribute map. The attributes are standard Amazon
Connect attributes. They can be accessed in flows.

Attribute keys can include only alphanumeric, -, and _.

This field can be used to show channel subtype, such as
C<connect:Guide>.

The types C<application/vnd.amazonaws.connect.message.interactive> and
C<application/vnd.amazonaws.connect.message.interactive.response> must
be present in the SupportedMessagingContentTypes field of this API in
order to set C<SegmentAttributes> as {C< "connect:Subtype":
{"valueString" : "connect:Guide" }}>.



=head2 SupportedMessagingContentTypes => ArrayRef[Str|Undef]

The supported chat message content types. Supported types are
C<text/plain>, C<text/markdown>, C<application/json>,
C<application/vnd.amazonaws.connect.message.interactive>, and
C<application/vnd.amazonaws.connect.message.interactive.response>.

Content types must always contain C<text/plain>. You can then put any
other supported type in the list. For example, all the following lists
are valid because they contain C<text/plain>: C<[text/plain,
text/markdown, application/json]>, C<[text/markdown, text/plain]>,
C<[text/plain, application/json,
application/vnd.amazonaws.connect.message.interactive.response]>.

The type C<application/vnd.amazonaws.connect.message.interactive> is
required to use the Show view
(https://docs.aws.amazon.com/connect/latest/adminguide/show-view-block.html)
flow block.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartChatContact in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

