
package Paws::QBusiness::ChatSync;
  use Moose;
  has ActionExecution => (is => 'ro', isa => 'Paws::QBusiness::ActionExecution', traits => ['NameInRequest'], request_name => 'actionExecution');
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has Attachments => (is => 'ro', isa => 'ArrayRef[Paws::QBusiness::AttachmentInput]', traits => ['NameInRequest'], request_name => 'attachments');
  has AttributeFilter => (is => 'ro', isa => 'Paws::QBusiness::AttributeFilter', traits => ['NameInRequest'], request_name => 'attributeFilter');
  has AuthChallengeResponse => (is => 'ro', isa => 'Paws::QBusiness::AuthChallengeResponse', traits => ['NameInRequest'], request_name => 'authChallengeResponse');
  has ChatMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'chatMode');
  has ChatModeConfiguration => (is => 'ro', isa => 'Paws::QBusiness::ChatModeConfiguration', traits => ['NameInRequest'], request_name => 'chatModeConfiguration');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has ConversationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'conversationId');
  has ParentMessageId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'parentMessageId');
  has UserGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'userGroups');
  has UserId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'userId');
  has UserMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'userMessage');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ChatSync');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/conversations?sync');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QBusiness::ChatSyncOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::ChatSync - Arguments for method ChatSync on L<Paws::QBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ChatSync on the
L<QBusiness|Paws::QBusiness> service. Use the attributes of this class
as arguments to method ChatSync.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ChatSync.

