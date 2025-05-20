
package Paws::QConnect::SendMessage;
  use Moose;
  has AssistantId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'assistantId', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Configuration => (is => 'ro', isa => 'Paws::QConnect::MessageConfiguration', traits => ['NameInRequest'], request_name => 'configuration');
  has ConversationContext => (is => 'ro', isa => 'Paws::QConnect::ConversationContext', traits => ['NameInRequest'], request_name => 'conversationContext');
  has Message => (is => 'ro', isa => 'Paws::QConnect::MessageInput', traits => ['NameInRequest'], request_name => 'message', required => 1);
  has SessionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'sessionId', required => 1);
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SendMessage');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/assistants/{assistantId}/sessions/{sessionId}/message');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QConnect::SendMessageResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::SendMessage - Arguments for method SendMessage on L<Paws::QConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SendMessage on the
L<Amazon Q Connect|Paws::QConnect> service. Use the attributes of this class
as arguments to method SendMessage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SendMessage.

=head1 SYNOPSIS

    my $wisdom = Paws->service('QConnect');
    my $SendMessageResponse = $wisdom->SendMessage(
      AssistantId => 'MyUuidOrArn',
      Message     => {
        Value => {
          Text => {
            Value => 'MyTextMessageValueString',   # min: 1, max: 1024; OPTIONAL
          },    # OPTIONAL
        },

      },
      SessionId     => 'MyUuidOrArn',
      Type          => 'TEXT',
      ClientToken   => 'MyClientToken',    # OPTIONAL
      Configuration => {
        GenerateFillerMessage => 1,        # OPTIONAL
      },    # OPTIONAL
      ConversationContext => {
        SelfServiceConversationHistory => [
          {
            TurnNumber      => 1,
            BotResponse     => 'MySensitiveString',    # OPTIONAL
            InputTranscript => 'MySensitiveString',    # OPTIONAL
          },
          ...
        ],    # max: 10

      },    # OPTIONAL
    );

    # Results:
    my $Configuration    = $SendMessageResponse->Configuration;
    my $NextMessageToken = $SendMessageResponse->NextMessageToken;
    my $RequestMessageId = $SendMessageResponse->RequestMessageId;

    # Returns a L<Paws::QConnect::SendMessageResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wisdom/SendMessage>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssistantId => Str

The identifier of the Amazon Q in Connect assistant.



=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If not provided, the AWS SDK populates this
field.For more information about idempotency, see Making retries safe
with idempotent APIs.



=head2 Configuration => L<Paws::QConnect::MessageConfiguration>

The configuration of the SendMessage
(https://docs.aws.amazon.com/connect/latest/APIReference/API_amazon-q-connect_SendMessage.html)
request.



=head2 ConversationContext => L<Paws::QConnect::ConversationContext>

The conversation context before the Amazon Q in Connect session.



=head2 B<REQUIRED> Message => L<Paws::QConnect::MessageInput>

The message data to submit to the Amazon Q in Connect session.



=head2 B<REQUIRED> SessionId => Str

The identifier of the Amazon Q in Connect session.



=head2 B<REQUIRED> Type => Str

The message type.

Valid values are: C<"TEXT">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SendMessage in L<Paws::QConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

