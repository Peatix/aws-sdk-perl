
package Paws::BedrockAgentRuntime::RetrieveAndGenerateStream;
  use Moose;
  has Input => (is => 'ro', isa => 'Paws::BedrockAgentRuntime::RetrieveAndGenerateInput', traits => ['NameInRequest'], request_name => 'input', required => 1);
  has RetrieveAndGenerateConfiguration => (is => 'ro', isa => 'Paws::BedrockAgentRuntime::RetrieveAndGenerateConfiguration', traits => ['NameInRequest'], request_name => 'retrieveAndGenerateConfiguration');
  has SessionConfiguration => (is => 'ro', isa => 'Paws::BedrockAgentRuntime::RetrieveAndGenerateSessionConfiguration', traits => ['NameInRequest'], request_name => 'sessionConfiguration');
  has SessionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sessionId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RetrieveAndGenerateStream');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/retrieveAndGenerateStream');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockAgentRuntime::RetrieveAndGenerateStreamResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgentRuntime::RetrieveAndGenerateStream - Arguments for method RetrieveAndGenerateStream on L<Paws::BedrockAgentRuntime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RetrieveAndGenerateStream on the
L<Agents for Amazon Bedrock Runtime|Paws::BedrockAgentRuntime> service. Use the attributes of this class
as arguments to method RetrieveAndGenerateStream.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RetrieveAndGenerateStream.