=head1 SYNOPSIS

    my $qbusiness = Paws->service('QBusiness');
    my $ChatSyncOutput = $qbusiness->ChatSync(
      ApplicationId   => 'MyApplicationId',
      ActionExecution => {
        Payload => {
          'MyActionPayloadFieldKey' => {
            Value => {

            },

          },    # key: min: 1
        },
        PayloadFieldNameSeparator =>
          'MyActionPayloadFieldNameSeparator',    # min: 1, max: 1
        PluginId => 'MyPluginId',                 # min: 36, max: 36

      },    # OPTIONAL
      Attachments => [
        {
          CopyFrom => {
            Conversation => {
              AttachmentId   => 'MyAttachmentId',
              ConversationId => 'MyConversationId',    # min: 36, max: 36

            },    # OPTIONAL
          },    # OPTIONAL
          Data => 'BlobBlob',            # OPTIONAL
          Name => 'MyAttachmentName',    # min: 1, max: 1000; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      AttributeFilter => {
        AndAllFilters => [ <AttributeFilter>, ... ],    # OPTIONAL
        ContainsAll   => {
          Name  => 'MyDocumentAttributeKey',            # min: 1, max: 200
          Value => {
            DateValue       => '1970-01-01T01:00:00',    # OPTIONAL
            LongValue       => 1,                        # OPTIONAL
            StringListValue => [
              'MyString', ...                            # min: 1, max: 2048
            ],    # OPTIONAL
            StringValue =>
              'MyDocumentAttributeValueStringValueString', # max: 2048; OPTIONAL
          },

        },    # OPTIONAL
        ContainsAny => {
          Name  => 'MyDocumentAttributeKey',    # min: 1, max: 200
          Value => {
            DateValue       => '1970-01-01T01:00:00',    # OPTIONAL
            LongValue       => 1,                        # OPTIONAL
            StringListValue => [
              'MyString', ...                            # min: 1, max: 2048
            ],    # OPTIONAL
            StringValue =>
              'MyDocumentAttributeValueStringValueString', # max: 2048; OPTIONAL
          },

        },    # OPTIONAL
        EqualsTo => {
          Name  => 'MyDocumentAttributeKey',    # min: 1, max: 200
          Value => {
            DateValue       => '1970-01-01T01:00:00',    # OPTIONAL
            LongValue       => 1,                        # OPTIONAL
            StringListValue => [
              'MyString', ...                            # min: 1, max: 2048
            ],    # OPTIONAL
            StringValue =>
              'MyDocumentAttributeValueStringValueString', # max: 2048; OPTIONAL
          },

        },    # OPTIONAL
        GreaterThan => {
          Name  => 'MyDocumentAttributeKey',    # min: 1, max: 200
          Value => {
            DateValue       => '1970-01-01T01:00:00',    # OPTIONAL
            LongValue       => 1,                        # OPTIONAL
            StringListValue => [
              'MyString', ...                            # min: 1, max: 2048
            ],    # OPTIONAL
            StringValue =>
              'MyDocumentAttributeValueStringValueString', # max: 2048; OPTIONAL
          },

        },    # OPTIONAL
        GreaterThanOrEquals => {
          Name  => 'MyDocumentAttributeKey',    # min: 1, max: 200
          Value => {
            DateValue       => '1970-01-01T01:00:00',    # OPTIONAL
            LongValue       => 1,                        # OPTIONAL
            StringListValue => [
              'MyString', ...                            # min: 1, max: 2048
            ],    # OPTIONAL
            StringValue =>
              'MyDocumentAttributeValueStringValueString', # max: 2048; OPTIONAL
          },

        },    # OPTIONAL
        LessThan => {
          Name  => 'MyDocumentAttributeKey',    # min: 1, max: 200
          Value => {
            DateValue       => '1970-01-01T01:00:00',    # OPTIONAL
            LongValue       => 1,                        # OPTIONAL
            StringListValue => [
              'MyString', ...                            # min: 1, max: 2048
            ],    # OPTIONAL
            StringValue =>
              'MyDocumentAttributeValueStringValueString', # max: 2048; OPTIONAL
          },

        },    # OPTIONAL
        LessThanOrEquals => {
          Name  => 'MyDocumentAttributeKey',    # min: 1, max: 200
          Value => {
            DateValue       => '1970-01-01T01:00:00',    # OPTIONAL
            LongValue       => 1,                        # OPTIONAL
            StringListValue => [
              'MyString', ...                            # min: 1, max: 2048
            ],    # OPTIONAL
            StringValue =>
              'MyDocumentAttributeValueStringValueString', # max: 2048; OPTIONAL
          },

        },    # OPTIONAL
        NotFilter    => <AttributeFilter>,
        OrAllFilters => [ <AttributeFilter>, ... ],    # OPTIONAL
      },    # OPTIONAL
      AuthChallengeResponse => {
        ResponseMap => {
          'MyAuthResponseKey' => 'MyAuthResponseValue'
          ,    # key: min: 1, max: 100, value: min: 1, max: 2048
        },

      },    # OPTIONAL
      ChatMode              => 'RETRIEVAL_MODE',    # OPTIONAL
      ChatModeConfiguration => {
        PluginConfiguration => {
          PluginId => 'MyPluginId',                 # min: 36, max: 36

        },    # OPTIONAL
      },    # OPTIONAL
      ClientToken     => 'MyClientToken',       # OPTIONAL
      ConversationId  => 'MyConversationId',    # OPTIONAL
      ParentMessageId => 'MyMessageId',         # OPTIONAL
      UserGroups      => [
        'MyString', ...                         # min: 1, max: 2048
      ],    # OPTIONAL
      UserId      => 'MyUserId',         # OPTIONAL
      UserMessage => 'MyUserMessage',    # OPTIONAL
    );

    # Results:
    my $ActionReview         = $ChatSyncOutput->ActionReview;
    my $AuthChallengeRequest = $ChatSyncOutput->AuthChallengeRequest;
    my $ConversationId       = $ChatSyncOutput->ConversationId;
    my $FailedAttachments    = $ChatSyncOutput->FailedAttachments;
    my $SourceAttributions   = $ChatSyncOutput->SourceAttributions;
    my $SystemMessage        = $ChatSyncOutput->SystemMessage;
    my $SystemMessageId      = $ChatSyncOutput->SystemMessageId;
    my $UserMessageId        = $ChatSyncOutput->UserMessageId;

    # Returns a L<Paws::QBusiness::ChatSyncOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/qbusiness/ChatSync>

=head1 ATTRIBUTES


=head2 ActionExecution => L<Paws::QBusiness::ActionExecution>

A request from an end user to perform an Amazon Q Business plugin
action.



=head2 B<REQUIRED> ApplicationId => Str

The identifier of the Amazon Q Business application linked to the
Amazon Q Business conversation.



=head2 Attachments => ArrayRef[L<Paws::QBusiness::AttachmentInput>]

A list of files uploaded directly during chat. You can upload a maximum
of 5 files of upto 10 MB each.



=head2 AttributeFilter => L<Paws::QBusiness::AttributeFilter>

Enables filtering of Amazon Q Business web experience responses based
on document attributes or metadata fields.



=head2 AuthChallengeResponse => L<Paws::QBusiness::AuthChallengeResponse>

An authentication verification event response by a third party
authentication server to Amazon Q Business.



=head2 ChatMode => Str

The C<chatMode> parameter determines the chat modes available to Amazon
Q Business users:

=over

=item *

C<RETRIEVAL_MODE> - If you choose this mode, Amazon Q generates
responses solely from the data sources connected and indexed by the
application. If an answer is not found in the data sources or there are
no data sources available, Amazon Q will respond with a "I<No Answer
Found>" message, unless LLM knowledge has been enabled. In that case,
Amazon Q will generate a response from the LLM knowledge

=item *

C<CREATOR_MODE> - By selecting this mode, you can choose to generate
responses only from the LLM knowledge. You can also attach files and
have Amazon Q generate a response based on the data in those files. If
the attached files do not contain an answer for the query, Amazon Q
will automatically fall back to generating a response from the LLM
knowledge.

=item *

C<PLUGIN_MODE> - By selecting this mode, users can choose to use
plugins in chat to get their responses.

=back

If none of the modes are selected, Amazon Q will only respond using the
information from the attached files.

For more information, see Admin controls and guardrails
(https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/guardrails.html),
Plugins
(https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/plugins.html),
and Response sources
(https://docs.aws.amazon.com/amazonq/latest/business-use-dg/using-web-experience.html#chat-source-scope).

Valid values are: C<"RETRIEVAL_MODE">, C<"CREATOR_MODE">, C<"PLUGIN_MODE">

=head2 ChatModeConfiguration => L<Paws::QBusiness::ChatModeConfiguration>

The chat mode configuration for an Amazon Q Business application.



=head2 ClientToken => Str

A token that you provide to identify a chat request.



=head2 ConversationId => Str

The identifier of the Amazon Q Business conversation.



=head2 ParentMessageId => Str

The identifier of the previous system message in a conversation.



=head2 UserGroups => ArrayRef[Str|Undef]

The group names that a user associated with the chat input belongs to.



=head2 UserId => Str

The identifier of the user attached to the chat input.



=head2 UserMessage => Str

A end user message in a conversation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ChatSync in L<Paws::QBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

