
package Paws::BedrockAgent::UpdatePrompt;
  use Moose;
  has CustomerEncryptionKeyArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'customerEncryptionKeyArn');
  has DefaultVariant => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'defaultVariant');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has PromptIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'promptIdentifier', required => 1);
  has Variants => (is => 'ro', isa => 'ArrayRef[Paws::BedrockAgent::PromptVariant]', traits => ['NameInRequest'], request_name => 'variants');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdatePrompt');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/prompts/{promptIdentifier}/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockAgent::UpdatePromptResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::UpdatePrompt - Arguments for method UpdatePrompt on L<Paws::BedrockAgent>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdatePrompt on the
L<Agents for Amazon Bedrock|Paws::BedrockAgent> service. Use the attributes of this class
as arguments to method UpdatePrompt.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdatePrompt.

=head1 SYNOPSIS

    my $bedrock-agent = Paws->service('BedrockAgent');
    my $UpdatePromptResponse = $bedrock -agent->UpdatePrompt(
      Name                     => 'MyPromptName',
      PromptIdentifier         => 'MyPromptIdentifier',
      CustomerEncryptionKeyArn => 'MyKmsKeyArn',            # OPTIONAL
      DefaultVariant           => 'MyPromptVariantName',    # OPTIONAL
      Description              => 'MyPromptDescription',    # OPTIONAL
      Variants                 => [
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
    my $Arn       = $UpdatePromptResponse->Arn;
    my $CreatedAt = $UpdatePromptResponse->CreatedAt;
    my $CustomerEncryptionKeyArn =
      $UpdatePromptResponse->CustomerEncryptionKeyArn;
    my $DefaultVariant = $UpdatePromptResponse->DefaultVariant;
    my $Description    = $UpdatePromptResponse->Description;
    my $Id             = $UpdatePromptResponse->Id;
    my $Name           = $UpdatePromptResponse->Name;
    my $UpdatedAt      = $UpdatePromptResponse->UpdatedAt;
    my $Variants       = $UpdatePromptResponse->Variants;
    my $Version        = $UpdatePromptResponse->Version;

    # Returns a L<Paws::BedrockAgent::UpdatePromptResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-agent/UpdatePrompt>

=head1 ATTRIBUTES


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



=head2 B<REQUIRED> PromptIdentifier => Str

The unique identifier of the prompt.



=head2 Variants => ArrayRef[L<Paws::BedrockAgent::PromptVariant>]

A list of objects, each containing details about a variant of the
prompt.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdatePrompt in L<Paws::BedrockAgent>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

