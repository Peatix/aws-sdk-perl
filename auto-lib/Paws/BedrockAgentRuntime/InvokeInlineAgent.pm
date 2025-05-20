
package Paws::BedrockAgentRuntime::InvokeInlineAgent;
  use Moose;
  has ActionGroups => (is => 'ro', isa => 'ArrayRef[Paws::BedrockAgentRuntime::AgentActionGroup]', traits => ['NameInRequest'], request_name => 'actionGroups');
  has AgentCollaboration => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'agentCollaboration');
  has AgentName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'agentName');
  has BedrockModelConfigurations => (is => 'ro', isa => 'Paws::BedrockAgentRuntime::InlineBedrockModelConfigurations', traits => ['NameInRequest'], request_name => 'bedrockModelConfigurations');
  has CollaboratorConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::BedrockAgentRuntime::CollaboratorConfiguration]', traits => ['NameInRequest'], request_name => 'collaboratorConfigurations');
  has Collaborators => (is => 'ro', isa => 'ArrayRef[Paws::BedrockAgentRuntime::Collaborator]', traits => ['NameInRequest'], request_name => 'collaborators');
  has CustomerEncryptionKeyArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'customerEncryptionKeyArn');
  has CustomOrchestration => (is => 'ro', isa => 'Paws::BedrockAgentRuntime::CustomOrchestration', traits => ['NameInRequest'], request_name => 'customOrchestration');
  has EnableTrace => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'enableTrace');
  has EndSession => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'endSession');
  has FoundationModel => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'foundationModel', required => 1);
  has GuardrailConfiguration => (is => 'ro', isa => 'Paws::BedrockAgentRuntime::GuardrailConfigurationWithArn', traits => ['NameInRequest'], request_name => 'guardrailConfiguration');
  has IdleSessionTTLInSeconds => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'idleSessionTTLInSeconds');
  has InlineSessionState => (is => 'ro', isa => 'Paws::BedrockAgentRuntime::InlineSessionState', traits => ['NameInRequest'], request_name => 'inlineSessionState');
  has InputText => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'inputText');
  has Instruction => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instruction', required => 1);
  has KnowledgeBases => (is => 'ro', isa => 'ArrayRef[Paws::BedrockAgentRuntime::KnowledgeBase]', traits => ['NameInRequest'], request_name => 'knowledgeBases');
  has OrchestrationType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'orchestrationType');
  has PromptOverrideConfiguration => (is => 'ro', isa => 'Paws::BedrockAgentRuntime::PromptOverrideConfiguration', traits => ['NameInRequest'], request_name => 'promptOverrideConfiguration');
  has SessionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'sessionId', required => 1);
  has StreamingConfigurations => (is => 'ro', isa => 'Paws::BedrockAgentRuntime::StreamingConfigurations', traits => ['NameInRequest'], request_name => 'streamingConfigurations');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'InvokeInlineAgent');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/agents/{sessionId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockAgentRuntime::InvokeInlineAgentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgentRuntime::InvokeInlineAgent - Arguments for method InvokeInlineAgent on L<Paws::BedrockAgentRuntime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method InvokeInlineAgent on the
L<Agents for Amazon Bedrock Runtime|Paws::BedrockAgentRuntime> service. Use the attributes of this class
as arguments to method InvokeInlineAgent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to InvokeInlineAgent.

=head1 SYNOPSIS

    my $bedrock-agent-runtime = Paws->service('BedrockAgentRuntime');
    my $InvokeInlineAgentResponse = $bedrock -agent-runtime->InvokeInlineAgent(
      FoundationModel => 'MyModelIdentifier',
      Instruction     => 'MyInstruction',
      SessionId       => 'MySessionId',
      ActionGroups    => [
        {
          ActionGroupName     => 'MyResourceName',
          ActionGroupExecutor => {
            CustomControl =>
              'RETURN_CONTROL',    # values: RETURN_CONTROL; OPTIONAL
            Lambda => 'MyLambdaResourceArn',    # max: 2048; OPTIONAL
          },    # OPTIONAL
          ApiSchema => {
            Payload => 'MyPayload',    # OPTIONAL
            S3      => {
              S3BucketName => 'MyS3BucketName',    # min: 3, max: 63; OPTIONAL
              S3ObjectKey  => 'MyS3ObjectKey',     # min: 1, max: 1024; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          Description => 'MyResourceDescription',   # min: 1, max: 200; OPTIONAL
          FunctionSchema => {
            Functions => [
              {
                Name        => 'MyResourceName',
                Description =>
                  'MyFunctionDescription',    # min: 1, max: 1200; OPTIONAL
                Parameters => {
                  'MyParameterName' => {
                    Type => 'string'
                    ,    # values: string, number, integer, boolean, array
                    Description =>
                      'MyParameterDescription',    # min: 1, max: 500; OPTIONAL
                    Required => 1,                 # OPTIONAL
                  },
                },    # OPTIONAL
                RequireConfirmation =>
                  'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
              },
              ...
            ],    # OPTIONAL
          },    # OPTIONAL
          ParentActionGroupSignature => 'AMAZON.UserInput'
          , # values: AMAZON.UserInput, AMAZON.CodeInterpreter, ANTHROPIC.Computer, ANTHROPIC.Bash, ANTHROPIC.TextEditor; OPTIONAL
          ParentActionGroupSignatureParams => {
            'MyActionGroupSignatureParamsKeyString' =>
              'MyActionGroupSignatureParamsValueString'
            ,    # key: max: 100, value: max: 100
          },    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      AgentCollaboration         => 'SUPERVISOR',    # OPTIONAL
      AgentName                  => 'MyName',        # OPTIONAL
      BedrockModelConfigurations => {
        PerformanceConfig => {
          Latency => 'standard',    # values: standard, optimized; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      CollaboratorConfigurations => [
        {
          CollaboratorInstruction =>
            'MyCollaborationInstruction',    # min: 1, max: 4000
          CollaboratorName         => 'MyName',
          AgentAliasArn            => 'MyAgentAliasArn',   # max: 2048; OPTIONAL
          RelayConversationHistory =>
            'TO_COLLABORATOR',    # values: TO_COLLABORATOR, DISABLED; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      Collaborators => [
        {
          FoundationModel => 'MyModelIdentifier',    # min: 1, max: 2048
          Instruction     => 'MyInstruction',        # min: 40
          ActionGroups    => [
            {
              ActionGroupName     => 'MyResourceName',
              ActionGroupExecutor => {
                CustomControl =>
                  'RETURN_CONTROL',    # values: RETURN_CONTROL; OPTIONAL
                Lambda => 'MyLambdaResourceArn',    # max: 2048; OPTIONAL
              },    # OPTIONAL
              ApiSchema => {
                Payload => 'MyPayload',    # OPTIONAL
                S3      => {
                  S3BucketName => 'MyS3BucketName',  # min: 3, max: 63; OPTIONAL
                  S3ObjectKey  => 'MyS3ObjectKey', # min: 1, max: 1024; OPTIONAL
                },    # OPTIONAL
              },    # OPTIONAL
              Description =>
                'MyResourceDescription',    # min: 1, max: 200; OPTIONAL
              FunctionSchema => {
                Functions => [
                  {
                    Name        => 'MyResourceName',
                    Description =>
                      'MyFunctionDescription',    # min: 1, max: 1200; OPTIONAL
                    Parameters => {
                      'MyParameterName' => {
                        Type => 'string'
                        ,    # values: string, number, integer, boolean, array
                        Description =>
                          'MyParameterDescription', # min: 1, max: 500; OPTIONAL
                        Required => 1,              # OPTIONAL
                      },
                    },    # OPTIONAL
                    RequireConfirmation =>
                      'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
                  },
                  ...
                ],    # OPTIONAL
              },    # OPTIONAL
              ParentActionGroupSignature => 'AMAZON.UserInput'
              , # values: AMAZON.UserInput, AMAZON.CodeInterpreter, ANTHROPIC.Computer, ANTHROPIC.Bash, ANTHROPIC.TextEditor; OPTIONAL
              ParentActionGroupSignatureParams => {
                'MyActionGroupSignatureParamsKeyString' =>
                  'MyActionGroupSignatureParamsValueString'
                ,    # key: max: 100, value: max: 100
              },    # OPTIONAL
            },
            ...
          ],
          AgentCollaboration =>
            'SUPERVISOR',    # values: SUPERVISOR, SUPERVISOR_ROUTER, DISABLED
          AgentName                  => 'MyName',
          CollaboratorConfigurations => [
            {
              CollaboratorInstruction =>
                'MyCollaborationInstruction',    # min: 1, max: 4000
              CollaboratorName => 'MyName',
              AgentAliasArn    => 'MyAgentAliasArn',    # max: 2048; OPTIONAL
              RelayConversationHistory =>
                'TO_COLLABORATOR', # values: TO_COLLABORATOR, DISABLED; OPTIONAL
            },
            ...
          ],
          CustomerEncryptionKeyArn =>
            'MyKmsKeyArn',    # min: 1, max: 2048; OPTIONAL
          GuardrailConfiguration => {
            GuardrailIdentifier => 'MyGuardrailIdentifierWithArn',   # max: 2048
            GuardrailVersion    => 'MyGuardrailVersion',    # min: 1, max: 5

          },    # OPTIONAL
          IdleSessionTTLInSeconds => 1,    # min: 60, max: 3600; OPTIONAL
          KnowledgeBases          => [
            {
              Description =>
                'MyResourceDescription',    # min: 1, max: 200; OPTIONAL
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
                    OrAll      => [ <RetrievalFilter>, ... ], # min: 2; OPTIONAL
                    StartsWith => {
                      Key   => 'MyFilterKey',                 # min: 1, max: 100
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
                        Key => 'MyMetadataAttributeSchemaKeyString'
                        ,    # min: 1, max: 256
                        Type => 'STRING'
                        ,    # values: STRING, NUMBER, BOOLEAN, STRING_LIST

                      },
                      ...
                    ],    # min: 1, max: 25
                    ModelArn => 'MyBedrockModelArn',    # min: 1, max: 2048

                  },    # OPTIONAL
                  NumberOfResults    => 1,    # min: 1, max: 100; OPTIONAL
                  OverrideSearchType =>
                    'HYBRID',    # values: HYBRID, SEMANTIC; OPTIONAL
                  RerankingConfiguration => {
                    Type => 'BEDROCK_RERANKING_MODEL'
                    ,            # values: BEDROCK_RERANKING_MODEL
                    BedrockRerankingConfiguration => {
                      ModelConfiguration => {
                        ModelArn =>
                          'MyBedrockRerankingModelArn',    # min: 1, max: 2048
                        AdditionalModelRequestFields => {
                          'MyAdditionalModelRequestFieldsKey' => {

                          },    # key: min: 1, max: 100
                        },    # OPTIONAL
                      },
                      MetadataConfiguration => {
                        SelectionMode => 'SELECTIVE',   # values: SELECTIVE, ALL
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
                      NumberOfRerankedResults => 1, # min: 1, max: 100; OPTIONAL
                    },    # OPTIONAL
                  },    # OPTIONAL
                },

              },    # OPTIONAL
            },
            ...
          ],    # OPTIONAL
          PromptOverrideConfiguration => {
            PromptConfigurations => [
              {
                AdditionalModelRequestFields => {

                },    # OPTIONAL
                BasePromptTemplate =>
                  'MyBasePromptTemplate',    # min: 1, max: 100000; OPTIONAL
                FoundationModel => 'MyModelIdentifier',    # min: 1, max: 2048
                InferenceConfiguration => {
                  MaximumLength => 1,                      # max: 8192; OPTIONAL
                  StopSequences => [ 'MyString', ... ],    # max: 4; OPTIONAL
                  Temperature   => 1.0,                    # max: 1; OPTIONAL
                  TopK          => 1,                      # max: 500; OPTIONAL
                  TopP          => 1.0,                    # max: 1; OPTIONAL
                },    # OPTIONAL
                ParserMode => 'DEFAULT', # values: DEFAULT, OVERRIDDEN; OPTIONAL
                PromptCreationMode =>
                  'DEFAULT',             # values: DEFAULT, OVERRIDDEN; OPTIONAL
                PromptState => 'ENABLED',  # values: ENABLED, DISABLED; OPTIONAL
                PromptType  => 'PRE_PROCESSING'
                , # values: PRE_PROCESSING, ORCHESTRATION, KNOWLEDGE_BASE_RESPONSE_GENERATION, POST_PROCESSING, ROUTING_CLASSIFIER; OPTIONAL
              },
              ...
            ],    # max: 10
            OverrideLambda => 'MyLambdaResourceArn',    # max: 2048; OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      CustomOrchestration => {
        Executor => {
          Lambda => 'MyLambdaArn',    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      CustomerEncryptionKeyArn => 'MyKmsKeyArn',    # OPTIONAL
      EnableTrace              => 1,                # OPTIONAL
      EndSession               => 1,                # OPTIONAL
      GuardrailConfiguration   => {
        GuardrailIdentifier => 'MyGuardrailIdentifierWithArn',  # max: 2048
        GuardrailVersion    => 'MyGuardrailVersion',            # min: 1, max: 5

      },    # OPTIONAL
      IdleSessionTTLInSeconds => 1,    # OPTIONAL
      InlineSessionState      => {
        ConversationHistory => {
          Messages => [
            {
              Content => [ { Text => 'MyString', }, ... ],
              Role    => 'user',    # values: user, assistant

            },
            ...
          ],    # OPTIONAL
        },    # OPTIONAL
        Files => [
          {
            Name   => 'MyString',
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
        InvocationId            => 'MyString',
        PromptSessionAttributes => { 'MyString' => 'MyString', },    # OPTIONAL
        ReturnControlInvocationResults => [
          {
            ApiResult => {
              ActionGroup       => 'MyString',
              AgentId           => 'MyString',
              ApiPath           => 'MyApiPath',    # OPTIONAL
              ConfirmationState => 'CONFIRM',  # values: CONFIRM, DENY; OPTIONAL
              HttpMethod        => 'MyString',
              HttpStatusCode    => 1,          # OPTIONAL
              ResponseBody      => {
                'MyString' => {
                  Body   => 'MyString',
                  Images => [
                    {
                      Format => 'png',    # values: png, jpeg, gif, webp
                      Source => {
                        Bytes =>
                          'BlobImageInputSourceBytesBlob',    # min: 1; OPTIONAL
                      },

                    },
                    ...
                  ],    # OPTIONAL
                },
              },    # OPTIONAL
              ResponseState => 'FAILURE',  # values: FAILURE, REPROMPT; OPTIONAL
            },    # OPTIONAL
            FunctionResult => {
              ActionGroup       => 'MyString',
              AgentId           => 'MyString',
              ConfirmationState => 'CONFIRM',  # values: CONFIRM, DENY; OPTIONAL
              Function          => 'MyString',
              ResponseBody      => {
                'MyString' => {
                  Body   => 'MyString',
                  Images => [
                    {
                      Format => 'png',    # values: png, jpeg, gif, webp
                      Source => {
                        Bytes =>
                          'BlobImageInputSourceBytesBlob',    # min: 1; OPTIONAL
                      },

                    },
                    ...
                  ],    # OPTIONAL
                },
              },    # OPTIONAL
              ResponseState => 'FAILURE',  # values: FAILURE, REPROMPT; OPTIONAL
            },    # OPTIONAL
          },
          ...
        ],    # min: 1, max: 5; OPTIONAL
        SessionAttributes => { 'MyString' => 'MyString', },    # OPTIONAL
      },    # OPTIONAL
      InputText      => 'MyInputText',    # OPTIONAL
      KnowledgeBases => [
        {
          Description => 'MyResourceDescription',   # min: 1, max: 200; OPTIONAL
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
                OrAll      => [ <RetrievalFilter>, ... ],    # min: 2; OPTIONAL
                StartsWith => {
                  Key   => 'MyFilterKey',                    # min: 1, max: 100
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
                    Description => 'MyMetadataAttributeSchemaDescriptionString'
                    ,    # min: 1, max: 1024
                    Key =>
                      'MyMetadataAttributeSchemaKeyString',   # min: 1, max: 256
                    Type =>
                      'STRING',   # values: STRING, NUMBER, BOOLEAN, STRING_LIST

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
                  'BEDROCK_RERANKING_MODEL',   # values: BEDROCK_RERANKING_MODEL
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
                  NumberOfRerankedResults => 1,    # min: 1, max: 100; OPTIONAL
                },    # OPTIONAL
              },    # OPTIONAL
            },

          },    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      OrchestrationType           => 'DEFAULT',    # OPTIONAL
      PromptOverrideConfiguration => {
        PromptConfigurations => [
          {
            AdditionalModelRequestFields => {

            },    # OPTIONAL
            BasePromptTemplate =>
              'MyBasePromptTemplate',    # min: 1, max: 100000; OPTIONAL
            FoundationModel        => 'MyModelIdentifier',   # min: 1, max: 2048
            InferenceConfiguration => {
              MaximumLength => 1,                      # max: 8192; OPTIONAL
              StopSequences => [ 'MyString', ... ],    # max: 4; OPTIONAL
              Temperature   => 1.0,                    # max: 1; OPTIONAL
              TopK          => 1,                      # max: 500; OPTIONAL
              TopP          => 1.0,                    # max: 1; OPTIONAL
            },    # OPTIONAL
            ParserMode => 'DEFAULT',    # values: DEFAULT, OVERRIDDEN; OPTIONAL
            PromptCreationMode =>
              'DEFAULT',                # values: DEFAULT, OVERRIDDEN; OPTIONAL
            PromptState => 'ENABLED',      # values: ENABLED, DISABLED; OPTIONAL
            PromptType  => 'PRE_PROCESSING'
            , # values: PRE_PROCESSING, ORCHESTRATION, KNOWLEDGE_BASE_RESPONSE_GENERATION, POST_PROCESSING, ROUTING_CLASSIFIER; OPTIONAL
          },
          ...
        ],    # max: 10
        OverrideLambda => 'MyLambdaResourceArn',    # max: 2048; OPTIONAL
      },    # OPTIONAL
      StreamingConfigurations => {
        ApplyGuardrailInterval => 1,    # min: 1; OPTIONAL
        StreamFinalResponse    => 1,    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $Completion  = $InvokeInlineAgentResponse->Completion;
    my $ContentType = $InvokeInlineAgentResponse->ContentType;
    my $SessionId   = $InvokeInlineAgentResponse->SessionId;

    # Returns a L<Paws::BedrockAgentRuntime::InvokeInlineAgentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime/InvokeInlineAgent>

=head1 ATTRIBUTES


=head2 ActionGroups => ArrayRef[L<Paws::BedrockAgentRuntime::AgentActionGroup>]

A list of action groups with each action group defining the action the
inline agent needs to carry out.



=head2 AgentCollaboration => Str

Defines how the inline collaborator agent handles information across
multiple collaborator agents to coordinate a final response. The inline
collaborator agent can also be the supervisor.

Valid values are: C<"SUPERVISOR">, C<"SUPERVISOR_ROUTER">, C<"DISABLED">

=head2 AgentName => Str

The name for the agent.



=head2 BedrockModelConfigurations => L<Paws::BedrockAgentRuntime::InlineBedrockModelConfigurations>

Model settings for the request.



=head2 CollaboratorConfigurations => ArrayRef[L<Paws::BedrockAgentRuntime::CollaboratorConfiguration>]

Settings for an inline agent collaborator called with InvokeInlineAgent
(https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeInlineAgent.html).



=head2 Collaborators => ArrayRef[L<Paws::BedrockAgentRuntime::Collaborator>]

List of collaborator inline agents.



=head2 CustomerEncryptionKeyArn => Str

The Amazon Resource Name (ARN) of the Amazon Web Services KMS key to
use to encrypt your inline agent.



=head2 CustomOrchestration => L<Paws::BedrockAgentRuntime::CustomOrchestration>

Contains details of the custom orchestration configured for the agent.



=head2 EnableTrace => Bool

Specifies whether to turn on the trace or not to track the agent's
reasoning process. For more information, see Using trace
(https://docs.aws.amazon.com/bedrock/latest/userguide/trace-events.html).



=head2 EndSession => Bool

Specifies whether to end the session with the inline agent or not.



=head2 B<REQUIRED> FoundationModel => Str

The model identifier (ID)
(https://docs.aws.amazon.com/bedrock/latest/userguide/model-ids.html#model-ids-arns)
of the model to use for orchestration by the inline agent. For example,
C<meta.llama3-1-70b-instruct-v1:0>.



=head2 GuardrailConfiguration => L<Paws::BedrockAgentRuntime::GuardrailConfigurationWithArn>

The guardrails
(https://docs.aws.amazon.com/bedrock/latest/userguide/guardrails.html)
to assign to the inline agent.



=head2 IdleSessionTTLInSeconds => Int

The number of seconds for which the inline agent should maintain
session information. After this time expires, the subsequent
C<InvokeInlineAgent> request begins a new session.

A user interaction remains active for the amount of time specified. If
no conversation occurs during this time, the session expires and the
data provided before the timeout is deleted.



=head2 InlineSessionState => L<Paws::BedrockAgentRuntime::InlineSessionState>

Parameters that specify the various attributes of a sessions. You can
include attributes for the session or prompt or, if you configured an
action group to return control, results from invocation of the action
group. For more information, see Control session context
(https://docs.aws.amazon.com/bedrock/latest/userguide/agents-session-state.html).

If you include C<returnControlInvocationResults> in the C<sessionState>
field, the C<inputText> field will be ignored.



=head2 InputText => Str

The prompt text to send to the agent.

If you include C<returnControlInvocationResults> in the C<sessionState>
field, the C<inputText> field will be ignored.



=head2 B<REQUIRED> Instruction => Str

The instructions that tell the inline agent what it should do and how
it should interact with users.



=head2 KnowledgeBases => ArrayRef[L<Paws::BedrockAgentRuntime::KnowledgeBase>]

Contains information of the knowledge bases to associate with.



=head2 OrchestrationType => Str

Specifies the type of orchestration strategy for the agent. This is set
to DEFAULT orchestration type, by default.

Valid values are: C<"DEFAULT">, C<"CUSTOM_ORCHESTRATION">

=head2 PromptOverrideConfiguration => L<Paws::BedrockAgentRuntime::PromptOverrideConfiguration>

Configurations for advanced prompts used to override the default
prompts to enhance the accuracy of the inline agent.



=head2 B<REQUIRED> SessionId => Str

The unique identifier of the session. Use the same value across
requests to continue the same conversation.



=head2 StreamingConfigurations => L<Paws::BedrockAgentRuntime::StreamingConfigurations>

Specifies the configurations for streaming.

To use agent streaming, you need permissions to perform the
C<bedrock:InvokeModelWithResponseStream> action.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method InvokeInlineAgent in L<Paws::BedrockAgentRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

