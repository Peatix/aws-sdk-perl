
package Paws::QBusiness::Chat;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'clientToken');
  has ConversationId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'conversationId');
  has InputStream => (is => 'ro', isa => 'Paws::QBusiness::ChatInputStream', traits => ['NameInRequest'], request_name => 'inputStream');
  has ParentMessageId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'parentMessageId');
  has UserGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'userGroups');
  has UserId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'userId');

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'InputStream');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'Chat');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/conversations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QBusiness::ChatOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::Chat - Arguments for method Chat on L<Paws::QBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method Chat on the
L<QBusiness|Paws::QBusiness> service. Use the attributes of this class
as arguments to method Chat.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to Chat.

=head1 SYNOPSIS

    my $qbusiness = Paws->service('QBusiness');
    my $ChatOutput = $qbusiness->Chat(
      ApplicationId  => 'MyApplicationId',
      ClientToken    => 'MyClientToken',       # OPTIONAL
      ConversationId => 'MyConversationId',    # OPTIONAL
      InputStream    => {
        ActionExecutionEvent => {
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
        AttachmentEvent => {
          Attachment => {
            CopyFrom => {
              Conversation => {
                AttachmentId   => 'MyAttachmentId',
                ConversationId => 'MyConversationId',    # min: 36, max: 36

              },    # OPTIONAL
            },    # OPTIONAL
            Data => 'BlobBlob',            # OPTIONAL
            Name => 'MyAttachmentName',    # min: 1, max: 1000; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        AuthChallengeResponseEvent => {
          ResponseMap => {
            'MyAuthResponseKey' => 'MyAuthResponseValue'
            ,    # key: min: 1, max: 100, value: min: 1, max: 2048
          },

        },    # OPTIONAL
        ConfigurationEvent => {
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
                StringValue => 'MyDocumentAttributeValueStringValueString'
                ,     # max: 2048; OPTIONAL
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
                StringValue => 'MyDocumentAttributeValueStringValueString'
                ,     # max: 2048; OPTIONAL
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
                StringValue => 'MyDocumentAttributeValueStringValueString'
                ,     # max: 2048; OPTIONAL
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
                StringValue => 'MyDocumentAttributeValueStringValueString'
                ,     # max: 2048; OPTIONAL
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
                StringValue => 'MyDocumentAttributeValueStringValueString'
                ,     # max: 2048; OPTIONAL
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
                StringValue => 'MyDocumentAttributeValueStringValueString'
                ,     # max: 2048; OPTIONAL
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
                StringValue => 'MyDocumentAttributeValueStringValueString'
                ,     # max: 2048; OPTIONAL
              },

            },    # OPTIONAL
            NotFilter    => <AttributeFilter>,
            OrAllFilters => [ <AttributeFilter>, ... ],    # OPTIONAL
          },    # OPTIONAL
          ChatMode => 'RETRIEVAL_MODE'
          ,     # values: RETRIEVAL_MODE, CREATOR_MODE, PLUGIN_MODE; OPTIONAL
          ChatModeConfiguration => {
            PluginConfiguration => {
              PluginId => 'MyPluginId',    # min: 36, max: 36

            },    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        EndOfInputEvent => {

        },    # OPTIONAL
        TextEvent => {
          UserMessage => 'MyUserMessage',

        },    # OPTIONAL
      },    # OPTIONAL
      ParentMessageId => 'MyMessageId',    # OPTIONAL
      UserGroups      => [
        'MyString', ...                    # min: 1, max: 2048
      ],    # OPTIONAL
      UserId => 'MyUserId',    # OPTIONAL
    );

    # Results:
    my $OutputStream = $ChatOutput->OutputStream;

    # Returns a L<Paws::QBusiness::ChatOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/qbusiness/Chat>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The identifier of the Amazon Q Business application linked to a
streaming Amazon Q Business conversation.



=head2 ClientToken => Str

A token that you provide to identify the chat input.



=head2 ConversationId => Str

The identifier of the Amazon Q Business conversation.



=head2 InputStream => L<Paws::QBusiness::ChatInputStream>

The streaming input for the C<Chat> API.



=head2 ParentMessageId => Str

The identifier used to associate a user message with a AI generated
response.



=head2 UserGroups => ArrayRef[Str|Undef]

The group names that a user associated with the chat input belongs to.



=head2 UserId => Str

The identifier of the user attached to the chat input.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method Chat in L<Paws::QBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

