
package Paws::QBusiness::ChatSyncOutput;
  use Moose;
  has ActionReview => (is => 'ro', isa => 'Paws::QBusiness::ActionReview', traits => ['NameInRequest'], request_name => 'actionReview');
  has AuthChallengeRequest => (is => 'ro', isa => 'Paws::QBusiness::AuthChallengeRequest', traits => ['NameInRequest'], request_name => 'authChallengeRequest');
  has ConversationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'conversationId');
  has FailedAttachments => (is => 'ro', isa => 'ArrayRef[Paws::QBusiness::AttachmentOutput]', traits => ['NameInRequest'], request_name => 'failedAttachments');
  has SourceAttributions => (is => 'ro', isa => 'ArrayRef[Paws::QBusiness::SourceAttribution]', traits => ['NameInRequest'], request_name => 'sourceAttributions');
  has SystemMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'systemMessage');
  has SystemMessageId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'systemMessageId');
  has UserMessageId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'userMessageId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::ChatSyncOutput

=head1 ATTRIBUTES


=head2 ActionReview => L<Paws::QBusiness::ActionReview>

A request from Amazon Q Business to the end user for information Amazon
Q Business needs to successfully complete a requested plugin action.


=head2 AuthChallengeRequest => L<Paws::QBusiness::AuthChallengeRequest>

An authentication verification event activated by an end user request
to use a custom plugin.


=head2 ConversationId => Str

The identifier of the Amazon Q Business conversation.


=head2 FailedAttachments => ArrayRef[L<Paws::QBusiness::AttachmentOutput>]

A list of files which failed to upload during chat.


=head2 SourceAttributions => ArrayRef[L<Paws::QBusiness::SourceAttribution>]

The source documents used to generate the conversation response.


=head2 SystemMessage => Str

An AI-generated message in a conversation.


=head2 SystemMessageId => Str

The identifier of an Amazon Q Business AI generated message within the
conversation.


=head2 UserMessageId => Str

The identifier of an Amazon Q Business end user text input message
within the conversation.


=head2 _request_id => Str


=cut

