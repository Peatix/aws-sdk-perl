
package Paws::Connect::StartOutboundChatContact;
  use Moose;
  has Attributes => (is => 'ro', isa => 'Paws::Connect::Attributes');
  has ChatDurationInMinutes => (is => 'ro', isa => 'Int');
  has ClientToken => (is => 'ro', isa => 'Str');
  has ContactFlowId => (is => 'ro', isa => 'Str', required => 1);
  has DestinationEndpoint => (is => 'ro', isa => 'Paws::Connect::Endpoint', required => 1);
  has InitialSystemMessage => (is => 'ro', isa => 'Paws::Connect::ChatMessage');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has ParticipantDetails => (is => 'ro', isa => 'Paws::Connect::ParticipantDetails');
  has RelatedContactId => (is => 'ro', isa => 'Str');
  has SegmentAttributes => (is => 'ro', isa => 'Paws::Connect::SegmentAttributes', required => 1);
  has SourceEndpoint => (is => 'ro', isa => 'Paws::Connect::Endpoint', required => 1);
  has SupportedMessagingContentTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartOutboundChatContact');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/contact/outbound-chat');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::StartOutboundChatContactResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::StartOutboundChatContact - Arguments for method StartOutboundChatContact on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartOutboundChatContact on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method StartOutboundChatContact.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartOutboundChatContact.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $StartOutboundChatContactResponse = $connect->StartOutboundChatContact(
      ContactFlowId       => 'MyContactFlowId',
      DestinationEndpoint => {
        Address => 'MyEndpointAddress',    # max: 256; OPTIONAL
        Type    => 'TELEPHONE_NUMBER'
        , # values: TELEPHONE_NUMBER, VOIP, CONTACT_FLOW, CONNECT_PHONENUMBER_ARN, EMAIL_ADDRESS; OPTIONAL
      },
      InstanceId        => 'MyInstanceId',
      SegmentAttributes => {
        'MySegmentAttributeName' => {
          ValueInteger => 1,    # OPTIONAL
          ValueMap     => {
            'MySegmentAttributeName' =>
              <SegmentAttributeValue>,    # key: min: 1, max: 128
          },    # OPTIONAL
          ValueString => 'MySegmentAttributeValueString',  # max: 1024; OPTIONAL
        },    # key: min: 1, max: 128
      },
      SourceEndpoint => {
        Address => 'MyEndpointAddress',    # max: 256; OPTIONAL
        Type    => 'TELEPHONE_NUMBER'
        , # values: TELEPHONE_NUMBER, VOIP, CONTACT_FLOW, CONNECT_PHONENUMBER_ARN, EMAIL_ADDRESS; OPTIONAL
      },
      Attributes => {
        'MyAttributeName' =>
          'MyAttributeValue',    # key: min: 1, max: 32767, value: max: 32767
      },    # OPTIONAL
      ChatDurationInMinutes => 1,                  # OPTIONAL
      ClientToken           => 'MyClientToken',    # OPTIONAL
      InitialSystemMessage  => {
        Content     => 'MyChatContent',            # min: 1, max: 16384
        ContentType => 'MyChatContentType',        # min: 1, max: 100

      },    # OPTIONAL
      ParticipantDetails => {
        DisplayName => 'MyDisplayName',    # min: 1, max: 256

      },    # OPTIONAL
      RelatedContactId               => 'MyContactId',    # OPTIONAL
      SupportedMessagingContentTypes => [
        'MySupportedMessagingContentType', ...            # min: 1, max: 100
      ],    # OPTIONAL
    );

    # Results:
    my $ContactId = $StartOutboundChatContactResponse->ContactId;

    # Returns a L<Paws::Connect::StartOutboundChatContactResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/StartOutboundChatContact>

=head1 ATTRIBUTES


=head2 Attributes => L<Paws::Connect::Attributes>

A custom key-value pair using an attribute map. The attributes are
standard Amazon Connect attributes, and can be accessed in flows just
like any other contact attributes.



=head2 ChatDurationInMinutes => Int

The total duration of the newly started chat session. If not specified,
the chat session duration defaults to 25 hour. The minimum configurable
time is 60 minutes. The maximum configurable time is 10,080 minutes (7
days).



=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If not provided, the AWS SDK populates this
field. For more information about idempotency, see Making retries safe
with idempotent APIs
(https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/).
The token is valid for 7 days after creation. If a contact is already
started, the contact ID is returned.



=head2 B<REQUIRED> ContactFlowId => Str

The identifier of the flow for the call. To see the ContactFlowId in
the Amazon Connect console user interface, on the navigation menu go to
B<Routing, Contact Flows>. Choose the flow. On the flow page, under the
name of the flow, choose B<Show additional flow information>. The
ContactFlowId is the last part of the ARN, shown here in bold:

=over

=item *

arn:aws:connect:us-west-2:xxxxxxxxxxxx:instance/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/contact-flow/B<123ec456-a007-89c0-1234-xxxxxxxxxxxx>

=back




=head2 B<REQUIRED> DestinationEndpoint => L<Paws::Connect::Endpoint>





=head2 InitialSystemMessage => L<Paws::Connect::ChatMessage>





=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instance ID in the Amazon Resource Name (ARN) of the instance.



=head2 ParticipantDetails => L<Paws::Connect::ParticipantDetails>





=head2 RelatedContactId => Str

The unique identifier for an Amazon Connect contact. This identifier is
related to the contact starting.



=head2 B<REQUIRED> SegmentAttributes => L<Paws::Connect::SegmentAttributes>

A set of system defined key-value pairs stored on individual contact
segments using an attribute map. The attributes are standard Amazon
Connect attributes. They can be accessed in flows.

=over

=item *

Attribute keys can include only alphanumeric, C<->, and C<_>.

=item *

This field can be used to show channel subtype, such as
C<connect:Guide> and C<connect:SMS>.

=back




=head2 B<REQUIRED> SourceEndpoint => L<Paws::Connect::Endpoint>





=head2 SupportedMessagingContentTypes => ArrayRef[Str|Undef]

The supported chat message content types. Supported types are:

=over

=item *

C<text/plain>

=item *

C<text/markdown>

=item *

C<application/json,
application/vnd.amazonaws.connect.message.interactive>

=item *

C<application/vnd.amazonaws.connect.message.interactive.response>

=back

Content types must always contain C<text/plain>. You can then put any
other supported type in the list. For example, all the following lists
are valid because they contain C<text/plain>:

=over

=item *

C<[text/plain, text/markdown, application/json]>

=item *

C<[text/markdown, text/plain]>

=item *

C<[text/plain, application/json,
application/vnd.amazonaws.connect.message.interactive.response]>

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartOutboundChatContact in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