=head1 SYNOPSIS

    my $bedrock-agent-runtime = Paws->service('BedrockAgentRuntime');
    my $RetrieveAndGenerateStreamResponse =
      $bedrock -agent-runtime->RetrieveAndGenerateStream(
      Input => {
        Text => 'MyRetrieveAndGenerateInputTextString',    # max: 1000

      },
      RetrieveAndGenerateConfiguration => {
        Type => 'KNOWLEDGE_BASE',    # values: KNOWLEDGE_BASE, EXTERNAL_SOURCES
        ExternalSourcesConfiguration => {
          ModelArn => 'MyBedrockModelArn',    # min: 1, max: 2048
          Sources  => [
            {
              SourceType  => 'S3',            # values: S3, BYTE_CONTENT
              ByteContent => {
                ContentType => 'MyContentType',
                Data        => 'BlobByteContentBlob',    # min: 1, max: 10485760
                Identifier  => 'MyIdentifier',           # min: 1, max: 1024

              },    # OPTIONAL
              S3Location => {
                Uri => 'MyS3Uri',    # min: 1, max: 1024

              },    # OPTIONAL
            },
            ...
          ],    # min: 1, max: 1
          GenerationConfiguration => {
            AdditionalModelRequestFields => {
              'MyAdditionalModelRequestFieldsKey' => {

              },    # key: min: 1, max: 100
            },    # OPTIONAL
            GuardrailConfiguration => {
              GuardrailId =>
                'MyGuardrailConfigurationGuardrailIdString',    # max: 64
              GuardrailVersion =>
                'MyGuardrailConfigurationGuardrailVersionString'
              ,                                                 # min: 1, max: 5

            },    # OPTIONAL
            InferenceConfig => {
              TextInferenceConfig => {
                MaxTokens     => 1,    # max: 65536; OPTIONAL
                StopSequences => [
                  'MyRAGStopSequencesMemberString', ...    # min: 1, max: 1000
                ],    # max: 4; OPTIONAL
                Temperature => 1.0,    # max: 1; OPTIONAL
                TopP        => 1.0,    # max: 1; OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
            PerformanceConfig => {
              Latency => 'standard',    # values: standard, optimized; OPTIONAL
            },    # OPTIONAL
            PromptTemplate => {
              TextPromptTemplate =>
                'MyTextPromptTemplate',    # min: 1, max: 4000; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        KnowledgeBaseConfiguration => {
          KnowledgeBaseId         => 'MyKnowledgeBaseId',    # max: 10
          ModelArn                => 'MyBedrockModelArn',    # min: 1, max: 2048
          GenerationConfiguration => {
            AdditionalModelRequestFields => {
              'MyAdditionalModelRequestFieldsKey' => {

              },    # key: min: 1, max: 100
            },    # OPTIONAL
            GuardrailConfiguration => {
              GuardrailId =>
                'MyGuardrailConfigurationGuardrailIdString',    # max: 64
              GuardrailVersion =>
                'MyGuardrailConfigurationGuardrailVersionString'
              ,                                                 # min: 1, max: 5

            },    # OPTIONAL
            InferenceConfig => {
              TextInferenceConfig => {
                MaxTokens     => 1,    # max: 65536; OPTIONAL
                StopSequences => [
                  'MyRAGStopSequencesMemberString', ...    # min: 1, max: 1000
                ],    # max: 4; OPTIONAL
                Temperature => 1.0,    # max: 1; OPTIONAL
                TopP        => 1.0,    # max: 1; OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
            PerformanceConfig => {
              Latency => 'standard',    # values: standard, optimized; OPTIONAL
            },    # OPTIONAL
            PromptTemplate => {
              TextPromptTemplate =>
                'MyTextPromptTemplate',    # min: 1, max: 4000; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          OrchestrationConfiguration => {
            AdditionalModelRequestFields => {
              'MyAdditionalModelRequestFieldsKey' => {

              },    # key: min: 1, max: 100
            },    # OPTIONAL
            InferenceConfig => {
              TextInferenceConfig => {
                MaxTokens     => 1,    # max: 65536; OPTIONAL
                StopSequences => [
                  'MyRAGStopSequencesMemberString', ...    # min: 1, max: 1000
                ],    # max: 4; OPTIONAL
                Temperature => 1.0,    # max: 1; OPTIONAL
                TopP        => 1.0,    # max: 1; OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
            PerformanceConfig => {
              Latency => 'standard',    # values: standard, optimized; OPTIONAL
            },    # OPTIONAL
            PromptTemplate => {
              TextPromptTemplate =>
                'MyTextPromptTemplate',    # min: 1, max: 4000; OPTIONAL
            },    # OPTIONAL
            QueryTransformationConfiguration => {
              Type => 'QUERY_DECOMPOSITION',    # values: QUERY_DECOMPOSITION

            },    # OPTIONAL
          },    # OPTIONAL
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
        },    # OPTIONAL
      },    # OPTIONAL
      SessionConfiguration => {
        KmsKeyArn => 'MyKmsKeyArn',    # min: 1, max: 2048

      },    # OPTIONAL
      SessionId => 'MySessionId',    # OPTIONAL
      );

    # Results:
    my $SessionId = $RetrieveAndGenerateStreamResponse->SessionId;
    my $Stream    = $RetrieveAndGenerateStreamResponse->Stream;

# Returns a L<Paws::BedrockAgentRuntime::RetrieveAndGenerateStreamResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime/RetrieveAndGenerateStream>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Input => L<Paws::BedrockAgentRuntime::RetrieveAndGenerateInput>

Contains the query to be made to the knowledge base.



=head2 RetrieveAndGenerateConfiguration => L<Paws::BedrockAgentRuntime::RetrieveAndGenerateConfiguration>

Contains configurations for the knowledge base query and retrieval
process. For more information, see Query configurations
(https://docs.aws.amazon.com/bedrock/latest/userguide/kb-test-config.html).



=head2 SessionConfiguration => L<Paws::BedrockAgentRuntime::RetrieveAndGenerateSessionConfiguration>

Contains details about the session with the knowledge base.



=head2 SessionId => Str

The unique identifier of the session. When you first make a
C<RetrieveAndGenerate> request, Amazon Bedrock automatically generates
this value. You must reuse this value for all subsequent requests in
the same conversational session. This value allows Amazon Bedrock to
maintain context and knowledge from previous interactions. You can't
explicitly set the C<sessionId> yourself.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RetrieveAndGenerateStream in L<Paws::BedrockAgentRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

