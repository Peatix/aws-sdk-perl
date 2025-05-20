
package Paws::BedrockRuntime::Converse;
  use Moose;
  has AdditionalModelRequestFields => (is => 'ro', isa => 'Paws::BedrockRuntime::Document', traits => ['NameInRequest'], request_name => 'additionalModelRequestFields');
  has AdditionalModelResponseFieldPaths => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'additionalModelResponseFieldPaths');
  has GuardrailConfig => (is => 'ro', isa => 'Paws::BedrockRuntime::GuardrailConfiguration', traits => ['NameInRequest'], request_name => 'guardrailConfig');
  has InferenceConfig => (is => 'ro', isa => 'Paws::BedrockRuntime::InferenceConfiguration', traits => ['NameInRequest'], request_name => 'inferenceConfig');
  has Messages => (is => 'ro', isa => 'ArrayRef[Paws::BedrockRuntime::Message]', traits => ['NameInRequest'], request_name => 'messages');
  has ModelId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'modelId', required => 1);
  has PerformanceConfig => (is => 'ro', isa => 'Paws::BedrockRuntime::PerformanceConfiguration', traits => ['NameInRequest'], request_name => 'performanceConfig');
  has PromptVariables => (is => 'ro', isa => 'Paws::BedrockRuntime::PromptVariableMap', traits => ['NameInRequest'], request_name => 'promptVariables');
  has RequestMetadata => (is => 'ro', isa => 'Paws::BedrockRuntime::RequestMetadata', traits => ['NameInRequest'], request_name => 'requestMetadata');
  has System => (is => 'ro', isa => 'ArrayRef[Paws::BedrockRuntime::SystemContentBlock]', traits => ['NameInRequest'], request_name => 'system');
  has ToolConfig => (is => 'ro', isa => 'Paws::BedrockRuntime::ToolConfiguration', traits => ['NameInRequest'], request_name => 'toolConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'Converse');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/model/{modelId}/converse');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockRuntime::ConverseResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockRuntime::Converse - Arguments for method Converse on L<Paws::BedrockRuntime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method Converse on the
L<Amazon Bedrock Runtime|Paws::BedrockRuntime> service. Use the attributes of this class
as arguments to method Converse.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to Converse.

