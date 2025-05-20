
package Paws::Bedrock::CreateEvaluationJob;
  use Moose;
  has ApplicationType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationType');
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken');
  has CustomerEncryptionKeyId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'customerEncryptionKeyId');
  has EvaluationConfig => (is => 'ro', isa => 'Paws::Bedrock::EvaluationConfig', traits => ['NameInRequest'], request_name => 'evaluationConfig', required => 1);
  has InferenceConfig => (is => 'ro', isa => 'Paws::Bedrock::EvaluationInferenceConfig', traits => ['NameInRequest'], request_name => 'inferenceConfig', required => 1);
  has JobDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobDescription');
  has JobName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobName', required => 1);
  has JobTags => (is => 'ro', isa => 'ArrayRef[Paws::Bedrock::Tag]', traits => ['NameInRequest'], request_name => 'jobTags');
  has OutputDataConfig => (is => 'ro', isa => 'Paws::Bedrock::EvaluationOutputDataConfig', traits => ['NameInRequest'], request_name => 'outputDataConfig', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEvaluationJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/evaluation-jobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Bedrock::CreateEvaluationJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::CreateEvaluationJob - Arguments for method CreateEvaluationJob on L<Paws::Bedrock>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateEvaluationJob on the
L<Amazon Bedrock|Paws::Bedrock> service. Use the attributes of this class
as arguments to method CreateEvaluationJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateEvaluationJob.

=head1 SYNOPSIS

    my $bedrock = Paws->service('Bedrock');
    my $CreateEvaluationJobResponse = $bedrock->CreateEvaluationJob(
      EvaluationConfig => {
        Automated => {
          DatasetMetricConfigs => [
            {
              Dataset => {
                Name            => 'MyEvaluationDatasetName',  # min: 1, max: 63
                DatasetLocation => {
                  S3Uri => 'MyS3Uri',    # min: 1, max: 1024; OPTIONAL
                },    # OPTIONAL
              },
              MetricNames => [
                'MyEvaluationMetricName', ...    # min: 1, max: 63
              ],    # min: 1, max: 25
              TaskType => 'Summarization'
              , # values: Summarization, Classification, QuestionAndAnswer, Generation, Custommin: 1, max: 63

            },
            ...
          ],    # min: 1, max: 5
          CustomMetricConfig => {
            CustomMetrics => [
              {
                CustomMetricDefinition => {
                  Instructions =>
                    'MyCustomMetricInstructions',    # min: 1, max: 5000
                  Name        => 'MyMetricName',     # min: 1, max: 63
                  RatingScale => [
                    {
                      Definition =>
                        'MyRatingScaleItemDefinition',    # min: 1, max: 100
                      Value => {
                        FloatValue  => 1.0,               # OPTIONAL
                        StringValue => 'MyRatingScaleItemValueStringValueString'
                        ,    # min: 1, max: 100; OPTIONAL
                      },

                    },
                    ...
                  ],    # min: 1, max: 10; OPTIONAL
                },    # OPTIONAL
              },
              ...
            ],    # min: 1, max: 10
            EvaluatorModelConfig => {
              BedrockEvaluatorModels => [
                {
                  ModelIdentifier =>
                    'MyEvaluatorModelIdentifier',    # min: 1, max: 2048

                },
                ...
              ],    # min: 1, max: 1

            },

          },    # OPTIONAL
          EvaluatorModelConfig => {
            BedrockEvaluatorModels => [
              {
                ModelIdentifier =>
                  'MyEvaluatorModelIdentifier',    # min: 1, max: 2048

              },
              ...
            ],    # min: 1, max: 1; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        Human => {
          DatasetMetricConfigs => [
            {
              Dataset => {
                Name            => 'MyEvaluationDatasetName',  # min: 1, max: 63
                DatasetLocation => {
                  S3Uri => 'MyS3Uri',    # min: 1, max: 1024; OPTIONAL
                },    # OPTIONAL
              },
              MetricNames => [
                'MyEvaluationMetricName', ...    # min: 1, max: 63
              ],    # min: 1, max: 25
              TaskType => 'Summarization'
              , # values: Summarization, Classification, QuestionAndAnswer, Generation, Custommin: 1, max: 63

            },
            ...
          ],    # min: 1, max: 5
          CustomMetrics => [
            {
              Name         => 'MyEvaluationMetricName',      # min: 1, max: 63
              RatingMethod => 'MyEvaluationRatingMethod',    # min: 1, max: 100
              Description  =>
                'MyEvaluationMetricDescription',    # min: 1, max: 63; OPTIONAL
            },
            ...
          ],    # min: 1, max: 10; OPTIONAL
          HumanWorkflowConfig => {
            FlowDefinitionArn => 'MySageMakerFlowDefinitionArn',    # max: 1024
            Instructions      =>
              'MyHumanTaskInstructions',    # min: 1, max: 5000; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },
      InferenceConfig => {
        Models => [
          {
            BedrockModel => {
              ModelIdentifier =>
                'MyEvaluationBedrockModelIdentifier',    # min: 1, max: 2048
              InferenceParams => 'MyEvaluationModelInferenceParams'
              ,    # min: 1, max: 1023; OPTIONAL
              PerformanceConfig => {
                Latency => 'standard',   # values: standard, optimized; OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
            PrecomputedInferenceSource => {
              InferenceSourceIdentifier =>
                'MyEvaluationPrecomputedInferenceSourceIdentifier'
              ,    # min: 1, max: 256

            },    # OPTIONAL
          },
          ...
        ],    # min: 1, max: 2; OPTIONAL
        RagConfigs => [
          {
            KnowledgeBaseConfig => {
              RetrieveAndGenerateConfig => {
                Type =>
                  'KNOWLEDGE_BASE',   # values: KNOWLEDGE_BASE, EXTERNAL_SOURCES
                ExternalSourcesConfiguration => {
                  ModelArn => 'MyBedrockModelArn',    # min: 1, max: 2048
                  Sources  => [
                    {
                      SourceType  => 'S3',            # values: S3, BYTE_CONTENT
                      ByteContent => {
                        ContentType => 'MyContentType',
                        Data => 'BlobByteContentBlob',   # min: 1, max: 10485760
                        Identifier => 'MyIdentifier',    # min: 1, max: 1024

                      },    # OPTIONAL
                      S3Location => {
                        Uri => 'MykBS3Uri',    # min: 1, max: 1024

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
                        'MyGuardrailConfigurationGuardrailIdString',   # max: 64
                      GuardrailVersion =>
                        'MyGuardrailConfigurationGuardrailVersionString'
                      ,    # min: 1, max: 5

                    },    # OPTIONAL
                    KbInferenceConfig => {
                      TextInferenceConfig => {
                        MaxTokens     => 1,    # max: 65536; OPTIONAL
                        StopSequences => [
                          'MyRAGStopSequencesMemberString',
                          ...                  # min: 1, max: 1000
                        ],    # max: 4; OPTIONAL
                        Temperature => 1.0,    # max: 1; OPTIONAL
                        TopP        => 1.0,    # max: 1; OPTIONAL
                      },    # OPTIONAL
                    },    # OPTIONAL
                    PromptTemplate => {
                      TextPromptTemplate =>
                        'MyTextPromptTemplate',  # min: 1, max: 100000; OPTIONAL
                    },    # OPTIONAL
                  },    # OPTIONAL
                },    # OPTIONAL
                KnowledgeBaseConfiguration => {
                  KnowledgeBaseId => 'MyKnowledgeBaseId',    # max: 10
                  ModelArn        => 'MyBedrockModelArn',    # min: 1, max: 2048
                  GenerationConfiguration => {
                    AdditionalModelRequestFields => {
                      'MyAdditionalModelRequestFieldsKey' => {

                      },    # key: min: 1, max: 100
                    },    # OPTIONAL
                    GuardrailConfiguration => {
                      GuardrailId =>
                        'MyGuardrailConfigurationGuardrailIdString',   # max: 64
                      GuardrailVersion =>
                        'MyGuardrailConfigurationGuardrailVersionString'
                      ,    # min: 1, max: 5

                    },    # OPTIONAL
                    KbInferenceConfig => {
                      TextInferenceConfig => {
                        MaxTokens     => 1,    # max: 65536; OPTIONAL
                        StopSequences => [
                          'MyRAGStopSequencesMemberString',
                          ...                  # min: 1, max: 1000
                        ],    # max: 4; OPTIONAL
                        Temperature => 1.0,    # max: 1; OPTIONAL
                        TopP        => 1.0,    # max: 1; OPTIONAL
                      },    # OPTIONAL
                    },    # OPTIONAL
                    PromptTemplate => {
                      TextPromptTemplate =>
                        'MyTextPromptTemplate',  # min: 1, max: 100000; OPTIONAL
                    },    # OPTIONAL
                  },    # OPTIONAL
                  OrchestrationConfiguration => {
                    QueryTransformationConfiguration => {
                      Type =>
                        'QUERY_DECOMPOSITION',    # values: QUERY_DECOMPOSITION

                    },

                  },    # OPTIONAL
                  RetrievalConfiguration => {
                    VectorSearchConfiguration => {
                      Filter => {
                        AndAll => [ <RetrievalFilter>, ... ], # min: 2; OPTIONAL
                        Equals => {
                          Key   => 'MyFilterKey',             # min: 1, max: 100
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
                        OrAll => [ <RetrievalFilter>, ... ],  # min: 2; OPTIONAL
                        StartsWith => {
                          Key   => 'MyFilterKey',             # min: 1, max: 100
                          Value => {

                          },

                        },    # OPTIONAL
                        StringContains => {
                          Key   => 'MyFilterKey',    # min: 1, max: 100
                          Value => {

                          },

                        },    # OPTIONAL
                      },    # OPTIONAL
                      NumberOfResults    => 1,    # min: 1, max: 100; OPTIONAL
                      OverrideSearchType =>
                        'HYBRID',    # values: HYBRID, SEMANTIC; OPTIONAL
                    },

                  },    # OPTIONAL
                },    # OPTIONAL
              },    # OPTIONAL
              RetrieveConfig => {
                KnowledgeBaseId => 'MyKnowledgeBaseId',    # max: 10
                KnowledgeBaseRetrievalConfiguration => {
                  VectorSearchConfiguration => {
                    Filter => {
                      AndAll => [ <RetrievalFilter>, ... ],   # min: 2; OPTIONAL
                      Equals => {
                        Key   => 'MyFilterKey',               # min: 1, max: 100
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
                      OrAll => [ <RetrievalFilter>, ... ],    # min: 2; OPTIONAL
                      StartsWith => {
                        Key   => 'MyFilterKey',               # min: 1, max: 100
                        Value => {

                        },

                      },    # OPTIONAL
                      StringContains => {
                        Key   => 'MyFilterKey',    # min: 1, max: 100
                        Value => {

                        },

                      },    # OPTIONAL
                    },    # OPTIONAL
                    NumberOfResults    => 1,    # min: 1, max: 100; OPTIONAL
                    OverrideSearchType =>
                      'HYBRID',    # values: HYBRID, SEMANTIC; OPTIONAL
                  },

                },    # OPTIONAL

              },    # OPTIONAL
            },    # OPTIONAL
            PrecomputedRagSourceConfig => {
              RetrieveAndGenerateSourceConfig => {
                RagSourceIdentifier =>
                  'MyEvaluationPrecomputedRagSourceIdentifier'
                ,    # min: 1, max: 256

              },    # OPTIONAL
              RetrieveSourceConfig => {
                RagSourceIdentifier =>
                  'MyEvaluationPrecomputedRagSourceIdentifier'
                ,    # min: 1, max: 256

              },    # OPTIONAL
            },    # OPTIONAL
          },
          ...
        ],    # min: 1, max: 1; OPTIONAL
      },
      JobName          => 'MyEvaluationJobName',
      OutputDataConfig => {
        S3Uri => 'MyS3Uri',    # min: 1, max: 1024; OPTIONAL

      },
      RoleArn                 => 'MyRoleArn',
      ApplicationType         => 'ModelEvaluation',               # OPTIONAL
      ClientRequestToken      => 'MyIdempotencyToken',            # OPTIONAL
      CustomerEncryptionKeyId => 'MyKmsKeyId',                    # OPTIONAL
      JobDescription          => 'MyEvaluationJobDescription',    # OPTIONAL
      JobTags                 => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $JobArn = $CreateEvaluationJobResponse->JobArn;

    # Returns a L<Paws::Bedrock::CreateEvaluationJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock/CreateEvaluationJob>

=head1 ATTRIBUTES


=head2 ApplicationType => Str

Specifies whether the evaluation job is for evaluating a model or
evaluating a knowledge base (retrieval and response generation).

Valid values are: C<"ModelEvaluation">, C<"RagEvaluation">

=head2 ClientRequestToken => Str

A unique, case-sensitive identifier to ensure that the API request
completes no more than one time. If this token matches a previous
request, Amazon Bedrock ignores the request, but does not return an
error. For more information, see Ensuring idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).



=head2 CustomerEncryptionKeyId => Str

Specify your customer managed encryption key Amazon Resource Name (ARN)
that will be used to encrypt your evaluation job.



=head2 B<REQUIRED> EvaluationConfig => L<Paws::Bedrock::EvaluationConfig>

Contains the configuration details of either an automated or
human-based evaluation job.



=head2 B<REQUIRED> InferenceConfig => L<Paws::Bedrock::EvaluationInferenceConfig>

Contains the configuration details of the inference model for the
evaluation job.

For model evaluation jobs, automated jobs support a single model or
inference profile
(https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference.html),
and jobs that use human workers support two models or inference
profiles.



=head2 JobDescription => Str

A description of the evaluation job.



=head2 B<REQUIRED> JobName => Str

A name for the evaluation job. Names must unique with your Amazon Web
Services account, and your account's Amazon Web Services region.



=head2 JobTags => ArrayRef[L<Paws::Bedrock::Tag>]

Tags to attach to the model evaluation job.



=head2 B<REQUIRED> OutputDataConfig => L<Paws::Bedrock::EvaluationOutputDataConfig>

Contains the configuration details of the Amazon S3 bucket for storing
the results of the evaluation job.



=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of an IAM service role that Amazon
Bedrock can assume to perform tasks on your behalf. To learn more about
the required permissions, see Required permissions for model
evaluations
(https://docs.aws.amazon.com/bedrock/latest/userguide/model-evaluation-security.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateEvaluationJob in L<Paws::Bedrock>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

