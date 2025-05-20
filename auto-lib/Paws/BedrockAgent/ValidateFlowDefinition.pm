
package Paws::BedrockAgent::ValidateFlowDefinition;
  use Moose;
  has Definition => (is => 'ro', isa => 'Paws::BedrockAgent::FlowDefinition', traits => ['NameInRequest'], request_name => 'definition', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ValidateFlowDefinition');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/flows/validate-definition');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockAgent::ValidateFlowDefinitionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::ValidateFlowDefinition - Arguments for method ValidateFlowDefinition on L<Paws::BedrockAgent>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ValidateFlowDefinition on the
L<Agents for Amazon Bedrock|Paws::BedrockAgent> service. Use the attributes of this class
as arguments to method ValidateFlowDefinition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ValidateFlowDefinition.

=head1 SYNOPSIS

    my $bedrock-agent = Paws->service('BedrockAgent');
    my $ValidateFlowDefinitionResponse =
      $bedrock -agent->ValidateFlowDefinition(
      Definition => {
        Connections => [
          {
            Name          => 'MyFlowConnectionName',
            Source        => 'MyFlowNodeName',
            Target        => 'MyFlowNodeName',
            Type          => 'Data',                 # values: Data, Conditional
            Configuration => {
              Conditional => {
                Condition => 'MyFlowConditionName',

              },                                     # OPTIONAL
              Data => {
                SourceOutput => 'MyFlowNodeOutputName',
                TargetInput  => 'MyFlowNodeInputName',

              },                                     # OPTIONAL
            },    # OPTIONAL
          },
          ...
        ],    # max: 20; OPTIONAL
        Nodes => [
          {
            Name => 'MyFlowNodeName',
            Type => 'Input'
            , # values: Input, Output, KnowledgeBase, Condition, Lex, Prompt, LambdaFunction, Storage, Agent, Retrieval, Iterator, Collector, InlineCode, Loop, LoopInput, LoopController
            Configuration => {
              Agent => {
                AgentAliasArn => 'MyAgentAliasArn',    # max: 2048

              },    # OPTIONAL
              Collector => {

              },    # OPTIONAL
              Condition => {
                Conditions => [
                  {
                    Name       => 'MyFlowConditionName',
                    Expression =>
                      'MyFlowConditionExpression',   # min: 1, max: 64; OPTIONAL
                  },
                  ...
                ],    # min: 1, max: 5

              },    # OPTIONAL
              InlineCode => {
                Code     => 'MyInlineCode',    # min: 1, max: 5000000
                Language => 'Python_3',        # values: Python_3

              },    # OPTIONAL
              Input => {

              },    # OPTIONAL
              Iterator => {

              },    # OPTIONAL
              KnowledgeBase => {
                KnowledgeBaseId        => 'MyKnowledgeBaseId',    # max: 10
                GuardrailConfiguration => {
                  GuardrailIdentifier =>
                    'MyGuardrailIdentifier',    # max: 2048; OPTIONAL
                  GuardrailVersion => 'MyGuardrailVersion',    # OPTIONAL
                },    # OPTIONAL
                InferenceConfiguration => {
                  Text => {
                    MaxTokens     => 1,                      # OPTIONAL
                    StopSequences => [ 'MyString', ... ],    # max: 4; OPTIONAL
                    Temperature   => 1.0,                    # max: 1; OPTIONAL
                    TopP          => 1.0,                    # max: 1; OPTIONAL
                  },    # OPTIONAL
                },    # OPTIONAL
                ModelId => 'MyKnowledgeBaseModelIdentifier'
                ,     # min: 1, max: 2048; OPTIONAL
                NumberOfResults            => 1,    # min: 1, max: 100; OPTIONAL
                OrchestrationConfiguration => {
                  AdditionalModelRequestFields => {
                    'MyAdditionalModelRequestFieldsKey' => {

                    },    # key: min: 1, max: 100
                  },    # OPTIONAL
                  InferenceConfig => {
                    Text => {
                      MaxTokens     => 1,                     # OPTIONAL
                      StopSequences => [ 'MyString', ... ],   # max: 4; OPTIONAL
                      Temperature   => 1.0,                   # max: 1; OPTIONAL
                      TopP          => 1.0,                   # max: 1; OPTIONAL
                    },    # OPTIONAL
                  },    # OPTIONAL
                  PerformanceConfig => {
                    Latency =>
                      'standard',    # values: standard, optimized; OPTIONAL
                  },    # OPTIONAL
                  PromptTemplate => {
                    TextPromptTemplate => 'MyKnowledgeBaseTextPrompt'
                    ,    # min: 1, max: 100000; OPTIONAL
                  },    # OPTIONAL
                },    # OPTIONAL
                PromptTemplate => {
                  TextPromptTemplate =>
                    'MyKnowledgeBaseTextPrompt', # min: 1, max: 100000; OPTIONAL
                },    # OPTIONAL
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
              },    # OPTIONAL
              LambdaFunction => {
                LambdaArn => 'MyLambdaArn',    # max: 2048

              },    # OPTIONAL
              Lex => {
                BotAliasArn => 'MyLexBotAliasArn',    # max: 78
                LocaleId    => 'MyLexBotLocaleId',    # min: 1, max: 10

              },    # OPTIONAL
              Loop => {
                Definition => <FlowDefinition>,

              },    # OPTIONAL
              LoopController => {
                ContinueCondition => {
                  Name       => 'MyFlowConditionName',
                  Expression =>
                    'MyFlowConditionExpression',    # min: 1, max: 64; OPTIONAL
                },
                MaxIterations => 1,    # min: 1, max: 1000; OPTIONAL
              },    # OPTIONAL
              LoopInput => {

              },    # OPTIONAL
              Output => {

              },    # OPTIONAL
              Prompt => {
                SourceConfiguration => {
                  Inline => {
                    ModelId => 'MyPromptModelIdentifier',    # min: 1, max: 2048
                    TemplateConfiguration => {
                      Chat => {
                        Messages => [
                          {
                            Content => [
                              {
                                CachePoint => {
                                  Type => 'default',    # values: default

                                },    # OPTIONAL
                                Text => 'MyString',
                              },
                              ...
                            ],
                            Role => 'user',    # values: user, assistant

                          },
                          ...
                        ],
                        InputVariables => [
                          {
                            Name => 'MyPromptInputVariableName',    # OPTIONAL
                          },
                          ...
                        ],    # max: 20; OPTIONAL
                        System => [
                          {
                            CachePoint => {
                              Type => 'default',    # values: default

                            },    # OPTIONAL
                            Text => 'MyNonEmptyString',    # min: 1; OPTIONAL
                          },
                          ...
                        ],    # OPTIONAL
                        ToolConfiguration => {
                          Tools => [
                            {
                              CachePoint => {
                                Type => 'default',    # values: default

                              },    # OPTIONAL
                              ToolSpec => {
                                InputSchema => {
                                  Json => {

                                  },    # OPTIONAL
                                },
                                Name        => 'MyToolName',   # min: 1, max: 64
                                Description =>
                                  'MyNonEmptyString',    # min: 1; OPTIONAL
                              },    # OPTIONAL
                            },
                            ...
                          ],    # min: 1
                          ToolChoice => {
                            Any => {

                            },    # OPTIONAL
                            Auto => {

                            },    # OPTIONAL
                            Tool => {
                              Name => 'MyToolName',    # min: 1, max: 64

                            },    # OPTIONAL
                          },    # OPTIONAL
                        },    # OPTIONAL
                      },    # OPTIONAL
                      Text => {
                        Text       => 'MyTextPrompt',    # min: 1
                        CachePoint => {
                          Type => 'default',             # values: default

                        },    # OPTIONAL
                        InputVariables => [
                          {
                            Name => 'MyPromptInputVariableName',    # OPTIONAL
                          },
                          ...
                        ],    # max: 20; OPTIONAL
                      },    # OPTIONAL
                    },
                    TemplateType                 => 'TEXT', # values: TEXT, CHAT
                    AdditionalModelRequestFields => {

                    },                                      # OPTIONAL
                    InferenceConfiguration => {
                      Text => {
                        MaxTokens     => 1,                   # OPTIONAL
                        StopSequences => [ 'MyString', ... ], # max: 4; OPTIONAL
                        Temperature   => 1.0,                 # max: 1; OPTIONAL
                        TopP          => 1.0,                 # max: 1; OPTIONAL
                      },    # OPTIONAL
                    },    # OPTIONAL
                  },    # OPTIONAL
                  Resource => {
                    PromptArn => 'MyPromptArn',

                  },    # OPTIONAL
                },
                GuardrailConfiguration => {
                  GuardrailIdentifier =>
                    'MyGuardrailIdentifier',    # max: 2048; OPTIONAL
                  GuardrailVersion => 'MyGuardrailVersion',    # OPTIONAL
                },    # OPTIONAL
              },    # OPTIONAL
              Retrieval => {
                ServiceConfiguration => {
                  S3 => {
                    BucketName => 'MyS3BucketName',    # min: 3, max: 63

                  },    # OPTIONAL
                },

              },    # OPTIONAL
              Storage => {
                ServiceConfiguration => {
                  S3 => {
                    BucketName => 'MyS3BucketName',    # min: 3, max: 63

                  },    # OPTIONAL
                },

              },    # OPTIONAL
            },    # OPTIONAL
            Inputs => [
              {
                Expression => 'MyFlowNodeInputExpression',    # min: 1, max: 64
                Name       => 'MyFlowNodeInputName',
                Type       =>
                  'String',    # values: String, Number, Boolean, Object, Array
                Category => 'LoopCondition'
                , # values: LoopCondition, ReturnValueToLoopStart, ExitLoop; OPTIONAL
              },
              ...
            ],    # max: 20; OPTIONAL
            Outputs => [
              {
                Name => 'MyFlowNodeOutputName',
                Type =>
                  'String',    # values: String, Number, Boolean, Object, Array

              },
              ...
            ],    # max: 5; OPTIONAL
          },
          ...
        ],    # max: 40; OPTIONAL
      },

      );

    # Results:
    my $Validations = $ValidateFlowDefinitionResponse->Validations;

    # Returns a L<Paws::BedrockAgent::ValidateFlowDefinitionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-agent/ValidateFlowDefinition>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Definition => L<Paws::BedrockAgent::FlowDefinition>

The definition of a flow to validate.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ValidateFlowDefinition in L<Paws::BedrockAgent>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

