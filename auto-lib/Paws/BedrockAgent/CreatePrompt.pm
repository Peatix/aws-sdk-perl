
package Paws::BedrockAgent::CreatePrompt;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has CustomerEncryptionKeyArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'customerEncryptionKeyArn');
  has DefaultVariant => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'defaultVariant');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::BedrockAgent::TagsMap', traits => ['NameInRequest'], request_name => 'tags');
  has Variants => (is => 'ro', isa => 'ArrayRef[Paws::BedrockAgent::PromptVariant]', traits => ['NameInRequest'], request_name => 'variants');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePrompt');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/prompts/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockAgent::CreatePromptResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::CreatePrompt - Arguments for method CreatePrompt on L<Paws::BedrockAgent>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePrompt on the
L<Agents for Amazon Bedrock|Paws::BedrockAgent> service. Use the attributes of this class
as arguments to method CreatePrompt.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePrompt.

=head1 SYNOPSIS

    my $bedrock-agent = Paws->service('BedrockAgent');
    my $CreatePromptResponse = $bedrock -agent->CreatePrompt(
      Name                     => 'MyPromptName',
      ClientToken              => 'MyClientToken',          # OPTIONAL
      CustomerEncryptionKeyArn => 'MyKmsKeyArn',            # OPTIONAL
      DefaultVariant           => 'MyPromptVariantName',    # OPTIONAL
      Description              => 'MyPromptDescription',    # OPTIONAL
      Tags                     => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      Variants => [
        {
          Name                  => 'MyPromptVariantName',
          TemplateConfiguration => {
            Chat => {
              Messages => [
                {
                  Content => [
                    {
                      CachePoint => {
                        Type => 'default',    # values: default

                      },    # OPTIONAL
                      Text => 'MyString',    # OPTIONAL
                    },
                    ...
                  ],
                  Role => 'user',            # values: user, assistant

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
                      Name        => 'MyToolName',          # min: 1, max: 64
                      Description => 'MyNonEmptyString',    # min: 1; OPTIONAL
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
          TemplateType                 => 'TEXT',    # values: TEXT, CHAT
          AdditionalModelRequestFields => {

          },                                         # OPTIONAL
          GenAiResource => {
            Agent => {
              AgentIdentifier => 'MyAgentAliasArn',    # max: 2048

            },    # OPTIONAL
          },    # OPTIONAL
          InferenceConfiguration => {
            Text => {
              MaxTokens     => 1,    # OPTIONAL
              StopSequences => [
                'MyString', ...      # OPTIONAL
              ],    # max: 4; OPTIONAL
              Temperature => 1.0,    # max: 1; OPTIONAL
              TopP        => 1.0,    # max: 1; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          Metadata => [
            {
              Key   => 'MyPromptMetadataKey',      # min: 1, max: 128
              Value => 'MyPromptMetadataValue',    # max: 1024

            },
            ...
          ],    # max: 50; OPTIONAL
          ModelId => 'MyPromptModelIdentifier',    # min: 1, max: 2048; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $Arn       = $CreatePromptResponse->Arn;
    my $CreatedAt = $CreatePromptResponse->CreatedAt;
    my $CustomerEncryptionKeyArn =
      $CreatePromptResponse->CustomerEncryptionKeyArn;
    my $DefaultVariant = $CreatePromptResponse->DefaultVariant;
    my $Description    = $CreatePromptResponse->Description;
    my $Id             = $CreatePromptResponse->Id;
    my $Name           = $CreatePromptResponse->Name;
    my $UpdatedAt      = $CreatePromptResponse->UpdatedAt;
    my $Variants       = $CreatePromptResponse->Variants;
    my $Version        = $CreatePromptResponse->Version;

    # Returns a L<Paws::BedrockAgent::CreatePromptResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-agent/CreatePrompt>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier to ensure that the API request
completes no more than one time. If this token matches a previous
request, Amazon Bedrock ignores the request, but does not return an
error. For more information, see Ensuring idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).



=head2 CustomerEncryptionKeyArn => Str

The Amazon Resource Name (ARN) of the KMS key to encrypt the prompt.



=head2 DefaultVariant => Str

The name of the default variant for the prompt. This value must match
the C<name> field in the relevant PromptVariant
(https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_PromptVariant.html)
object.



=head2 Description => Str

A description for the prompt.



=head2 B<REQUIRED> Name => Str

A name for the prompt.



=head2 Tags => L<Paws::BedrockAgent::TagsMap>

Any tags that you want to attach to the prompt. For more information,
see Tagging resources in Amazon Bedrock
(https://docs.aws.amazon.com/bedrock/latest/userguide/tagging.html).



=head2 Variants => ArrayRef[L<Paws::BedrockAgent::PromptVariant>]

A list of objects, each containing details about a variant of the
prompt.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePrompt in L<Paws::BedrockAgent>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

