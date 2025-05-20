
package Paws::QConnect::GetNextMessageResponse;
  use Moose;
  has ConversationSessionData => (is => 'ro', isa => 'ArrayRef[Paws::QConnect::RuntimeSessionData]', traits => ['NameInRequest'], request_name => 'conversationSessionData');
  has ConversationState => (is => 'ro', isa => 'Paws::QConnect::ConversationState', traits => ['NameInRequest'], request_name => 'conversationState', required => 1);
  has NextMessageToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextMessageToken');
  has RequestMessageId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'requestMessageId', required => 1);
  has Response => (is => 'ro', isa => 'Paws::QConnect::MessageOutput', traits => ['NameInRequest'], request_name => 'response', required => 1);
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::GetNextMessageResponse

=head1 ATTRIBUTES


=head2 ConversationSessionData => ArrayRef[L<Paws::QConnect::RuntimeSessionData>]

The conversation data stored on an Amazon Q in Connect Session.


=head2 B<REQUIRED> ConversationState => L<Paws::QConnect::ConversationState>

The state of current conversation.


=head2 NextMessageToken => Str

The token for the next message.


=head2 B<REQUIRED> RequestMessageId => Str

The identifier of the submitted message.


=head2 B<REQUIRED> Response => L<Paws::QConnect::MessageOutput>

The message response to the requested message.


=head2 B<REQUIRED> Type => Str

The type of message response.

Valid values are: C<"TEXT">
=head2 _request_id => Str


=cut

