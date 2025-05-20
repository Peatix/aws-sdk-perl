
package Paws::BedrockAgentRuntime::InvokeAgent;
  use Moose;
  has AgentAliasId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'agentAliasId', required => 1);
  has AgentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'agentId', required => 1);
  has BedrockModelConfigurations => (is => 'ro', isa => 'Paws::BedrockAgentRuntime::BedrockModelConfigurations', traits => ['NameInRequest'], request_name => 'bedrockModelConfigurations');
  has EnableTrace => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'enableTrace');
  has EndSession => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'endSession');
  has InputText => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'inputText');
  has MemoryId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'memoryId');
  has SessionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'sessionId', required => 1);
  has SessionState => (is => 'ro', isa => 'Paws::BedrockAgentRuntime::SessionState', traits => ['NameInRequest'], request_name => 'sessionState');
  has SourceArn => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-source-arn');
  has StreamingConfigurations => (is => 'ro', isa => 'Paws::BedrockAgentRuntime::StreamingConfigurations', traits => ['NameInRequest'], request_name => 'streamingConfigurations');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'InvokeAgent');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/agents/{agentId}/agentAliases/{agentAliasId}/sessions/{sessionId}/text');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockAgentRuntime::InvokeAgentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgentRuntime::InvokeAgent - Arguments for method InvokeAgent on L<Paws::BedrockAgentRuntime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method InvokeAgent on the
L<Agents for Amazon Bedrock Runtime|Paws::BedrockAgentRuntime> service. Use the attributes of this class
as arguments to method InvokeAgent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to InvokeAgent.

