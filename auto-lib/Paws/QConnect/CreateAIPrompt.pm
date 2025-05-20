
package Paws::QConnect::CreateAIPrompt;
  use Moose;
  has ApiFormat => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'apiFormat', required => 1);
  has AssistantId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'assistantId', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has ModelId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modelId', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::QConnect::Tags', traits => ['NameInRequest'], request_name => 'tags');
  has TemplateConfiguration => (is => 'ro', isa => 'Paws::QConnect::AIPromptTemplateConfiguration', traits => ['NameInRequest'], request_name => 'templateConfiguration', required => 1);
  has TemplateType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateType', required => 1);
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type', required => 1);
  has VisibilityStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'visibilityStatus', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAIPrompt');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/assistants/{assistantId}/aiprompts');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QConnect::CreateAIPromptResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::CreateAIPrompt - Arguments for method CreateAIPrompt on L<Paws::QConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAIPrompt on the
L<Amazon Q Connect|Paws::QConnect> service. Use the attributes of this class
as arguments to method CreateAIPrompt.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAIPrompt.

=head1 SYNOPSIS

    my $wisdom = Paws->service('QConnect');
    my $CreateAIPromptResponse = $wisdom->CreateAIPrompt(
      ApiFormat             => 'ANTHROPIC_CLAUDE_MESSAGES',
      AssistantId           => 'MyUuidOrArn',
      ModelId               => 'MyAIPromptModelIdentifier',
      Name                  => 'MyName',
      TemplateConfiguration => {
        TextFullAIPromptEditTemplateConfiguration => {
          Text => 'MyTextAIPrompt',    # min: 1, max: 1000000

        },    # OPTIONAL
      },
      TemplateType     => 'TEXT',
      Type             => 'ANSWER_GENERATION',
      VisibilityStatus => 'SAVED',
      ClientToken      => 'MyClientToken',       # OPTIONAL
      Description      => 'MyDescription',       # OPTIONAL
      Tags             => {
        'MyTagKey' =>
          'MyTagValue',    # key: min: 1, max: 128, value: min: 1, max: 256
      },    # OPTIONAL
    );

    # Results:
    my $AiPrompt = $CreateAIPromptResponse->AiPrompt;

    # Returns a L<Paws::QConnect::CreateAIPromptResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wisdom/CreateAIPrompt>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiFormat => Str

The API Format of the AI Prompt.

Recommended values: C<MESSAGES | TEXT_COMPLETIONS>

The values C<ANTHROPIC_CLAUDE_MESSAGES |
ANTHROPIC_CLAUDE_TEXT_COMPLETIONS> will be deprecated.

Valid values are: C<"ANTHROPIC_CLAUDE_MESSAGES">, C<"ANTHROPIC_CLAUDE_TEXT_COMPLETIONS">, C<"MESSAGES">, C<"TEXT_COMPLETIONS">

=head2 B<REQUIRED> AssistantId => Str

The identifier of the Amazon Q in Connect assistant. Can be either the
ID or the ARN. URLs cannot contain the ARN.



=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see
Making retries safe with idempotent APIs
(http://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/)..



=head2 Description => Str

The description of the AI Prompt.



=head2 B<REQUIRED> ModelId => Str

The identifier of the model used for this AI Prompt.



=head2 B<REQUIRED> Name => Str

The name of the AI Prompt.



=head2 Tags => L<Paws::QConnect::Tags>

The tags used to organize, track, or control access for this resource.



=head2 B<REQUIRED> TemplateConfiguration => L<Paws::QConnect::AIPromptTemplateConfiguration>

The configuration of the prompt template for this AI Prompt.



=head2 B<REQUIRED> TemplateType => Str

The type of the prompt template for this AI Prompt.

Valid values are: C<"TEXT">

=head2 B<REQUIRED> Type => Str

The type of this AI Prompt.

Valid values are: C<"ANSWER_GENERATION">, C<"INTENT_LABELING_GENERATION">, C<"QUERY_REFORMULATION">, C<"SELF_SERVICE_PRE_PROCESSING">, C<"SELF_SERVICE_ANSWER_GENERATION">

=head2 B<REQUIRED> VisibilityStatus => Str

The visibility status of the AI Prompt.

Valid values are: C<"SAVED">, C<"PUBLISHED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAIPrompt in L<Paws::QConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