=head1 SYNOPSIS

    my $bedrock-runtime = Paws->service('BedrockRuntime');
    my $ConverseResponse = $bedrock -runtime->Converse(
      ModelId                      => 'MyConversationalModelId',
      AdditionalModelRequestFields => {

      },    # OPTIONAL
      AdditionalModelResponseFieldPaths => [
        'MyConverseRequestAdditionalModelResponseFieldPathsListMemberString',
        ...    # min: 1, max: 256
      ],    # OPTIONAL
      GuardrailConfig => {
        GuardrailIdentifier => 'MyGuardrailIdentifier',    # max: 2048
        GuardrailVersion    => 'MyGuardrailVersion',
        Trace => 'enabled',  # values: enabled, disabled, enabled_full; OPTIONAL
      },    # OPTIONAL
      InferenceConfig => {
        MaxTokens     => 1,    # min: 1; OPTIONAL
        StopSequences => [
          'MyNonEmptyString', ...    # min: 1
        ],    # max: 4; OPTIONAL
        Temperature => 1.0,    # max: 1; OPTIONAL
        TopP        => 1.0,    # max: 1; OPTIONAL
      },    # OPTIONAL
      Messages => [
        {
          Content => [
            {
              CachePoint => {
                Type => 'default',    # values: default

              },    # OPTIONAL
              Document => {
                Format =>
                  'pdf', # values: pdf, csv, doc, docx, xls, xlsx, html, txt, md
                Name   => 'MyDocumentBlockNameString',    # min: 1, max: 200
                Source => {
                  Bytes => 'BlobDocumentSourceBytesBlob',    # min: 1; OPTIONAL
                  S3Location => {
                    Uri         => 'MyS3Uri',                # min: 1, max: 1024
                    BucketOwner => 'MyAccountId',            # OPTIONAL
                  },    # OPTIONAL
                },

              },    # OPTIONAL
              GuardContent => {
                Image => {
                  Format => 'png',    # values: png, jpeg
                  Source => {
                    Bytes => 'BlobGuardrailConverseImageSourceBytesBlob'
                    ,                 # min: 1; OPTIONAL
                  },

                },    # OPTIONAL
                Text => {
                  Text       => 'MyString',
                  Qualifiers => [
                    'grounding_source',
                    ...    # values: grounding_source, query, guard_content
                  ],    # OPTIONAL
                },    # OPTIONAL
              },    # OPTIONAL
              Image => {
                Format => 'png',    # values: png, jpeg, gif, webp
                Source => {
                  Bytes      => 'BlobImageSourceBytesBlob',   # min: 1; OPTIONAL
                  S3Location => {
                    Uri         => 'MyS3Uri',        # min: 1, max: 1024
                    BucketOwner => 'MyAccountId',    # OPTIONAL
                  },    # OPTIONAL
                },

              },    # OPTIONAL
              ReasoningContent => {
                ReasoningText => {
                  Text      => 'MyString',
                  Signature => 'MyString',
                },    # OPTIONAL
                RedactedContent => 'BlobBlob',    # OPTIONAL
              },    # OPTIONAL
              Text       => 'MyString',
              ToolResult => {
                Content => [
                  {
                    Document => {
                      Format => 'pdf'
                      ,  # values: pdf, csv, doc, docx, xls, xlsx, html, txt, md
                      Name   => 'MyDocumentBlockNameString',  # min: 1, max: 200
                      Source => {
                        Bytes =>
                          'BlobDocumentSourceBytesBlob',      # min: 1; OPTIONAL
                        S3Location => {
                          Uri         => 'MyS3Uri',        # min: 1, max: 1024
                          BucketOwner => 'MyAccountId',    # OPTIONAL
                        },    # OPTIONAL
                      },

                    },    # OPTIONAL
                    Image => {
                      Format => 'png',    # values: png, jpeg, gif, webp
                      Source => {
                        Bytes => 'BlobImageSourceBytesBlob',  # min: 1; OPTIONAL
                        S3Location => {
                          Uri         => 'MyS3Uri',        # min: 1, max: 1024
                          BucketOwner => 'MyAccountId',    # OPTIONAL
                        },    # OPTIONAL
                      },

                    },    # OPTIONAL
                    Json => {

                    },
                    Text  => 'MyString',
                    Video => {
                      Format => 'mkv'
                      , # values: mkv, mov, mp4, webm, flv, mpeg, mpg, wmv, three_gp
                      Source => {
                        Bytes => 'BlobVideoSourceBytesBlob',  # min: 1; OPTIONAL
                        S3Location => {
                          Uri         => 'MyS3Uri',        # min: 1, max: 1024
                          BucketOwner => 'MyAccountId',    # OPTIONAL
                        },    # OPTIONAL
                      },

                    },    # OPTIONAL
                  },
                  ...
                ],
                ToolUseId => 'MyToolUseId',   # min: 1, max: 64
                Status    => 'success',       # values: success, error; OPTIONAL
              },    # OPTIONAL
              ToolUse => {
                Input => {

                },
                Name      => 'MyToolName',     # min: 1, max: 64
                ToolUseId => 'MyToolUseId',    # min: 1, max: 64

              },    # OPTIONAL
              Video => {
                Format => 'mkv'
                ,   # values: mkv, mov, mp4, webm, flv, mpeg, mpg, wmv, three_gp
                Source => {
                  Bytes      => 'BlobVideoSourceBytesBlob',   # min: 1; OPTIONAL
                  S3Location => {
                    Uri         => 'MyS3Uri',        # min: 1, max: 1024
                    BucketOwner => 'MyAccountId',    # OPTIONAL
                  },    # OPTIONAL
                },

              },    # OPTIONAL
            },
            ...
          ],
          Role => 'user',    # values: user, assistant

        },
        ...
      ],    # OPTIONAL
      PerformanceConfig => {
        Latency => 'standard',    # values: standard, optimized; OPTIONAL
      },    # OPTIONAL
      PromptVariables => { 'MyString' => { Text => 'MyString', }, },  # OPTIONAL
      RequestMetadata => {
        'MyRequestMetadataKeyString' => 'MyRequestMetadataValueString'
        ,    # key: min: 1, max: 256, value: max: 256
      },    # OPTIONAL
      System => [
        {
          CachePoint => {
            Type => 'default',    # values: default

          },    # OPTIONAL
          GuardContent => {
            Image => {
              Format => 'png',    # values: png, jpeg
              Source => {
                Bytes => 'BlobGuardrailConverseImageSourceBytesBlob'
                ,                 # min: 1; OPTIONAL
              },

            },    # OPTIONAL
            Text => {
              Text       => 'MyString',
              Qualifiers => [
                'grounding_source',
                ...    # values: grounding_source, query, guard_content
              ],    # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          Text => 'MyNonEmptyString',    # min: 1
        },
        ...
      ],    # OPTIONAL
      ToolConfig => {
        Tools => [
          {
            CachePoint => {
              Type => 'default',    # values: default

            },    # OPTIONAL
            ToolSpec => {
              InputSchema => {
                Json => {

                },
              },
              Name        => 'MyToolName',          # min: 1, max: 64
              Description => 'MyNonEmptyString',    # min: 1
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
    );

    # Results:
    my $AdditionalModelResponseFields =
      $ConverseResponse->AdditionalModelResponseFields;
    my $Metrics           = $ConverseResponse->Metrics;
    my $Output            = $ConverseResponse->Output;
    my $PerformanceConfig = $ConverseResponse->PerformanceConfig;
    my $StopReason        = $ConverseResponse->StopReason;
    my $Trace             = $ConverseResponse->Trace;
    my $Usage             = $ConverseResponse->Usage;

    # Returns a L<Paws::BedrockRuntime::ConverseResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime/Converse>

=head1 ATTRIBUTES


=head2 AdditionalModelRequestFields => L<Paws::BedrockRuntime::Document>

Additional inference parameters that the model supports, beyond the
base set of inference parameters that C<Converse> and C<ConverseStream>
support in the C<inferenceConfig> field. For more information, see
Model parameters
(https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html).



=head2 AdditionalModelResponseFieldPaths => ArrayRef[Str|Undef]

Additional model parameters field paths to return in the response.
C<Converse> and C<ConverseStream> return the requested fields as a JSON
Pointer object in the C<additionalModelResponseFields> field. The
following is example JSON for C<additionalModelResponseFieldPaths>.

C<[ "/stop_sequence" ]>

For information about the JSON Pointer syntax, see the Internet
Engineering Task Force (IETF)
(https://datatracker.ietf.org/doc/html/rfc6901) documentation.

C<Converse> and C<ConverseStream> reject an empty JSON Pointer or
incorrectly structured JSON Pointer with a C<400> error code. if the
JSON Pointer is valid, but the requested field is not in the model
response, it is ignored by C<Converse>.



=head2 GuardrailConfig => L<Paws::BedrockRuntime::GuardrailConfiguration>

Configuration information for a guardrail that you want to use in the
request. If you include C<guardContent> blocks in the C<content> field
in the C<messages> field, the guardrail operates only on those
messages. If you include no C<guardContent> blocks, the guardrail
operates on all messages in the request body and in any included prompt
resource.



=head2 InferenceConfig => L<Paws::BedrockRuntime::InferenceConfiguration>

Inference parameters to pass to the model. C<Converse> and
C<ConverseStream> support a base set of inference parameters. If you
need to pass additional parameters that the model supports, use the
C<additionalModelRequestFields> request field.



=head2 Messages => ArrayRef[L<Paws::BedrockRuntime::Message>]

The messages that you want to send to the model.



=head2 B<REQUIRED> ModelId => Str

Specifies the model or throughput with which to run inference, or the
prompt resource to use in inference. The value depends on the resource
that you use:

=over

=item *

If you use a base model, specify the model ID or its ARN. For a list of
model IDs for base models, see Amazon Bedrock base model IDs (on-demand
throughput)
(https://docs.aws.amazon.com/bedrock/latest/userguide/model-ids.html#model-ids-arns)
in the Amazon Bedrock User Guide.

=item *

If you use an inference profile, specify the inference profile ID or
its ARN. For a list of inference profile IDs, see Supported Regions and
models for cross-region inference
(https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference-support.html)
in the Amazon Bedrock User Guide.

=item *

If you use a provisioned model, specify the ARN of the Provisioned
Throughput. For more information, see Run inference using a Provisioned
Throughput
(https://docs.aws.amazon.com/bedrock/latest/userguide/prov-thru-use.html)
in the Amazon Bedrock User Guide.

=item *

If you use a custom model, first purchase Provisioned Throughput for
it. Then specify the ARN of the resulting provisioned model. For more
information, see Use a custom model in Amazon Bedrock
(https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-use.html)
in the Amazon Bedrock User Guide.

=item *

To include a prompt that was defined in Prompt management
(https://docs.aws.amazon.com/bedrock/latest/userguide/prompt-management.html),
specify the ARN of the prompt version to use.

=back

The Converse API doesn't support imported models
(https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-import-model.html).



=head2 PerformanceConfig => L<Paws::BedrockRuntime::PerformanceConfiguration>

Model performance settings for the request.



=head2 PromptVariables => L<Paws::BedrockRuntime::PromptVariableMap>

Contains a map of variables in a prompt from Prompt management to
objects containing the values to fill in for them when running model
invocation. This field is ignored if you don't specify a prompt
resource in the C<modelId> field.



=head2 RequestMetadata => L<Paws::BedrockRuntime::RequestMetadata>

Key-value pairs that you can use to filter invocation logs.



=head2 System => ArrayRef[L<Paws::BedrockRuntime::SystemContentBlock>]

A prompt that provides instructions or context to the model about the
task it should perform, or the persona it should adopt during the
conversation.



=head2 ToolConfig => L<Paws::BedrockRuntime::ToolConfiguration>

Configuration information for the tools that the model can use when
generating a response.

For information about models that support tool use, see Supported
models and model features
(https://docs.aws.amazon.com/bedrock/latest/userguide/conversation-inference.html#conversation-inference-supported-models-features).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method Converse in L<Paws::BedrockRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

