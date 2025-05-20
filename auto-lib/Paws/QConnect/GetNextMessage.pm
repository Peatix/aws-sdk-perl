
package Paws::QConnect::GetNextMessage;
  use Moose;
  has AssistantId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'assistantId', required => 1);
  has NextMessageToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextMessageToken', required => 1);
  has SessionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'sessionId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetNextMessage');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/assistants/{assistantId}/sessions/{sessionId}/messages/next');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QConnect::GetNextMessageResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::GetNextMessage - Arguments for method GetNextMessage on L<Paws::QConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetNextMessage on the
L<Amazon Q Connect|Paws::QConnect> service. Use the attributes of this class
as arguments to method GetNextMessage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetNextMessage.

=head1 SYNOPSIS

    my $wisdom = Paws->service('QConnect');
    my $GetNextMessageResponse = $wisdom->GetNextMessage(
      AssistantId      => 'MyUuidOrArn',
      NextMessageToken => 'MyNextToken',
      SessionId        => 'MyUuidOrArn',

    );

    # Results:
    my $ConversationSessionData =
      $GetNextMessageResponse->ConversationSessionData;
    my $ConversationState = $GetNextMessageResponse->ConversationState;
    my $NextMessageToken  = $GetNextMessageResponse->NextMessageToken;
    my $RequestMessageId  = $GetNextMessageResponse->RequestMessageId;
    my $Response          = $GetNextMessageResponse->Response;
    my $Type              = $GetNextMessageResponse->Type;

    # Returns a L<Paws::QConnect::GetNextMessageResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wisdom/GetNextMessage>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssistantId => Str

The identifier of the Amazon Q in Connect assistant.



=head2 B<REQUIRED> NextMessageToken => Str

The token for the next message. Use the value returned in the
SendMessage or previous response in the next request to retrieve the
next message.



=head2 B<REQUIRED> SessionId => Str

The identifier of the Amazon Q in Connect session.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetNextMessage in L<Paws::QConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