=head1 SYNOPSIS

    my $bedrock-agent-runtime = Paws->service('BedrockAgentRuntime');
    my $InvokeAgentResponse = $bedrock -agent-runtime->InvokeAgent(
      AgentAliasId               => 'MyAgentAliasId',
      AgentId                    => 'MyAgentId',
      SessionId                  => 'MySessionId',
      BedrockModelConfigurations => {
        PerformanceConfig => {
          Latency => 'standard',    # values: standard, optimized; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      EnableTrace  => 1,                # OPTIONAL
      EndSession   => 1,                # OPTIONAL
      InputText    => 'MyInputText',    # OPTIONAL
      MemoryId     => 'MyMemoryId',     # OPTIONAL
      SessionState => {
        ConversationHistory => {
          Messages => [
            {
              Content => [
                {
                  Text => 'MyString',    # OPTIONAL
                },
                ...
              ],
              Role => 'user',            # values: user, assistant

            },
            ...
          ],    # OPTIONAL
        },    # OPTIONAL
        Files => [
          {
            Name   => 'MyString',    # OPTIONAL
            Source => {
              SourceType  => 'S3',    # values: S3, BYTE_CONTENT
              ByteContent => {
                Data      => 'BlobByteContentBlob',    # min: 1, max: 10485760
                MediaType => 'MyMimeType',

              },    # OPTIONAL
              S3Location => {
                Uri => 'MyS3Uri',    # min: 1, max: 1024

              },    # OPTIONAL
            },
            UseCase => 'CODE_INTERPRETER',    # values: CODE_INTERPRETER, CHAT

          },
          ...
        ],    # OPTIONAL
        InvocationId                => 'MyString',    # OPTIONAL
        KnowledgeBaseConfigurations => [
          {
            KnowledgeBaseId        => 'MyKnowledgeBaseId',    # max: 10
            RetrievalConfiguration => {
              VectorSearchConfiguration => {
                Filter => {
                  AndAll => [ <RetrievalFilter>, ... ],    # min: 2; OPTIONAL
                  Equals => {
                    Key   => 'MyFilterKey',                # min: 1, max: 100
                    Value => {

                    },

                  },    # OPTIONAL
                  GreaterThan => {
                    Key   => 'MyFilterKey',    # min: 1, max: 100
                    Value => {

                    },

                  },    # OPTIONAL
                  GreaterThanOrEquals => {
                    Key   => 'MyFilterKey',    # min: 1, max: 100
                    Value => {

                    },

                  },    # OPTIONAL
                  In => {
                    Key   => 'MyFilterKey',    # min: 1, max: 100
                    Value => {

                    },

                  },    # OPTIONAL
                  LessThan => {
                    Key   => 'MyFilterKey',    # min: 1, max: 100
                    Value => {

                    },

                  },    # OPTIONAL
                  LessThanOrEquals => {
                    Key   => 'MyFilterKey',    # min: 1, max: 100
                    Value => {

                    },

                  },    # OPTIONAL
                  ListContains => {
                    Key   => 'MyFilterKey',    # min: 1, max: 100
                    Value => {

                    },

                  },    # OPTIONAL
                  NotEquals => {
                    Key   => 'MyFilterKey',    # min: 1, max: 100
                    Value => {

                    },

                  },    # OPTIONAL
                  NotIn => {
                    Key   => 'MyFilterKey',    # min: 1, max: 100
                    Value => {

                    },

                  },    # OPTIONAL
                  OrAll      => [ <RetrievalFilter>, ... ],   # min: 2; OPTIONAL
                  StartsWith => {
                    Key   => 'MyFilterKey',                   # min: 1, max: 100
                    Value => {

                    },

                  },    # OPTIONAL
                  StringContains => {
                    Key   => 'MyFilterKey',    # min: 1, max: 100
                    Value => {

                    },

                  },    # OPTIONAL
                },    # OPTIONAL
                ImplicitFilterConfiguration => {
                  MetadataAttributes => [
                    {
                      Description =>
                        'MyMetadataAttributeSchemaDescriptionString'
                      ,    # min: 1, max: 1024
                      Key =>
                        'MyMetadataAttributeSchemaKeyString', # min: 1, max: 256
                      Type =>
                        'STRING', # values: STRING, NUMBER, BOOLEAN, STRING_LIST

                    },
                    ...
                  ],    # min: 1, max: 25
                  ModelArn => 'MyBedrockModelArn',    # min: 1, max: 2048

                },    # OPTIONAL
                NumberOfResults    => 1,    # min: 1, max: 100; OPTIONAL
                OverrideSearchType =>
                  'HYBRID',                 # values: HYBRID, SEMANTIC; OPTIONAL
                RerankingConfiguration => {
                  Type =>
                    'BEDROCK_RERANKING_MODEL', # values: BEDROCK_RERANKING_MODEL
                  BedrockRerankingConfiguration => {
                    ModelConfiguration => {
                      ModelArn =>
                        'MyBedrockRerankingModelArn',    # min: 1, max: 2048
                      AdditionalModelRequestFields => {
                        'MyAdditionalModelRequestFieldsKey' => {

                        },                               # key: min: 1, max: 100
                      },    # OPTIONAL
                    },
                    MetadataConfiguration => {
                      SelectionMode => 'SELECTIVE',    # values: SELECTIVE, ALL
                      SelectiveModeConfiguration => {
                        FieldsToExclude => [
                          {
                            FieldName => 'MyFieldForRerankingFieldNameString'
                            ,    # min: 1, max: 2000

                          },
                          ...
                        ],    # min: 1, max: 100; OPTIONAL
                        FieldsToInclude => [
                          {
                            FieldName => 'MyFieldForRerankingFieldNameString'
                            ,    # min: 1, max: 2000

                          },
                          ...
                        ],    # min: 1, max: 100; OPTIONAL
                      },    # OPTIONAL
                    },    # OPTIONAL
                    NumberOfRerankedResults => 1,   # min: 1, max: 100; OPTIONAL
                  },    # OPTIONAL
                },    # OPTIONAL
              },

            },

          },
          ...
        ],    # min: 1; OPTIONAL
        PromptSessionAttributes => {
          'MyString' => 'MyString',    # key: OPTIONAL, value: OPTIONAL
        },    # OPTIONAL
        ReturnControlInvocationResults => [
          {
            ApiResult => {
              ActionGroup       => 'MyString',     # OPTIONAL
              AgentId           => 'MyString',     # OPTIONAL
              ApiPath           => 'MyApiPath',    # OPTIONAL
              ConfirmationState => 'CONFIRM',  # values: CONFIRM, DENY; OPTIONAL
              HttpMethod        => 'MyString', # OPTIONAL
              HttpStatusCode    => 1,          # OPTIONAL
              ResponseBody      => {
                'MyString' => {
                  Body   => 'MyString',        # OPTIONAL
                  Images => [
                    {
                      Format => 'png',         # values: png, jpeg, gif, webp
                      Source => {
                        Bytes =>
                          'BlobImageInputSourceBytesBlob',    # min: 1; OPTIONAL
                      },

                    },
                    ...
                  ],    # OPTIONAL
                },    # key: OPTIONAL
              },    # OPTIONAL
              ResponseState => 'FAILURE',  # values: FAILURE, REPROMPT; OPTIONAL
            },    # OPTIONAL
            FunctionResult => {
              ActionGroup       => 'MyString', # OPTIONAL
              AgentId           => 'MyString', # OPTIONAL
              ConfirmationState => 'CONFIRM',  # values: CONFIRM, DENY; OPTIONAL
              Function          => 'MyString', # OPTIONAL
              ResponseBody      => {
                'MyString' => {
                  Body   => 'MyString',        # OPTIONAL
                  Images => [
                    {
                      Format => 'png',         # values: png, jpeg, gif, webp
                      Source => {
                        Bytes =>
                          'BlobImageInputSourceBytesBlob',    # min: 1; OPTIONAL
                      },

                    },
                    ...
                  ],    # OPTIONAL
                },    # key: OPTIONAL
              },    # OPTIONAL
              ResponseState => 'FAILURE',  # values: FAILURE, REPROMPT; OPTIONAL
            },    # OPTIONAL
          },
          ...
        ],    # min: 1, max: 5; OPTIONAL
        SessionAttributes => {
          'MyString' => 'MyString',    # key: OPTIONAL, value: OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      SourceArn               => 'MyAWSResourceARN',    # OPTIONAL
      StreamingConfigurations => {
        ApplyGuardrailInterval => 1,                    # min: 1; OPTIONAL
        StreamFinalResponse    => 1,
      },    # OPTIONAL
    );

    # Results:
    my $Completion  = $InvokeAgentResponse->Completion;
    my $ContentType = $InvokeAgentResponse->ContentType;
    my $MemoryId    = $InvokeAgentResponse->MemoryId;
    my $SessionId   = $InvokeAgentResponse->SessionId;

    # Returns a L<Paws::BedrockAgentRuntime::InvokeAgentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime/InvokeAgent>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AgentAliasId => Str

The alias of the agent to use.



=head2 B<REQUIRED> AgentId => Str

The unique identifier of the agent to use.



=head2 BedrockModelConfigurations => L<Paws::BedrockAgentRuntime::BedrockModelConfigurations>

Model performance settings for the request.



=head2 EnableTrace => Bool

Specifies whether to turn on the trace or not to track the agent's
reasoning process. For more information, see Trace enablement
(https://docs.aws.amazon.com/bedrock/latest/userguide/agents-test.html#trace-events).



=head2 EndSession => Bool

Specifies whether to end the session with the agent or not.



=head2 InputText => Str

The prompt text to send the agent.

If you include C<returnControlInvocationResults> in the C<sessionState>
field, the C<inputText> field will be ignored.



=head2 MemoryId => Str

The unique identifier of the agent memory.



=head2 B<REQUIRED> SessionId => Str

The unique identifier of the session. Use the same value across
requests to continue the same conversation.



=head2 SessionState => L<Paws::BedrockAgentRuntime::SessionState>

Contains parameters that specify various attributes of the session. For
more information, see Control session context
(https://docs.aws.amazon.com/bedrock/latest/userguide/agents-session-state.html).

If you include C<returnControlInvocationResults> in the C<sessionState>
field, the C<inputText> field will be ignored.



=head2 SourceArn => Str

The ARN of the resource making the request.



=head2 StreamingConfigurations => L<Paws::BedrockAgentRuntime::StreamingConfigurations>

Specifies the configurations for streaming.

To use agent streaming, you need permissions to perform the
C<bedrock:InvokeModelWithResponseStream> action.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method InvokeAgent in L<Paws::BedrockAgentRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

