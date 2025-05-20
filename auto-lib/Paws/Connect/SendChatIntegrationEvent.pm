
package Paws::Connect::SendChatIntegrationEvent;
  use Moose;
  has DestinationId => (is => 'ro', isa => 'Str', required => 1);
  has Event => (is => 'ro', isa => 'Paws::Connect::ChatEvent', required => 1);
  has NewSessionDetails => (is => 'ro', isa => 'Paws::Connect::NewSessionDetails');
  has SourceId => (is => 'ro', isa => 'Str', required => 1);
  has Subtype => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SendChatIntegrationEvent');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/chat-integration-event');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::SendChatIntegrationEventResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::SendChatIntegrationEvent - Arguments for method SendChatIntegrationEvent on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SendChatIntegrationEvent on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method SendChatIntegrationEvent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SendChatIntegrationEvent.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $SendChatIntegrationEventResponse = $connect->SendChatIntegrationEvent(
      DestinationId => 'MyDestinationId',
      Event         => {
        Type        => 'DISCONNECT',        # values: DISCONNECT, MESSAGE, EVENT
        Content     => 'MyChatContent',     # min: 1, max: 16384; OPTIONAL
        ContentType => 'MyChatContentType', # min: 1, max: 100; OPTIONAL
      },
      SourceId          => 'MySourceId',
      NewSessionDetails => {
        Attributes => {
          'MyAttributeName' =>
            'MyAttributeValue',    # key: min: 1, max: 32767, value: max: 32767
        },    # OPTIONAL
        ParticipantDetails => {
          DisplayName => 'MyDisplayName',    # min: 1, max: 256

        },    # OPTIONAL
        StreamingConfiguration => {
          StreamingEndpointArn =>
            'MyChatStreamingEndpointARN',    # min: 1, max: 350

        },    # OPTIONAL
        SupportedMessagingContentTypes => [
          'MySupportedMessagingContentType', ...    # min: 1, max: 100
        ],    # OPTIONAL
      },    # OPTIONAL
      Subtype => 'MySubtype',    # OPTIONAL
    );

    # Results:
    my $InitialContactId = $SendChatIntegrationEventResponse->InitialContactId;
    my $NewChatCreated   = $SendChatIntegrationEventResponse->NewChatCreated;

    # Returns a L<Paws::Connect::SendChatIntegrationEventResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/SendChatIntegrationEvent>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DestinationId => Str

Chat system identifier, used in part to uniquely identify chat. This is
associated with the Amazon Connect instance and flow to be used to
start chats. For Server Migration Service, this is the phone number
destination of inbound Server Migration Service messages represented by
an Amazon Web Services End User Messaging phone number ARN.



=head2 B<REQUIRED> Event => L<Paws::Connect::ChatEvent>

Chat integration event payload



=head2 NewSessionDetails => L<Paws::Connect::NewSessionDetails>

Contact properties to apply when starting a new chat. If the
integration event is handled with an existing chat, this is ignored.



=head2 B<REQUIRED> SourceId => Str

External identifier of chat customer participant, used in part to
uniquely identify a chat. For SMS, this is the E164 phone number of the
chat customer participant.



=head2 Subtype => Str

Classification of a channel. This is used in part to uniquely identify
chat.

Valid value: C<["connect:sms", connect:"WhatsApp"]>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SendChatIntegrationEvent in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

